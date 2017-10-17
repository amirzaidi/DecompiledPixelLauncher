// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import java.util.Collections;
import java.util.Collection;
import java.util.ArrayList;
import android.content.SharedPreferences;
import com.android.launcher3.Utilities;
import java.util.Iterator;
import java.util.List;
import android.os.UserHandle;
import com.android.launcher3.util.LongArrayMap;
import java.util.HashMap;
import android.os.UserManager;
import android.content.pm.PackageManager;
import android.content.Context;

public class UserManagerCompatVL extends UserManagerCompat
{
    private static final String USER_CREATION_TIME_KEY = "user_creation_time_";
    private final Context mContext;
    private final PackageManager mPm;
    protected final UserManager mUserManager;
    protected HashMap mUserToSerialMap;
    protected LongArrayMap mUsers;
    
    UserManagerCompatVL(final Context mContext) {
        this.mUserManager = (UserManager)mContext.getSystemService("user");
        this.mPm = mContext.getPackageManager();
        this.mContext = mContext;
    }
    
    public void enableAndResetCache() {
        synchronized (this) {
            this.mUsers = new LongArrayMap();
            this.mUserToSerialMap = new HashMap();
            final List userProfiles = this.mUserManager.getUserProfiles();
            if (userProfiles != null) {
                for (final UserHandle userHandle : userProfiles) {
                    final long serialNumberForUser = this.mUserManager.getSerialNumberForUser(userHandle);
                    this.mUsers.put(serialNumberForUser, (Object)userHandle);
                    this.mUserToSerialMap.put(userHandle, serialNumberForUser);
                }
            }
        }
    }
    // monitorexit(this)
    
    public CharSequence getBadgedLabelForUser(final CharSequence charSequence, final UserHandle userHandle) {
        if (userHandle == null) {
            return charSequence;
        }
        return this.mPm.getUserBadgedLabel(charSequence, userHandle);
    }
    
    public long getSerialNumberForUser(final UserHandle userHandle) {
        synchronized (this) {
            if (this.mUserToSerialMap != null) {
                final Long n = this.mUserToSerialMap.get(userHandle);
                long longValue;
                if (n == null) {
                    longValue = 0L;
                }
                else {
                    longValue = n;
                }
                return longValue;
            }
            return this.mUserManager.getSerialNumberForUser(userHandle);
        }
    }
    
    public long getUserCreationTime(final UserHandle userHandle) {
        final SharedPreferences prefs = Utilities.getPrefs(this.mContext);
        final String string = "user_creation_time_" + this.getSerialNumberForUser(userHandle);
        if (!prefs.contains(string)) {
            prefs.edit().putLong(string, System.currentTimeMillis()).apply();
        }
        return prefs.getLong(string, 0L);
    }
    
    public UserHandle getUserForSerialNumber(final long n) {
        synchronized (this) {
            if (this.mUsers != null) {
                return (UserHandle)this.mUsers.get(n);
            }
            return this.mUserManager.getUserForSerialNumber(n);
        }
    }
    
    public List getUserProfiles() {
        synchronized (this) {
            if (this.mUsers != null) {
                return new ArrayList(this.mUserToSerialMap.keySet());
            }
            // monitorexit(this)
            List<Object> list = (List<Object>)this.mUserManager.getUserProfiles();
            if (list == null) {
                list = Collections.emptyList();
            }
            return list;
        }
    }
    
    public boolean isDemoUser() {
        return false;
    }
    
    public boolean isQuietModeEnabled(final UserHandle userHandle) {
        return false;
    }
    
    public boolean isUserUnlocked(final UserHandle userHandle) {
        return true;
    }
}

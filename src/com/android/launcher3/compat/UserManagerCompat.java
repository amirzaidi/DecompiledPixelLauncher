// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import java.util.List;
import android.os.UserHandle;
import com.android.launcher3.Utilities;
import android.content.Context;

public abstract class UserManagerCompat
{
    private static UserManagerCompat sInstance;
    private static final Object sInstanceLock;
    
    static {
        sInstanceLock = new Object();
    }
    
    public static UserManagerCompat getInstance(final Context context) {
        while (true) {
            while (true) {
                Label_0086: {
                    synchronized (UserManagerCompat.sInstanceLock) {
                        if (UserManagerCompat.sInstance == null) {
                            if (Utilities.ATLEAST_NOUGAT_MR1) {
                                UserManagerCompat.sInstance = new UserManagerCompatVNMr1(context.getApplicationContext());
                            }
                            else {
                                if (!Utilities.ATLEAST_NOUGAT) {
                                    break Label_0086;
                                }
                                UserManagerCompat.sInstance = new UserManagerCompatVN(context.getApplicationContext());
                            }
                        }
                        return UserManagerCompat.sInstance;
                    }
                }
                if (Utilities.ATLEAST_MARSHMALLOW) {
                    UserManagerCompat.sInstance = new UserManagerCompatVM(context.getApplicationContext());
                    continue;
                }
                UserManagerCompat.sInstance = new UserManagerCompatVL(context.getApplicationContext());
                continue;
            }
        }
    }
    
    public abstract void enableAndResetCache();
    
    public abstract CharSequence getBadgedLabelForUser(final CharSequence p0, final UserHandle p1);
    
    public abstract long getSerialNumberForUser(final UserHandle p0);
    
    public abstract long getUserCreationTime(final UserHandle p0);
    
    public abstract UserHandle getUserForSerialNumber(final long p0);
    
    public abstract List getUserProfiles();
    
    public abstract boolean isDemoUser();
    
    public abstract boolean isQuietModeEnabled(final UserHandle p0);
    
    public abstract boolean isUserUnlocked(final UserHandle p0);
}

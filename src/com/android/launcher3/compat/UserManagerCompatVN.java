// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import android.os.UserHandle;
import android.content.Context;

public class UserManagerCompatVN extends UserManagerCompatVM
{
    UserManagerCompatVN(final Context context) {
        super(context);
    }
    
    public boolean isQuietModeEnabled(final UserHandle userHandle) {
        return this.mUserManager.isQuietModeEnabled(userHandle);
    }
    
    public boolean isUserUnlocked(final UserHandle userHandle) {
        return this.mUserManager.isUserUnlocked(userHandle);
    }
}

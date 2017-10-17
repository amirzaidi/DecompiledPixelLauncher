// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import android.os.UserHandle;
import android.content.Context;

public class UserManagerCompatVM extends UserManagerCompatVL
{
    UserManagerCompatVM(final Context context) {
        super(context);
    }
    
    public long getUserCreationTime(final UserHandle userHandle) {
        return this.mUserManager.getUserCreationTime(userHandle);
    }
}

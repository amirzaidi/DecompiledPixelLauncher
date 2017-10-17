// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import android.content.Context;

public class UserManagerCompatVNMr1 extends UserManagerCompatVN
{
    UserManagerCompatVNMr1(final Context context) {
        super(context);
    }
    
    public boolean isDemoUser() {
        return this.mUserManager.isDemoUser();
    }
}

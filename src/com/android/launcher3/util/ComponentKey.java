// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.os.Process;
import com.android.launcher3.compat.UserManagerCompat;
import android.content.Context;
import java.util.Arrays;
import android.os.UserHandle;
import android.content.ComponentName;

public class ComponentKey
{
    public final ComponentName componentName;
    private final int mHashCode;
    public final UserHandle user;
    
    public ComponentKey(final ComponentName componentName, final UserHandle user) {
        Preconditions.assertNotNull(componentName);
        Preconditions.assertNotNull(user);
        this.componentName = componentName;
        this.user = user;
        this.mHashCode = Arrays.hashCode(new Object[] { componentName, user });
    }
    
    public ComponentKey(final Context context, final String s) {
        final int index = s.indexOf("#");
        if (index != -1) {
            final String substring = s.substring(0, index);
            final Long value = Long.valueOf(s.substring(index + 1));
            this.componentName = ComponentName.unflattenFromString(substring);
            this.user = UserManagerCompat.getInstance(context).getUserForSerialNumber(value);
        }
        else {
            this.componentName = ComponentName.unflattenFromString(s);
            this.user = Process.myUserHandle();
        }
        Preconditions.assertNotNull(this.componentName);
        Preconditions.assertNotNull(this.user);
        this.mHashCode = Arrays.hashCode(new Object[] { this.componentName, this.user });
    }
    
    public boolean equals(final Object o) {
        final ComponentKey componentKey = (ComponentKey)o;
        return componentKey.componentName.equals((Object)this.componentName) && componentKey.user.equals((Object)this.user);
    }
    
    public int hashCode() {
        return this.mHashCode;
    }
    
    public String toString() {
        return this.componentName.flattenToString() + "#" + this.user;
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.filter;

import com.android.launcher3.util.Preconditions;
import java.util.List;
import java.util.Iterator;
import android.os.UserHandle;
import java.util.regex.Matcher;
import android.os.Process;
import android.content.pm.LauncherActivityInfo;
import com.android.launcher3.util.ComponentKey;
import android.content.ComponentName;
import com.google.android.apps.nexuslauncher.reflection.b;
import java.util.Collections;
import java.util.HashMap;
import android.content.Context;
import com.android.launcher3.compat.UserManagerCompat;
import com.android.launcher3.compat.LauncherAppsCompat;
import java.util.Map;

public class f
{
    private final Map H;
    private final LauncherAppsCompat I;
    private final UserManagerCompat J;
    
    public f(final Context context) {
        this.J = UserManagerCompat.getInstance(context);
        this.I = LauncherAppsCompat.getInstance(context);
        this.H = Collections.synchronizedMap(new HashMap<Object, Object>());
    }
    
    private boolean V(final String s) {
        final int n = 1;
        final Matcher matcher = b.bn.matcher(s);
        if (matcher.find()) {
            final String group = matcher.group(n);
            final String group2 = matcher.group(2);
            final String group3 = matcher.group(4);
            while (true) {
                Label_0276: {
                    if (group3 == null) {
                        break Label_0276;
                    }
                    while (true) {
                        while (true) {
                            Boolean value = null;
                            Label_0288: {
                                try {
                                    final UserManagerCompat j = this.J;
                                    try {
                                        final UserHandle userForSerialNumber = j.getUserForSerialNumber(Long.parseLong(group3));
                                        if (userForSerialNumber == null) {
                                            return false;
                                        }
                                        final UserHandle myUserHandle = userForSerialNumber;
                                        final ComponentName componentName = new ComponentName(group, group2);
                                        final ComponentKey componentKey = new ComponentKey(componentName, myUserHandle);
                                        Boolean b = this.H.get(componentKey);
                                        if (b == null) {
                                            b = this.I.isActivityEnabledForProfile(componentKey.componentName, componentKey.user);
                                            if (b) {
                                                value = false;
                                                final Iterator iterator = this.I.getActivityList(componentKey.componentName.getPackageName(), myUserHandle).iterator();
                                                Block_10: {
                                                    while (iterator.hasNext()) {
                                                        if (componentName.equals((Object)iterator.next().getComponentName())) {
                                                            break Block_10;
                                                        }
                                                    }
                                                    break Label_0288;
                                                }
                                                b = (n != 0);
                                            }
                                        }
                                        this.H.put(componentKey, b);
                                        return b;
                                    }
                                    catch (NumberFormatException ex) {
                                        return false;
                                    }
                                }
                                catch (NumberFormatException ex2) {}
                                break;
                            }
                            Boolean b = value;
                            continue;
                        }
                    }
                }
                final UserHandle myUserHandle = Process.myUserHandle();
                continue;
            }
        }
        return false;
    }
    
    public void G(final List list) {
        this.H(list, null);
    }
    
    public void H(final List list, final List list2) {
        final Iterator<com.google.research.reflection.predictor.f> iterator = list.iterator();
        while (iterator.hasNext()) {
            final com.google.research.reflection.predictor.f f = iterator.next();
            if (!this.V(f.Pd)) {
                if (list2 != null) {
                    list2.add(f);
                }
                iterator.remove();
            }
        }
    }
    
    public void S(final LauncherActivityInfo launcherActivityInfo, final UserHandle userHandle) {
        this.H.put(new ComponentKey(launcherActivityInfo.getComponentName(), userHandle), true);
    }
    
    public void T(final String s, final UserHandle userHandle) {
        Preconditions.assertNonUiThread();
        final Iterator<ComponentKey> iterator = this.H.keySet().iterator();
        while (iterator.hasNext()) {
            final ComponentKey componentKey = iterator.next();
            if (s.equals(componentKey.componentName.getPackageName()) && userHandle.equals((Object)componentKey.user)) {
                iterator.remove();
            }
        }
    }
    
    public void U(final String[] array, final UserHandle userHandle) {
        for (int i = 0; i < array.length; ++i) {
            this.T(array[i], userHandle);
        }
    }
}

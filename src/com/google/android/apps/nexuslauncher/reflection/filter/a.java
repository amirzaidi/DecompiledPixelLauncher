// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.filter;

import com.google.research.reflection.predictor.f;
import java.util.List;
import java.util.Iterator;
import com.android.launcher3.util.Preconditions;
import android.content.pm.LauncherActivityInfo;
import android.os.UserHandle;
import java.util.regex.Matcher;
import com.android.launcher3.util.ComponentKey;
import android.content.ComponentName;
import android.os.Process;
import com.google.android.apps.nexuslauncher.reflection.g;
import java.util.Collections;
import java.util.HashMap;
import android.content.Context;
import com.android.launcher3.compat.UserManagerCompat;
import com.android.launcher3.compat.LauncherAppsCompat;
import java.util.Map;

public class a
{
    private final Map bW;
    private final LauncherAppsCompat bX;
    private final UserManagerCompat bY;
    
    public a(final Context context) {
        this.bY = UserManagerCompat.getInstance(context);
        this.bX = LauncherAppsCompat.getInstance(context);
        this.bW = Collections.synchronizedMap(new HashMap<Object, Object>());
    }
    
    private boolean bm(final String s) {
        final Matcher matcher = g.cO.matcher(s);
        if (matcher.find()) {
            final String group = matcher.group(1);
            final String group2 = matcher.group(2);
            final String group3 = matcher.group(4);
            UserHandle userHandle = null;
            Label_0084: {
                if (group3 != null) {
                    try {
                        final UserManagerCompat by = this.bY;
                        try {
                            userHandle = by.getUserForSerialNumber(Long.parseLong(group3));
                            if (userHandle == null) {
                                return false;
                            }
                            break Label_0084;
                        }
                        catch (NumberFormatException ex) {
                            return false;
                        }
                    }
                    catch (NumberFormatException ex2) {}
                }
                userHandle = Process.myUserHandle();
            }
            final ComponentKey componentKey = new ComponentKey(new ComponentName(group, group2), userHandle);
            Boolean value = this.bW.get(componentKey);
            if (value == null) {
                value = this.bX.isActivityEnabledForProfile(componentKey.componentName, componentKey.user);
            }
            this.bW.put(componentKey, value);
            return value;
        }
        return false;
    }
    
    public void bi(final LauncherActivityInfo launcherActivityInfo, final UserHandle userHandle) {
        this.bW.put(new ComponentKey(launcherActivityInfo.getComponentName(), userHandle), true);
    }
    
    public void bj(final String s, final UserHandle userHandle) {
        Preconditions.assertNonUiThread();
        final Iterator<ComponentKey> iterator = this.bW.keySet().iterator();
        while (iterator.hasNext()) {
            final ComponentKey componentKey = iterator.next();
            if (s.equals(componentKey.componentName.getPackageName()) && userHandle.equals((Object)componentKey.user)) {
                iterator.remove();
            }
        }
    }
    
    public void bk(final String[] array, final UserHandle userHandle) {
        for (int i = 0; i < array.length; ++i) {
            this.bj(array[i], userHandle);
        }
    }
    
    public void bl(final List list, final List list2) {
        final Iterator<f> iterator = list.iterator();
        while (iterator.hasNext()) {
            final f f = iterator.next();
            if (!this.bm(f.LR)) {
                if (list2 != null) {
                    list2.add(f);
                }
                iterator.remove();
            }
        }
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import java.util.Iterator;
import java.lang.reflect.Method;
import android.util.Log;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.os.Process;
import java.util.ArrayList;
import java.util.List;
import com.android.launcher3.util.PackageUserKey;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.pm.ApplicationInfo;
import android.os.UserHandle;
import android.content.Context;

public class LauncherAppsCompatVO extends LauncherAppsCompatVL
{
    LauncherAppsCompatVO(final Context context) {
        super(context);
    }
    
    public ApplicationInfo getApplicationInfo(final String s, final int n, final UserHandle userHandle) {
        try {
            ApplicationInfo applicationInfo = this.mLauncherApps.getApplicationInfo(s, n, userHandle);
            try {
                if ((applicationInfo.flags & 0x800000) == 0x0 || (applicationInfo.enabled ^ true)) {
                    applicationInfo = null;
                }
                return applicationInfo;
            }
            catch (PackageManager$NameNotFoundException ex) {
                return null;
            }
        }
        catch (PackageManager$NameNotFoundException ex2) {}
    }
    
    public List getCustomShortcutActivityList(final PackageUserKey packageUserKey) {
        ArrayList list = null;
    Label_0111_Outer:
        while (true) {
            list = new ArrayList<ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO>();
            final UserHandle myUserHandle = Process.myUserHandle();
            final Class<LauncherApps> clazz = LauncherApps.class;
            final String s = "getShortcutConfigActivityList";
            final int n = 2;
            while (true) {
                Label_0308: {
                    try {
                        final Class[] array = new Class[n];
                        array[0] = String.class;
                        array[1] = UserHandle.class;
                        final Method declaredMethod = clazz.getDeclaredMethod(s, (Class[])array);
                        if (packageUserKey != null) {
                            break Label_0308;
                        }
                        final Context mContext = this.mContext;
                        try {
                            final UserManagerCompat instance = UserManagerCompat.getInstance(mContext);
                            try {
                                final List<Object> userProfiles = (List<Object>)instance.getUserProfiles();
                                final Object o = null;
                                final Iterator<UserHandle> iterator = userProfiles.iterator();
                                try {
                                    while (iterator.hasNext()) {
                                        final UserHandle next = iterator.next();
                                        try {
                                            final UserHandle userHandle = next;
                                            final boolean equals = myUserHandle.equals((Object)userHandle);
                                            try {
                                                final Object invoke = declaredMethod.invoke(this.mLauncherApps, o, userHandle);
                                                try {
                                                    final List<Object> list2 = (List<Object>)invoke;
                                                    try {
                                                        final Iterator<LauncherActivityInfo> iterator2 = list2.iterator();
                                                        try {
                                                            while (iterator2.hasNext()) {
                                                                final LauncherActivityInfo next2 = iterator2.next();
                                                                try {
                                                                    final LauncherActivityInfo launcherActivityInfo = next2;
                                                                    Label_0263: {
                                                                        if (equals) {
                                                                            break Label_0263;
                                                                        }
                                                                        final ApplicationInfo applicationInfo = launcherActivityInfo.getApplicationInfo();
                                                                        try {
                                                                            if (applicationInfo.targetSdkVersion < 26) {
                                                                                continue Label_0111_Outer;
                                                                            }
                                                                            final ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO shortcutConfigActivityInfo$ShortcutConfigActivityInfoVO = new ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO(launcherActivityInfo);
                                                                            final ArrayList<ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO> list3 = (ArrayList<ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO>)list;
                                                                            try {
                                                                                list3.add(shortcutConfigActivityInfo$ShortcutConfigActivityInfoVO);
                                                                            }
                                                                            catch (Exception ex) {
                                                                                Log.e("LauncherAppsCompatVO", "Error calling new API", (Throwable)ex);
                                                                            }
                                                                        }
                                                                        catch (Exception ex2) {}
                                                                    }
                                                                }
                                                                catch (Exception ex3) {}
                                                            }
                                                        }
                                                        catch (Exception ex4) {}
                                                    }
                                                    catch (Exception ex5) {}
                                                }
                                                catch (Exception ex6) {}
                                            }
                                            catch (Exception ex7) {}
                                        }
                                        catch (Exception ex8) {}
                                    }
                                }
                                catch (Exception ex9) {}
                            }
                            catch (Exception ex10) {}
                        }
                        catch (Exception ex11) {}
                    }
                    catch (Exception ex12) {}
                    break;
                }
                final ArrayList<Object> list4 = new ArrayList<Object>(1);
                list4.add(packageUserKey.mUser);
                final String mPackageName = packageUserKey.mPackageName;
                final List<Object> userProfiles = list4;
                final Object o = mPackageName;
                continue;
            }
        }
        return list;
    }
}

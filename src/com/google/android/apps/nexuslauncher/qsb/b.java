// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo$AccessibilityAction;
import com.android.launcher3.Launcher;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.View;
import android.content.res.Resources;
import android.content.pm.PackageManager$NameNotFoundException;
import android.text.TextUtils;
import android.content.Context;
import android.view.View$AccessibilityDelegate;

public class b extends View$AccessibilityDelegate
{
    public static final String f(final Context context) {
        CharSequence charSequence = null;
        while (true) {
            try {
                final Resources resourcesForApplication = context.getPackageManager().getResourcesForApplication("com.google.android.googlequicksearchbox");
                final int identifier = resourcesForApplication.getIdentifier("title_google_home_screen", "string", "com.google.android.googlequicksearchbox");
                if (identifier != 0) {
                    charSequence = resourcesForApplication.getString(identifier);
                }
                if (TextUtils.isEmpty(charSequence)) {
                    charSequence = context.getString(2131493006);
                }
                return context.getString(2131493007, new Object[] { charSequence });
            }
            catch (PackageManager$NameNotFoundException ex) {
                continue;
            }
            break;
        }
    }
    
    public void onInitializeAccessibilityNodeInfo(final View view, final AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        if (((NexusLauncherActivity)Launcher.getLauncher(view.getContext())).df()) {
            accessibilityNodeInfo.addAction(new AccessibilityNodeInfo$AccessibilityAction(2131493007, (CharSequence)f(view.getContext())));
        }
    }
    
    public boolean performAccessibilityAction(final View view, final int n, final Bundle bundle) {
        if (n == 2131493007) {
            ((NexusLauncherActivity)Launcher.getLauncher(view.getContext())).dg();
            return true;
        }
        return super.performAccessibilityAction(view, n, bundle);
    }
}

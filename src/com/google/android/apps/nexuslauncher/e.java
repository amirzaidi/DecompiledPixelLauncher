// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import java.util.List;
import com.android.launcher3.LauncherModel;
import java.util.Iterator;
import com.android.launcher3.shortcuts.DeepShortcutManager;
import com.android.launcher3.LauncherAppState;
import android.os.UserHandle;
import com.android.launcher3.compat.UserManagerCompat;
import android.content.Intent;
import android.content.Context;
import android.content.BroadcastReceiver;

final class e extends BroadcastReceiver
{
    final /* synthetic */ DynamicIconProvider fR;
    
    e(final DynamicIconProvider fr) {
        this.fR = fr;
    }
    
    public void onReceive(final Context context, final Intent intent) {
        for (final UserHandle userHandle : UserManagerCompat.getInstance(context).getUserProfiles()) {
            final LauncherModel model = LauncherAppState.getInstance(context).getModel();
            model.onPackageChanged("com.google.android.calendar", userHandle);
            final List queryForPinnedShortcuts = DeepShortcutManager.getInstance(context).queryForPinnedShortcuts("com.google.android.calendar", userHandle);
            if (!queryForPinnedShortcuts.isEmpty()) {
                model.updatePinnedShortcuts("com.google.android.calendar", queryForPinnedShortcuts, userHandle);
            }
        }
    }
}

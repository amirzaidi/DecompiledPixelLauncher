// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import android.os.UserHandle;
import java.util.ArrayList;
import com.android.launcher3.LauncherModel$CallbackTask;
import com.android.launcher3.LauncherModel$BaseModelUpdateTask;

public abstract class ExtendedModelTask extends LauncherModel$BaseModelUpdateTask
{
    public void bindDeepShortcuts(final BgDataModel bgDataModel) {
        this.scheduleCallbackTask(new ExtendedModelTask$2(this, bgDataModel.deepShortcutMap.clone()));
    }
    
    public void bindUpdatedShortcuts(final ArrayList list, final UserHandle userHandle) {
        this.bindUpdatedShortcuts(list, new ArrayList(), userHandle);
    }
    
    public void bindUpdatedShortcuts(final ArrayList list, final ArrayList list2, final UserHandle userHandle) {
        if (!list.isEmpty() || (list2.isEmpty() ^ true)) {
            this.scheduleCallbackTask(new ExtendedModelTask$1(this, list, list2, userHandle));
        }
    }
}

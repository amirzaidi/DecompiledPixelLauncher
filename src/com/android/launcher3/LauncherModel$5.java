// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.util.MultiHashMap;

final class LauncherModel$5 implements Runnable
{
    final /* synthetic */ LauncherModel this$0;
    final /* synthetic */ MultiHashMap val$shortcutMapCopy;
    
    LauncherModel$5(final LauncherModel this$0, final MultiHashMap val$shortcutMapCopy) {
        this.this$0 = this$0;
        this.val$shortcutMapCopy = val$shortcutMapCopy;
    }
    
    public void run() {
        final LauncherModel$Callbacks callback = this.this$0.getCallback();
        if (callback != null) {
            callback.bindDeepShortcutMap(this.val$shortcutMapCopy);
        }
    }
}

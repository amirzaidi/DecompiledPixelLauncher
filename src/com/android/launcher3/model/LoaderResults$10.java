// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import android.os.Looper;
import com.android.launcher3.util.LooperIdleLock;
import com.android.launcher3.util.ViewOnDrawExecutor;
import java.util.Collection;
import android.util.Log;
import com.android.launcher3.InvariantDeviceProfile;
import java.util.Comparator;
import java.util.List;
import java.util.Collections;
import java.util.HashSet;
import com.android.launcher3.ItemInfo;
import java.util.Iterator;
import com.android.launcher3.LauncherAppWidgetInfo;
import java.util.ArrayList;
import com.android.launcher3.MainThreadExecutor;
import java.util.concurrent.Executor;
import java.lang.ref.WeakReference;
import com.android.launcher3.AllAppsList;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel$Callbacks;
import com.android.launcher3.util.MultiHashMap;

final class LoaderResults$10 implements Runnable
{
    final /* synthetic */ LoaderResults this$0;
    final /* synthetic */ MultiHashMap val$shortcutMapCopy;
    
    LoaderResults$10(final LoaderResults this$0, final MultiHashMap val$shortcutMapCopy) {
        this.this$0 = this$0;
        this.val$shortcutMapCopy = val$shortcutMapCopy;
    }
    
    public void run() {
        final LauncherModel$Callbacks launcherModel$Callbacks = (LauncherModel$Callbacks)this.this$0.mCallbacks.get();
        if (launcherModel$Callbacks != null) {
            launcherModel$Callbacks.bindDeepShortcutMap(this.val$shortcutMapCopy);
        }
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import android.os.Looper;
import com.android.launcher3.util.LooperIdleLock;
import com.android.launcher3.util.ViewOnDrawExecutor;
import java.util.Collection;
import android.util.Log;
import com.android.launcher3.util.MultiHashMap;
import com.android.launcher3.InvariantDeviceProfile;
import java.util.Comparator;
import java.util.List;
import java.util.Collections;
import java.util.HashSet;
import com.android.launcher3.ItemInfo;
import java.util.Iterator;
import com.android.launcher3.LauncherAppWidgetInfo;
import com.android.launcher3.MainThreadExecutor;
import java.util.concurrent.Executor;
import java.lang.ref.WeakReference;
import com.android.launcher3.AllAppsList;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel$Callbacks;
import java.util.ArrayList;

final class LoaderResults$8 implements Runnable
{
    final /* synthetic */ LoaderResults this$0;
    final /* synthetic */ int val$chunkSize;
    final /* synthetic */ int val$start;
    final /* synthetic */ ArrayList val$workspaceItems;
    
    LoaderResults$8(final LoaderResults this$0, final ArrayList val$workspaceItems, final int val$start, final int val$chunkSize) {
        this.this$0 = this$0;
        this.val$workspaceItems = val$workspaceItems;
        this.val$start = val$start;
        this.val$chunkSize = val$chunkSize;
    }
    
    public void run() {
        final LauncherModel$Callbacks launcherModel$Callbacks = (LauncherModel$Callbacks)this.this$0.mCallbacks.get();
        if (launcherModel$Callbacks != null) {
            launcherModel$Callbacks.bindItems(this.val$workspaceItems, this.val$start, this.val$start + this.val$chunkSize, false);
        }
    }
}

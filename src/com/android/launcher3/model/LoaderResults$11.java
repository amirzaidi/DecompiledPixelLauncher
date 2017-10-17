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

final class LoaderResults$11 implements Runnable
{
    final /* synthetic */ LoaderResults this$0;
    final /* synthetic */ ArrayList val$list;
    
    LoaderResults$11(final LoaderResults this$0, final ArrayList val$list) {
        this.this$0 = this$0;
        this.val$list = val$list;
    }
    
    public void run() {
        final LauncherModel$Callbacks launcherModel$Callbacks = (LauncherModel$Callbacks)this.this$0.mCallbacks.get();
        if (launcherModel$Callbacks != null) {
            launcherModel$Callbacks.bindAllApplications(this.val$list);
        }
    }
}

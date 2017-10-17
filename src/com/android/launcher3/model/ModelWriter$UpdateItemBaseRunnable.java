// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import android.content.ContentValues;
import java.util.ArrayList;
import com.android.launcher3.util.ItemInfoMatcher;
import java.util.Arrays;
import com.android.launcher3.FolderInfo;
import android.content.ContentResolver;
import com.android.launcher3.LauncherSettings$Settings;
import com.android.launcher3.util.ContentWriter;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.LauncherModel;
import java.util.concurrent.Executor;
import android.content.Context;
import android.util.Log;
import com.android.launcher3.ItemInfo;

abstract class ModelWriter$UpdateItemBaseRunnable implements Runnable
{
    private final StackTraceElement[] mStackTrace;
    final /* synthetic */ ModelWriter this$0;
    
    ModelWriter$UpdateItemBaseRunnable(final ModelWriter this$0) {
        this.this$0 = this$0;
        this.mStackTrace = new Throwable().getStackTrace();
    }
    
    protected void updateItemArrays(final ItemInfo itemInfo, final long n) {
        while (true) {
            final long n2 = -100;
            final long n3 = -101;
            final ModelWriter this$0 = this.this$0;
            synchronized (this$0.mBgDataModel) {
                this.this$0.checkItemInfoLocked(n, itemInfo, this.mStackTrace);
                if (itemInfo.container != n2 && itemInfo.container != n3 && !this.this$0.mBgDataModel.folders.containsKey(itemInfo.container)) {
                    Log.e("ModelWriter", "item: " + itemInfo + " container being set to: " + itemInfo.container + ", not in the list of folders");
                }
                final ItemInfo itemInfo2 = (ItemInfo)this.this$0.mBgDataModel.itemsIdMap.get(n);
                if (itemInfo2 != null && (itemInfo2.container == n2 || itemInfo2.container == n3)) {
                    switch (itemInfo2.itemType) {
                        case 0:
                        case 1:
                        case 2:
                        case 6: {
                            if (!this.this$0.mBgDataModel.workspaceItems.contains(itemInfo2)) {
                                this.this$0.mBgDataModel.workspaceItems.add(itemInfo2);
                                break;
                            }
                            break;
                        }
                    }
                    return;
                }
            }
            final Throwable t;
            this.this$0.mBgDataModel.workspaceItems.remove(t);
        }
    }
}

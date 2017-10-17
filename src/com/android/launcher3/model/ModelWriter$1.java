// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import android.content.ContentValues;
import java.util.ArrayList;
import com.android.launcher3.util.ItemInfoMatcher;
import java.util.Arrays;
import com.android.launcher3.FolderInfo;
import com.android.launcher3.LauncherSettings$Settings;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.LauncherModel;
import java.util.concurrent.Executor;
import android.content.Context;
import com.android.launcher3.LauncherSettings$Favorites;
import com.android.launcher3.util.ContentWriter;
import com.android.launcher3.ItemInfo;
import android.content.ContentResolver;

final class ModelWriter$1 implements Runnable
{
    final /* synthetic */ ModelWriter this$0;
    final /* synthetic */ ContentResolver val$cr;
    final /* synthetic */ ItemInfo val$item;
    final /* synthetic */ StackTraceElement[] val$stackTrace;
    final /* synthetic */ ContentWriter val$writer;
    
    ModelWriter$1(final ModelWriter this$0, final ContentResolver val$cr, final ContentWriter val$writer, final ItemInfo val$item, final StackTraceElement[] val$stackTrace) {
        this.this$0 = this$0;
        this.val$cr = val$cr;
        this.val$writer = val$writer;
        this.val$item = val$item;
        this.val$stackTrace = val$stackTrace;
    }
    
    public void run() {
        this.val$cr.insert(LauncherSettings$Favorites.CONTENT_URI, this.val$writer.getValues(this.this$0.mContext));
        final ModelWriter this$0 = this.this$0;
        synchronized (this$0.mBgDataModel) {
            this.this$0.checkItemInfoLocked(this.val$item.id, this.val$item, this.val$stackTrace);
            this.this$0.mBgDataModel.addItem(this.this$0.mContext, this.val$item, true);
        }
    }
}

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
import com.android.launcher3.util.LooperExecuter;
import com.android.launcher3.LauncherModel;
import java.util.concurrent.Executor;
import android.content.Context;
import java.util.Iterator;
import com.android.launcher3.LauncherSettings$Favorites;
import com.android.launcher3.ItemInfo;

final class ModelWriter$2 implements Runnable
{
    final /* synthetic */ ModelWriter this$0;
    final /* synthetic */ Iterable val$items;
    
    ModelWriter$2(final ModelWriter this$0, final Iterable val$items) {
        this.this$0 = this$0;
        this.val$items = val$items;
    }
    
    public void run() {
        for (final ItemInfo itemInfo : this.val$items) {
            this.this$0.mContext.getContentResolver().delete(LauncherSettings$Favorites.getContentUri(itemInfo.id), (String)null, (String[])null);
            this.this$0.mBgDataModel.removeItem(this.this$0.mContext, itemInfo);
        }
    }
}

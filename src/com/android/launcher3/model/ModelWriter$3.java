// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import android.content.ContentValues;
import java.util.ArrayList;
import com.android.launcher3.util.ItemInfoMatcher;
import java.util.Arrays;
import com.android.launcher3.LauncherSettings$Settings;
import com.android.launcher3.util.ContentWriter;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.LauncherModel;
import java.util.concurrent.Executor;
import android.content.Context;
import android.content.ContentResolver;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.LauncherSettings$Favorites;
import com.android.launcher3.FolderInfo;

final class ModelWriter$3 implements Runnable
{
    final /* synthetic */ ModelWriter this$0;
    final /* synthetic */ FolderInfo val$info;
    
    ModelWriter$3(final ModelWriter this$0, final FolderInfo val$info) {
        this.this$0 = this$0;
        this.val$info = val$info;
    }
    
    public void run() {
        final ContentResolver contentResolver = this.this$0.mContext.getContentResolver();
        contentResolver.delete(LauncherSettings$Favorites.CONTENT_URI, "container=" + this.val$info.id, (String[])null);
        this.this$0.mBgDataModel.removeItem(this.this$0.mContext, this.val$info.contents);
        this.val$info.contents.clear();
        contentResolver.delete(LauncherSettings$Favorites.getContentUri(this.val$info.id), (String)null, (String[])null);
        this.this$0.mBgDataModel.removeItem(this.this$0.mContext, this.val$info);
    }
}

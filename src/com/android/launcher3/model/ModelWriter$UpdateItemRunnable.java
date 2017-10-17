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
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.util.LooperExecuter;
import com.android.launcher3.LauncherModel;
import java.util.concurrent.Executor;
import android.content.Context;
import com.android.launcher3.LauncherSettings$Favorites;
import com.android.launcher3.util.ContentWriter;
import com.android.launcher3.ItemInfo;

class ModelWriter$UpdateItemRunnable extends ModelWriter$UpdateItemBaseRunnable
{
    private final ItemInfo mItem;
    private final long mItemId;
    private final ContentWriter mWriter;
    final /* synthetic */ ModelWriter this$0;
    
    ModelWriter$UpdateItemRunnable(final ModelWriter this$0, final ItemInfo mItem, final ContentWriter mWriter) {
        this.this$0 = this$0;
        super(this$0);
        this.mItem = mItem;
        this.mWriter = mWriter;
        this.mItemId = mItem.id;
    }
    
    public void run() {
        this.this$0.mContext.getContentResolver().update(LauncherSettings$Favorites.getContentUri(this.mItemId), this.mWriter.getValues(this.this$0.mContext), (String)null, (String[])null);
        this.updateItemArrays(this.mItem, this.mItemId);
    }
}

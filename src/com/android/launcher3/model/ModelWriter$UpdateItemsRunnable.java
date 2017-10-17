// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import com.android.launcher3.util.ItemInfoMatcher;
import java.util.Arrays;
import com.android.launcher3.FolderInfo;
import com.android.launcher3.LauncherSettings$Settings;
import com.android.launcher3.util.ContentWriter;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.LauncherModel;
import java.util.concurrent.Executor;
import android.content.ContentResolver;
import android.content.Context;
import com.android.launcher3.LauncherProvider;
import android.content.ContentValues;
import com.android.launcher3.LauncherSettings$Favorites;
import com.android.launcher3.ItemInfo;
import android.content.ContentProviderOperation;
import java.util.ArrayList;

class ModelWriter$UpdateItemsRunnable extends ModelWriter$UpdateItemBaseRunnable
{
    private final ArrayList mItems;
    private final ArrayList mValues;
    final /* synthetic */ ModelWriter this$0;
    
    ModelWriter$UpdateItemsRunnable(final ModelWriter this$0, final ArrayList mItems, final ArrayList mValues) {
        this.this$0 = this$0;
        super(this$0);
        this.mValues = mValues;
        this.mItems = mItems;
    }
    
    public void run() {
        final ArrayList<ContentProviderOperation> list = new ArrayList<ContentProviderOperation>();
        for (int size = this.mItems.size(), i = 0; i < size; ++i) {
            final ItemInfo itemInfo = this.mItems.get(i);
            final long id = itemInfo.id;
            list.add(ContentProviderOperation.newUpdate(LauncherSettings$Favorites.getContentUri(id)).withValues((ContentValues)this.mValues.get(i)).build());
            this.updateItemArrays(itemInfo, id);
        }
        try {
            final ModelWriter this$0 = this.this$0;
            try {
                final Context -get1 = this$0.mContext;
                try {
                    final ContentResolver contentResolver = -get1.getContentResolver();
                    try {
                        contentResolver.applyBatch(LauncherProvider.AUTHORITY, (ArrayList)list);
                    }
                    catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
                catch (Exception ex2) {}
            }
            catch (Exception ex3) {}
        }
        catch (Exception ex4) {}
    }
}

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
import com.android.launcher3.ItemInfo;
import java.util.concurrent.Executor;
import android.content.Context;

public class ModelWriter
{
    private final BgDataModel mBgDataModel;
    private final Context mContext;
    private final boolean mHasVerticalHotseat;
    private final Executor mWorkerExecutor;
    
    public ModelWriter(final Context mContext, final BgDataModel mBgDataModel, final boolean mHasVerticalHotseat) {
        this.mContext = mContext;
        this.mBgDataModel = mBgDataModel;
        this.mWorkerExecutor = new LooperExecutor(LauncherModel.getWorkerLooper());
        this.mHasVerticalHotseat = mHasVerticalHotseat;
    }
    
    private void checkItemInfoLocked(final long n, final ItemInfo itemInfo, final StackTraceElement[] stackTrace) {
        final ItemInfo itemInfo2 = (ItemInfo)this.mBgDataModel.itemsIdMap.get(n);
        if (itemInfo2 != null && itemInfo != itemInfo2) {
            if (itemInfo2 instanceof ShortcutInfo && itemInfo instanceof ShortcutInfo) {
                final ShortcutInfo shortcutInfo = (ShortcutInfo)itemInfo2;
                final ShortcutInfo shortcutInfo2 = (ShortcutInfo)itemInfo;
                if (shortcutInfo.title.toString().equals(shortcutInfo2.title.toString()) && shortcutInfo.intent.filterEquals(shortcutInfo2.intent) && shortcutInfo.id == shortcutInfo2.id && shortcutInfo.itemType == shortcutInfo2.itemType && shortcutInfo.container == shortcutInfo2.container && shortcutInfo.screenId == shortcutInfo2.screenId && shortcutInfo.cellX == shortcutInfo2.cellX && shortcutInfo.cellY == shortcutInfo2.cellY && shortcutInfo.spanX == shortcutInfo2.spanX && shortcutInfo.spanY == shortcutInfo2.spanY) {
                    return;
                }
            }
            final StringBuilder append = new StringBuilder().append("item: ");
            String string;
            if (itemInfo != null) {
                string = itemInfo.toString();
            }
            else {
                string = "null";
            }
            final StringBuilder append2 = append.append(string).append("modelItem: ");
            String string2;
            if (itemInfo2 != null) {
                string2 = ((ShortcutInfo)itemInfo2).toString();
            }
            else {
                string2 = "null";
            }
            final RuntimeException ex = new RuntimeException(append2.append(string2).append("Error: ItemInfo passed to checkItemInfo doesn't match original").toString());
            if (stackTrace != null) {
                ex.setStackTrace(stackTrace);
            }
            throw ex;
        }
    }
    
    private void updateItemInfoProps(final ItemInfo itemInfo, final long container, final long screenId, int cellX, final int cellY) {
        itemInfo.container = container;
        itemInfo.cellX = cellX;
        itemInfo.cellY = cellY;
        if (container == -101) {
            if (this.mHasVerticalHotseat) {
                cellX = LauncherAppState.getIDP(this.mContext).numHotseatIcons - cellY - 1;
            }
            itemInfo.screenId = cellX;
        }
        else {
            itemInfo.screenId = screenId;
        }
    }
    
    public void addItemToDatabase(final ItemInfo itemInfo, final long n, final long n2, final int n3, final int n4) {
        this.updateItemInfoProps(itemInfo, n, n2, n3, n4);
        final ContentWriter contentWriter = new ContentWriter(this.mContext);
        final ContentResolver contentResolver = this.mContext.getContentResolver();
        itemInfo.onAddToDatabase(contentWriter);
        itemInfo.id = LauncherSettings$Settings.call(contentResolver, "generate_new_item_id").getLong("value");
        contentWriter.put("_id", Long.valueOf(itemInfo.id));
        this.mWorkerExecutor.execute(new ModelWriter$1(this, contentResolver, contentWriter, itemInfo, new Throwable().getStackTrace()));
    }
    
    public void addOrMoveItemInDatabase(final ItemInfo itemInfo, final long n, final long n2, final int n3, final int n4) {
        if (itemInfo.container == -1) {
            this.addItemToDatabase(itemInfo, n, n2, n3, n4);
        }
        else {
            this.moveItemInDatabase(itemInfo, n, n2, n3, n4);
        }
    }
    
    public void deleteFolderAndContentsFromDatabase(final FolderInfo folderInfo) {
        this.mWorkerExecutor.execute(new ModelWriter$3(this, folderInfo));
    }
    
    public void deleteItemFromDatabase(final ItemInfo itemInfo) {
        this.deleteItemsFromDatabase(Arrays.asList(itemInfo));
    }
    
    public void deleteItemsFromDatabase(final ItemInfoMatcher itemInfoMatcher) {
        this.deleteItemsFromDatabase(itemInfoMatcher.filterItemInfos(this.mBgDataModel.itemsIdMap));
    }
    
    public void deleteItemsFromDatabase(final Iterable iterable) {
        this.mWorkerExecutor.execute(new ModelWriter$2(this, iterable));
    }
    
    public void modifyItemInDatabase(final ItemInfo itemInfo, final long n, final long n2, final int n3, final int n4, final int spanX, final int spanY) {
        this.updateItemInfoProps(itemInfo, n, n2, n3, n4);
        itemInfo.spanX = spanX;
        itemInfo.spanY = spanY;
        this.mWorkerExecutor.execute(new ModelWriter$UpdateItemRunnable(this, itemInfo, new ContentWriter(this.mContext).put("container", Long.valueOf(itemInfo.container)).put("cellX", Integer.valueOf(itemInfo.cellX)).put("cellY", Integer.valueOf(itemInfo.cellY)).put("rank", Integer.valueOf(itemInfo.rank)).put("spanX", Integer.valueOf(itemInfo.spanX)).put("spanY", Integer.valueOf(itemInfo.spanY)).put("screen", Long.valueOf(itemInfo.screenId))));
    }
    
    public void moveItemInDatabase(final ItemInfo itemInfo, final long n, final long n2, final int n3, final int n4) {
        this.updateItemInfoProps(itemInfo, n, n2, n3, n4);
        this.mWorkerExecutor.execute(new ModelWriter$UpdateItemRunnable(this, itemInfo, new ContentWriter(this.mContext).put("container", Long.valueOf(itemInfo.container)).put("cellX", Integer.valueOf(itemInfo.cellX)).put("cellY", Integer.valueOf(itemInfo.cellY)).put("rank", Integer.valueOf(itemInfo.rank)).put("screen", Long.valueOf(itemInfo.screenId))));
    }
    
    public void moveItemsInDatabase(final ArrayList list, final long n, final int n2) {
        final ArrayList<ContentValues> list2 = new ArrayList<ContentValues>();
        for (int size = list.size(), i = 0; i < size; ++i) {
            final ItemInfo itemInfo = list.get(i);
            this.updateItemInfoProps(itemInfo, n, n2, itemInfo.cellX, itemInfo.cellY);
            final ContentValues contentValues = new ContentValues();
            contentValues.put("container", itemInfo.container);
            contentValues.put("cellX", itemInfo.cellX);
            contentValues.put("cellY", itemInfo.cellY);
            contentValues.put("rank", itemInfo.rank);
            contentValues.put("screen", itemInfo.screenId);
            list2.add(contentValues);
        }
        this.mWorkerExecutor.execute(new ModelWriter$UpdateItemsRunnable(this, list, list2));
    }
    
    public void updateItemInDatabase(final ItemInfo itemInfo) {
        final ContentWriter contentWriter = new ContentWriter(this.mContext);
        itemInfo.onAddToDatabase(contentWriter);
        this.mWorkerExecutor.execute(new ModelWriter$UpdateItemRunnable(this, itemInfo, contentWriter));
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import com.android.launcher3.util.ContentWriter$CommitParams;
import com.android.launcher3.util.ContentWriter;
import java.net.URISyntaxException;
import com.android.launcher3.logging.FileLog;
import android.graphics.BitmapFactory;
import com.android.launcher3.graphics.LauncherIcons;
import android.content.Intent$ShortcutIconResource;
import java.security.InvalidParameterException;
import android.graphics.Bitmap;
import android.content.pm.LauncherActivityInfo;
import android.content.ComponentName;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.ItemInfoWithIcon;
import com.android.launcher3.compat.LauncherAppsCompat;
import android.net.Uri;
import com.android.launcher3.ShortcutInfo;
import android.content.Intent;
import android.content.ContentValues;
import com.android.launcher3.LauncherSettings$Favorites;
import android.util.Log;
import com.android.launcher3.util.GridOccupancy;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.Utilities;
import android.text.TextUtils;
import com.android.launcher3.LauncherAppState;
import android.database.Cursor;
import android.os.UserHandle;
import com.android.launcher3.util.LongArrayMap;
import com.android.launcher3.compat.UserManagerCompat;
import com.android.launcher3.IconCache;
import com.android.launcher3.InvariantDeviceProfile;
import android.content.Context;
import java.util.ArrayList;
import android.util.LongSparseArray;
import android.database.CursorWrapper;

public class LoaderCursor extends CursorWrapper
{
    public final LongSparseArray allUsers;
    private final int cellXIndex;
    private final int cellYIndex;
    public long container;
    private final int containerIndex;
    private final int iconIndex;
    private final int iconPackageIndex;
    private final int iconResourceIndex;
    public long id;
    private final int idIndex;
    private final int intentIndex;
    public int itemType;
    private final int itemTypeIndex;
    private final ArrayList itemsToRemove;
    private final Context mContext;
    private final InvariantDeviceProfile mIDP;
    private final IconCache mIconCache;
    private final UserManagerCompat mUserManager;
    private final LongArrayMap occupied;
    private final int profileIdIndex;
    public int restoreFlag;
    private final int restoredIndex;
    private final ArrayList restoredRows;
    private final int screenIndex;
    public long serialNumber;
    public final int titleIndex;
    public UserHandle user;
    
    public LoaderCursor(final Cursor cursor, final LauncherAppState launcherAppState) {
        super(cursor);
        this.allUsers = new LongSparseArray();
        this.itemsToRemove = new ArrayList();
        this.restoredRows = new ArrayList();
        this.occupied = new LongArrayMap();
        this.mContext = launcherAppState.getContext();
        this.mIconCache = launcherAppState.getIconCache();
        this.mIDP = launcherAppState.getInvariantDeviceProfile();
        this.mUserManager = UserManagerCompat.getInstance(this.mContext);
        this.iconIndex = this.getColumnIndexOrThrow("icon");
        this.iconPackageIndex = this.getColumnIndexOrThrow("iconPackage");
        this.iconResourceIndex = this.getColumnIndexOrThrow("iconResource");
        this.titleIndex = this.getColumnIndexOrThrow("title");
        this.idIndex = this.getColumnIndexOrThrow("_id");
        this.containerIndex = this.getColumnIndexOrThrow("container");
        this.itemTypeIndex = this.getColumnIndexOrThrow("itemType");
        this.screenIndex = this.getColumnIndexOrThrow("screen");
        this.cellXIndex = this.getColumnIndexOrThrow("cellX");
        this.cellYIndex = this.getColumnIndexOrThrow("cellY");
        this.profileIdIndex = this.getColumnIndexOrThrow("profileId");
        this.restoredIndex = this.getColumnIndexOrThrow("restored");
        this.intentIndex = this.getColumnIndexOrThrow("intent");
    }
    
    private String getTitle() {
        final String string = this.getString(this.titleIndex);
        String trim;
        if (TextUtils.isEmpty((CharSequence)string)) {
            trim = "";
        }
        else {
            trim = Utilities.trim(string);
        }
        return trim;
    }
    
    public void applyCommonProperties(final ItemInfo itemInfo) {
        itemInfo.id = this.id;
        itemInfo.container = this.container;
        itemInfo.screenId = this.getInt(this.screenIndex);
        itemInfo.cellX = this.getInt(this.cellXIndex);
        itemInfo.cellY = this.getInt(this.cellYIndex);
    }
    
    public void checkAndAddItem(final ItemInfo itemInfo, final BgDataModel bgDataModel) {
        if (this.checkItemPlacement(itemInfo, bgDataModel.workspaceScreens)) {
            bgDataModel.addItem(this.mContext, itemInfo, false);
        }
        else {
            this.markDeleted("Item position overlap");
        }
    }
    
    protected boolean checkItemPlacement(final ItemInfo itemInfo, final ArrayList list) {
        final long n = -100;
        final long n2 = -101;
        final int n3 = 1;
        final long screenId = itemInfo.screenId;
        if (itemInfo.container == n2) {
            final GridOccupancy gridOccupancy = (GridOccupancy)this.occupied.get(n2);
            if (itemInfo.screenId >= this.mIDP.numHotseatIcons) {
                Log.e("LoaderCursor", "Error loading shortcut " + itemInfo + " into hotseat position " + itemInfo.screenId + ", position out of bounds: (0 to " + (this.mIDP.numHotseatIcons - 1) + ")");
                return false;
            }
            if (gridOccupancy == null) {
                final GridOccupancy gridOccupancy2 = new GridOccupancy(this.mIDP.numHotseatIcons, n3);
                gridOccupancy2.cells[(int)itemInfo.screenId][0] = (n3 != 0);
                this.occupied.put(n2, (Object)gridOccupancy2);
                return n3 != 0;
            }
            if (gridOccupancy.cells[(int)itemInfo.screenId][0]) {
                Log.e("LoaderCursor", "Error loading shortcut into hotseat " + itemInfo + " into position (" + itemInfo.screenId + ":" + itemInfo.cellX + "," + itemInfo.cellY + ") already occupied");
                return false;
            }
            return gridOccupancy.cells[(int)itemInfo.screenId][0] = (n3 != 0);
        }
        else {
            if (itemInfo.container != n) {
                return n3 != 0;
            }
            if (!list.contains(itemInfo.screenId)) {
                return false;
            }
            final int numColumns = this.mIDP.numColumns;
            final int numRows = this.mIDP.numRows;
            if ((itemInfo.container == n && itemInfo.cellX < 0) || itemInfo.cellY < 0 || itemInfo.cellX + itemInfo.spanX > numColumns || itemInfo.cellY + itemInfo.spanY > numRows) {
                Log.e("LoaderCursor", "Error loading shortcut " + itemInfo + " into cell (" + screenId + "-" + itemInfo.screenId + ":" + itemInfo.cellX + "," + itemInfo.cellY + ") out of screen bounds ( " + numColumns + "x" + numRows + ")");
                return false;
            }
            if (!this.occupied.containsKey(itemInfo.screenId)) {
                final GridOccupancy gridOccupancy3 = new GridOccupancy(numColumns + 1, numRows + 1);
                if (itemInfo.screenId == 0L) {
                    gridOccupancy3.markCells(0, 0, numColumns + 1, n3, n3 != 0);
                }
                this.occupied.put(itemInfo.screenId, (Object)gridOccupancy3);
            }
            final GridOccupancy gridOccupancy4 = (GridOccupancy)this.occupied.get(itemInfo.screenId);
            if (gridOccupancy4.isRegionVacant(itemInfo.cellX, itemInfo.cellY, itemInfo.spanX, itemInfo.spanY)) {
                gridOccupancy4.markCells(itemInfo, n3 != 0);
                return n3 != 0;
            }
            Log.e("LoaderCursor", "Error loading shortcut " + itemInfo + " into cell (" + screenId + "-" + itemInfo.screenId + ":" + itemInfo.cellX + "," + itemInfo.cellX + "," + itemInfo.spanX + "," + itemInfo.spanY + ") already occupied");
            return false;
        }
    }
    
    public boolean commitDeleted() {
        if (this.itemsToRemove.size() > 0) {
            this.mContext.getContentResolver().delete(LauncherSettings$Favorites.CONTENT_URI, Utilities.createDbSelectionQuery("_id", this.itemsToRemove), (String[])null);
            return true;
        }
        return false;
    }
    
    public void commitRestoredItems() {
        if (this.restoredRows.size() > 0) {
            final ContentValues contentValues = new ContentValues();
            contentValues.put("restored", 0);
            this.mContext.getContentResolver().update(LauncherSettings$Favorites.CONTENT_URI, contentValues, Utilities.createDbSelectionQuery("_id", this.restoredRows), (String[])null);
        }
    }
    
    public ShortcutInfo getAppShortcutInfo(final Intent intent, final boolean b, final boolean b2) {
        if (this.user == null) {
            Log.d("LoaderCursor", "Null user found in getShortcutInfo");
            return null;
        }
        final ComponentName component = intent.getComponent();
        if (component == null) {
            Log.d("LoaderCursor", "Missing component found in getShortcutInfo");
            return null;
        }
        final Intent intent2 = new Intent("android.intent.action.MAIN", (Uri)null);
        intent2.addCategory("android.intent.category.LAUNCHER");
        intent2.setComponent(component);
        final LauncherActivityInfo resolveActivity = LauncherAppsCompat.getInstance(this.mContext).resolveActivity(intent2, this.user);
        if (resolveActivity == null && (b ^ true)) {
            Log.d("LoaderCursor", "Missing activity found in getShortcutInfo: " + component);
            return null;
        }
        final ShortcutInfo shortcutInfo = new ShortcutInfo();
        shortcutInfo.itemType = 0;
        shortcutInfo.user = this.user;
        shortcutInfo.intent = intent2;
        this.mIconCache.getTitleAndIcon(shortcutInfo, resolveActivity, b2);
        if (this.mIconCache.isDefaultIcon(shortcutInfo.iconBitmap, this.user)) {
            Bitmap iconBitmap = this.loadIcon(shortcutInfo);
            if (iconBitmap == null) {
                iconBitmap = shortcutInfo.iconBitmap;
            }
            shortcutInfo.iconBitmap = iconBitmap;
        }
        if (resolveActivity != null && PackageManagerHelper.isAppSuspended(resolveActivity.getApplicationInfo())) {
            shortcutInfo.isDisabled = 4;
        }
        if (TextUtils.isEmpty(shortcutInfo.title)) {
            shortcutInfo.title = this.getTitle();
        }
        if (shortcutInfo.title == null) {
            shortcutInfo.title = component.getClassName();
        }
        shortcutInfo.contentDescription = this.mUserManager.getBadgedLabelForUser(shortcutInfo.title, shortcutInfo.user);
        return shortcutInfo;
    }
    
    public ShortcutInfo getRestoredItemInfo(final Intent intent) {
        final ShortcutInfo shortcutInfo = new ShortcutInfo();
        shortcutInfo.user = this.user;
        shortcutInfo.intent = intent;
        shortcutInfo.iconBitmap = this.loadIcon(shortcutInfo);
        if (shortcutInfo.iconBitmap == null) {
            this.mIconCache.getTitleAndIcon(shortcutInfo, false);
        }
        if (this.hasRestoreFlag(1)) {
            final String title = this.getTitle();
            if (!TextUtils.isEmpty((CharSequence)title)) {
                shortcutInfo.title = Utilities.trim(title);
            }
        }
        else {
            if (!this.hasRestoreFlag(2)) {
                throw new InvalidParameterException("Invalid restoreType " + this.restoreFlag);
            }
            if (TextUtils.isEmpty(shortcutInfo.title)) {
                shortcutInfo.title = this.getTitle();
            }
        }
        shortcutInfo.contentDescription = this.mUserManager.getBadgedLabelForUser(shortcutInfo.title, shortcutInfo.user);
        shortcutInfo.itemType = this.itemType;
        shortcutInfo.status = this.restoreFlag;
        return shortcutInfo;
    }
    
    public boolean hasRestoreFlag(final int n) {
        boolean b = false;
        if ((this.restoreFlag & n) != 0x0) {
            b = true;
        }
        return b;
    }
    
    public boolean isOnWorkspaceOrHotseat() {
        boolean b = true;
        if (this.container != -100 && this.container != -101) {
            b = false;
        }
        return b;
    }
    
    protected Bitmap loadIcon(final ShortcutInfo shortcutInfo) {
        while (true) {
            Label_0270: {
                if (this.itemType != 1) {
                    break Label_0270;
                }
                final String string = this.getString(this.iconPackageIndex);
                final String string2 = this.getString(this.iconResourceIndex);
                if (TextUtils.isEmpty((CharSequence)string) && !(TextUtils.isEmpty((CharSequence)string2) ^ true)) {
                    break Label_0270;
                }
                shortcutInfo.iconResource = new Intent$ShortcutIconResource();
                shortcutInfo.iconResource.packageName = string;
                shortcutInfo.iconResource.resourceName = string2;
                Bitmap bitmap = LauncherIcons.createIconBitmap(shortcutInfo.iconResource, this.mContext);
                Label_0180: {
                    if (bitmap != null) {
                        break Label_0180;
                    }
                    final byte[] blob = this.getBlob(this.iconIndex);
                    try {
                        final Bitmap decodeByteArray = BitmapFactory.decodeByteArray(blob, 0, blob.length);
                        try {
                            bitmap = LauncherIcons.createIconBitmap(decodeByteArray, this.mContext);
                            if (bitmap == null) {
                                Log.e("LoaderCursor", "Failed to load icon for info " + shortcutInfo);
                            }
                            return bitmap;
                        }
                        catch (Exception ex) {
                            Log.e("LoaderCursor", "Failed to load icon for info " + shortcutInfo, (Throwable)ex);
                            return null;
                        }
                    }
                    catch (Exception ex2) {}
                }
            }
            Bitmap bitmap = null;
            continue;
        }
    }
    
    public ShortcutInfo loadSimpleShortcut() {
        final ShortcutInfo shortcutInfo = new ShortcutInfo();
        shortcutInfo.user = this.user;
        shortcutInfo.itemType = this.itemType;
        shortcutInfo.title = this.getTitle();
        shortcutInfo.iconBitmap = this.loadIcon(shortcutInfo);
        if (shortcutInfo.iconBitmap == null) {
            shortcutInfo.iconBitmap = this.mIconCache.getDefaultIcon(shortcutInfo.user);
        }
        return shortcutInfo;
    }
    
    public void markDeleted(final String s) {
        FileLog.e("LoaderCursor", s);
        this.itemsToRemove.add(this.id);
    }
    
    public void markRestored() {
        if (this.restoreFlag != 0) {
            this.restoredRows.add(this.id);
            this.restoreFlag = 0;
        }
    }
    
    public boolean moveToNext() {
        final boolean moveToNext = super.moveToNext();
        if (moveToNext) {
            this.itemType = this.getInt(this.itemTypeIndex);
            this.container = this.getInt(this.containerIndex);
            this.id = this.getLong(this.idIndex);
            this.serialNumber = this.getInt(this.profileIdIndex);
            this.user = (UserHandle)this.allUsers.get(this.serialNumber);
            this.restoreFlag = this.getInt(this.restoredIndex);
        }
        return moveToNext;
    }
    
    public Intent parseIntent() {
        Intent uri = null;
        final String string = this.getString(this.intentIndex);
        try {
            if (!TextUtils.isEmpty((CharSequence)string)) {
                uri = Intent.parseUri(string, 0);
            }
            return uri;
        }
        catch (URISyntaxException ex) {
            Log.e("LoaderCursor", "Error parsing Intent");
            return null;
        }
    }
    
    public ContentWriter updater() {
        return new ContentWriter(this.mContext, new ContentWriter$CommitParams("_id= ?", new String[] { Long.toString(this.id) }));
    }
}

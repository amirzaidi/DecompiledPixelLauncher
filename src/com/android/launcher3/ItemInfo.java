// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.content.ContentValues;
import com.android.launcher3.util.ContentWriter;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Process;
import android.os.UserHandle;

public class ItemInfo
{
    public int cellX;
    public int cellY;
    public long container;
    public CharSequence contentDescription;
    public long id;
    public int itemType;
    public int minSpanX;
    public int minSpanY;
    public int rank;
    public long screenId;
    public int spanX;
    public int spanY;
    public CharSequence title;
    public UserHandle user;
    
    public ItemInfo() {
        final int n = -1;
        final long screenId = -1;
        final boolean b = true;
        this.id = screenId;
        this.container = screenId;
        this.screenId = screenId;
        this.cellX = n;
        this.cellY = n;
        this.spanX = (b ? 1 : 0);
        this.spanY = (b ? 1 : 0);
        this.minSpanX = (b ? 1 : 0);
        this.minSpanY = (b ? 1 : 0);
        this.rank = 0;
        this.user = Process.myUserHandle();
    }
    
    ItemInfo(final ItemInfo itemInfo) {
        final int n = -1;
        final long screenId = -1;
        final boolean b = true;
        this.id = screenId;
        this.container = screenId;
        this.screenId = screenId;
        this.cellX = n;
        this.cellY = n;
        this.spanX = (b ? 1 : 0);
        this.spanY = (b ? 1 : 0);
        this.minSpanX = (b ? 1 : 0);
        this.minSpanY = (b ? 1 : 0);
        this.rank = 0;
        this.copyFrom(itemInfo);
        LauncherModel.checkItemInfo(this);
    }
    
    public void copyFrom(final ItemInfo itemInfo) {
        this.id = itemInfo.id;
        this.cellX = itemInfo.cellX;
        this.cellY = itemInfo.cellY;
        this.spanX = itemInfo.spanX;
        this.spanY = itemInfo.spanY;
        this.rank = itemInfo.rank;
        this.screenId = itemInfo.screenId;
        this.itemType = itemInfo.itemType;
        this.container = itemInfo.container;
        this.user = itemInfo.user;
        this.contentDescription = itemInfo.contentDescription;
    }
    
    protected String dumpProperties() {
        return "id=" + this.id + " type=" + LauncherSettings$Favorites.itemTypeToString(this.itemType) + " container=" + LauncherSettings$Favorites.containerToString((int)this.container) + " screen=" + this.screenId + " cell(" + this.cellX + "," + this.cellY + ")" + " span(" + this.spanX + "," + this.spanY + ")" + " minSpan(" + this.minSpanX + "," + this.minSpanY + ")" + " rank=" + this.rank + " user=" + this.user + " title=" + this.title;
    }
    
    public Intent getIntent() {
        return null;
    }
    
    public ComponentName getTargetComponent() {
        ComponentName componentName = null;
        final Intent intent = this.getIntent();
        if (intent == null) {
            return null;
        }
        final ComponentName component = intent.getComponent();
        if (this.itemType == 1 && component == null) {
            final String package1 = intent.getPackage();
            if (package1 != null) {
                componentName = new ComponentName(package1, ".");
            }
            return componentName;
        }
        return component;
    }
    
    public boolean isDisabled() {
        return false;
    }
    
    public void onAddToDatabase(final ContentWriter contentWriter) {
        if (this.screenId == -201L) {
            throw new RuntimeException("Screen id should not be EXTRA_EMPTY_SCREEN_ID");
        }
        this.writeToValues(contentWriter);
        contentWriter.put("profileId", this.user);
    }
    
    public void readFromValues(final ContentValues contentValues) {
        this.itemType = contentValues.getAsInteger("itemType");
        this.container = contentValues.getAsLong("container");
        this.screenId = contentValues.getAsLong("screen");
        this.cellX = contentValues.getAsInteger("cellX");
        this.cellY = contentValues.getAsInteger("cellY");
        this.spanX = contentValues.getAsInteger("spanX");
        this.spanY = contentValues.getAsInteger("spanY");
        this.rank = contentValues.getAsInteger("rank");
    }
    
    public final String toString() {
        return this.getClass().getSimpleName() + "(" + this.dumpProperties() + ")";
    }
    
    public void writeToValues(final ContentWriter contentWriter) {
        contentWriter.put("itemType", Integer.valueOf(this.itemType)).put("container", Long.valueOf(this.container)).put("screen", Long.valueOf(this.screenId)).put("cellX", Integer.valueOf(this.cellX)).put("cellY", Integer.valueOf(this.cellY)).put("spanX", Integer.valueOf(this.spanX)).put("spanY", Integer.valueOf(this.spanY)).put("rank", Integer.valueOf(this.rank));
    }
}

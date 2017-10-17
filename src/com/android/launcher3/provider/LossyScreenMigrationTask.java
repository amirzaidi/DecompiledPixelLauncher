// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.provider;

import android.database.Cursor;
import com.android.launcher3.Utilities;
import android.content.ContentValues;
import java.util.Iterator;
import com.android.launcher3.model.GridSizeMigrationTask$DbEntry;
import java.util.ArrayList;
import android.graphics.Point;
import com.android.launcher3.InvariantDeviceProfile;
import android.content.Context;
import com.android.launcher3.util.LongArrayMap;
import android.database.sqlite.SQLiteDatabase;
import com.android.launcher3.model.GridSizeMigrationTask;

public class LossyScreenMigrationTask extends GridSizeMigrationTask
{
    private final SQLiteDatabase mDb;
    private final LongArrayMap mOriginalItems;
    private final LongArrayMap mUpdates;
    
    protected LossyScreenMigrationTask(final Context context, final InvariantDeviceProfile invariantDeviceProfile, final SQLiteDatabase mDb) {
        super(context, invariantDeviceProfile, GridSizeMigrationTask.getValidPackages(context), new Point(invariantDeviceProfile.numColumns, invariantDeviceProfile.numRows + 1), new Point(invariantDeviceProfile.numColumns, invariantDeviceProfile.numRows));
        this.mDb = mDb;
        this.mOriginalItems = new LongArrayMap();
        this.mUpdates = new LongArrayMap();
    }
    
    protected ArrayList loadWorkspaceEntries(final long n) {
        final ArrayList loadWorkspaceEntries = super.loadWorkspaceEntries(n);
        for (final GridSizeMigrationTask$DbEntry gridSizeMigrationTask$DbEntry : loadWorkspaceEntries) {
            this.mOriginalItems.put(gridSizeMigrationTask$DbEntry.id, (Object)gridSizeMigrationTask$DbEntry.copy());
            ++gridSizeMigrationTask$DbEntry.cellY;
            this.mUpdates.put(gridSizeMigrationTask$DbEntry.id, (Object)gridSizeMigrationTask$DbEntry.copy());
        }
        return loadWorkspaceEntries;
    }
    
    public void migrateScreen0() {
        this.migrateScreen(0L);
        final ContentValues contentValues = new ContentValues();
        for (final GridSizeMigrationTask$DbEntry gridSizeMigrationTask$DbEntry : this.mUpdates) {
            final GridSizeMigrationTask$DbEntry gridSizeMigrationTask$DbEntry2 = (GridSizeMigrationTask$DbEntry)this.mOriginalItems.get(gridSizeMigrationTask$DbEntry.id);
            if (gridSizeMigrationTask$DbEntry2.cellX == gridSizeMigrationTask$DbEntry.cellX && gridSizeMigrationTask$DbEntry2.cellY == gridSizeMigrationTask$DbEntry.cellY && gridSizeMigrationTask$DbEntry2.spanX == gridSizeMigrationTask$DbEntry.spanX && gridSizeMigrationTask$DbEntry2.spanY == gridSizeMigrationTask$DbEntry.spanY) {
                continue;
            }
            contentValues.clear();
            gridSizeMigrationTask$DbEntry.addToContentValues(contentValues);
            this.mDb.update("favorites", contentValues, "_id = ?", new String[] { Long.toString(gridSizeMigrationTask$DbEntry.id) });
        }
        final Iterator iterator2 = this.mCarryOver.iterator();
        while (iterator2.hasNext()) {
            this.mEntryToRemove.add(iterator2.next().id);
        }
        if (!this.mEntryToRemove.isEmpty()) {
            this.mDb.delete("favorites", Utilities.createDbSelectionQuery("_id", this.mEntryToRemove), (String[])null);
        }
    }
    
    protected Cursor queryWorkspace(final String[] array, final String s) {
        return this.mDb.query("favorites", array, s, (String[])null, (String)null, (String)null, (String)null);
    }
    
    protected void update(final GridSizeMigrationTask$DbEntry gridSizeMigrationTask$DbEntry) {
        this.mUpdates.put(gridSizeMigrationTask$DbEntry.id, (Object)gridSizeMigrationTask$DbEntry.copy());
    }
}

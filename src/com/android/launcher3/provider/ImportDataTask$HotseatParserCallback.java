// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.provider;

import com.android.launcher3.model.GridSizeMigrationTask;
import com.android.launcher3.LauncherProvider;
import com.android.launcher3.LauncherSettings$WorkspaceScreens;
import com.android.launcher3.logging.FileLog;
import java.util.Iterator;
import android.content.SharedPreferences;
import android.os.Process;
import android.content.pm.ProviderInfo;
import com.android.launcher3.LauncherSettings$Settings;
import android.text.TextUtils;
import com.android.launcher3.Utilities;
import android.util.LongSparseArray;
import com.android.launcher3.LauncherAppState;
import android.net.Uri;
import android.content.Context;
import android.content.ContentProviderOperation;
import com.android.launcher3.LauncherSettings$Favorites;
import java.net.URISyntaxException;
import android.content.Intent;
import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import com.android.launcher3.util.LongArrayMap;
import java.util.HashSet;
import com.android.launcher3.AutoInstallsLayout$LayoutParserCallback;

class ImportDataTask$HotseatParserCallback implements AutoInstallsLayout$LayoutParserCallback
{
    private final HashSet mExistingApps;
    private final LongArrayMap mExistingItems;
    private final ArrayList mOutOps;
    private final int mRequiredSize;
    private int mStartItemId;
    
    ImportDataTask$HotseatParserCallback(final HashSet mExistingApps, final LongArrayMap mExistingItems, final ArrayList mOutOps, final int mStartItemId, final int mRequiredSize) {
        this.mExistingApps = mExistingApps;
        this.mExistingItems = mExistingItems;
        this.mOutOps = mOutOps;
        this.mRequiredSize = mRequiredSize;
        this.mStartItemId = mStartItemId;
    }
    
    public long generateNewItemId() {
        return this.mStartItemId++;
    }
    
    public long insertAndCheck(final SQLiteDatabase sqLiteDatabase, final ContentValues contentValues) {
        final long n = 0L;
        if (this.mExistingItems.size() >= this.mRequiredSize) {
            return n;
        }
        final String s = "intent";
        Intent uri;
        String -wrap1;
        try {
            uri = Intent.parseUri(contentValues.getAsString(s), 0);
            -wrap1 = getPackage(uri);
            if (-wrap1 == null || this.mExistingApps.contains(-wrap1)) {
                return n;
            }
        }
        catch (URISyntaxException ex) {
            return n;
        }
        this.mExistingApps.add(-wrap1);
        long n2;
        for (n2 = n; this.mExistingItems.get(n2) != null; ++n2) {}
        this.mExistingItems.put(n2, (Object)uri);
        contentValues.put("screen", n2);
        this.mOutOps.add(ContentProviderOperation.newInsert(LauncherSettings$Favorites.CONTENT_URI).withValues(contentValues).build());
        return n;
    }
}

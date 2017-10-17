// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.provider;

import com.android.launcher3.model.GridSizeMigrationTask;
import com.android.launcher3.LauncherProvider;
import com.android.launcher3.LauncherSettings$WorkspaceScreens;
import android.content.ContentValues;
import android.content.ContentProviderOperation;
import java.util.ArrayList;
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
import android.content.Intent;
import android.net.Uri;
import com.android.launcher3.DefaultLayoutParser$ResolveParser;
import com.android.launcher3.DefaultLayoutParser$UriShortcutParser;
import com.android.launcher3.DefaultLayoutParser$AppShortcutWithUriParser;
import android.util.ArrayMap;
import android.appwidget.AppWidgetHost;
import com.android.launcher3.AutoInstallsLayout$LayoutParserCallback;
import android.content.Context;
import com.android.launcher3.DefaultLayoutParser;

class ImportDataTask$HotseatLayoutParser extends DefaultLayoutParser
{
    public ImportDataTask$HotseatLayoutParser(final Context context, final AutoInstallsLayout$LayoutParserCallback autoInstallsLayout$LayoutParserCallback) {
        super(context, null, autoInstallsLayout$LayoutParserCallback, context.getResources(), getMyHotseatLayoutId(context));
    }
    
    protected ArrayMap getLayoutElementsMap() {
        final ArrayMap arrayMap = new ArrayMap();
        arrayMap.put((Object)"favorite", (Object)new DefaultLayoutParser$AppShortcutWithUriParser(this));
        arrayMap.put((Object)"shortcut", (Object)new DefaultLayoutParser$UriShortcutParser(this, this.mSourceRes));
        arrayMap.put((Object)"resolve", (Object)new DefaultLayoutParser$ResolveParser(this));
        return arrayMap;
    }
}

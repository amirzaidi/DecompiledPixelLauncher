// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.database.Cursor;
import android.os.Handler;
import android.content.Intent;
import android.net.Uri;
import android.content.ContentResolver;
import com.android.launcher3.util.ContentWriter;
import com.android.launcher3.util.ContentWriter$CommitParams;
import android.appwidget.AppWidgetProviderInfo;
import com.android.launcher3.model.LoaderTask;
import android.appwidget.AppWidgetManager;
import android.util.Log;
import com.android.launcher3.provider.RestoreDbTask;
import android.appwidget.AppWidgetHost;
import android.content.BroadcastReceiver$PendingResult;
import android.content.Context;
import android.content.BroadcastReceiver;

public class AppWidgetsRestoredReceiver extends BroadcastReceiver
{
    static void restoreAppWidgetIds(final Context context, final BroadcastReceiver$PendingResult broadcastReceiver$PendingResult, final int[] array, final int[] array2) {
        final int n = 1;
        int i = 0;
        final AppWidgetHost appWidgetHost = new AppWidgetHost(context, 1024);
        if (!RestoreDbTask.isPending(context)) {
            Log.e("AWRestoredReceiver", "Skipping widget ID remap as DB already in use");
            while (i < array2.length) {
                final int n2 = array2[i];
                Log.d("AWRestoredReceiver", "Deleting widgetId: " + n2);
                appWidgetHost.deleteAppWidgetId(n2);
                ++i;
            }
            broadcastReceiver$PendingResult.finish();
            return;
        }
        final ContentResolver contentResolver = context.getContentResolver();
        final AppWidgetManager instance = AppWidgetManager.getInstance(context);
        int j = 0;
    Label_0257_Outer:
        while (j < array.length) {
            Log.i("AWRestoredReceiver", "Widget state restore id " + array[j] + " => " + array2[j]);
            Object o = instance.getAppWidgetInfo(array2[j]);
            int n3 = LoaderTask.isValidProvider((AppWidgetProviderInfo)o) ? 1 : 0;
            Label_0453: {
                if (n3 == 0) {
                    break Label_0453;
                }
                n3 = 4;
                while (true) {
                    final String[] array3 = new String[n];
                    array3[0] = Integer.toString(array[j]);
                    o = new ContentWriter(context, new ContentWriter$CommitParams("appWidgetId=? and (restored & 1) = 1", array3)).put("appWidgetId", Integer.valueOf(array2[j])).put("restored", Integer.valueOf(n3));
                    n3 = ((ContentWriter)o).commit();
                    Label_0440: {
                        if (n3 != 0) {
                            break Label_0440;
                        }
                        final Uri content_URI = LauncherSettings$Favorites.CONTENT_URI;
                        final String[] array4 = new String[n];
                        array4[0] = "appWidgetId";
                        o = contentResolver.query(content_URI, array4, "appWidgetId=?", array3, (String)null);
                        try {
                            if (!((Cursor)o).moveToFirst()) {
                                appWidgetHost.deleteAppWidgetId(array2[j]);
                            }
                            ((Cursor)o).close();
                            n3 = ++j;
                            continue Label_0257_Outer;
                            n3 = 2;
                            continue;
                        }
                        finally {
                            ((Cursor)o).close();
                        }
                    }
                    break;
                }
            }
            break;
        }
        final LauncherAppState instanceNoCreate = LauncherAppState.getInstanceNoCreate();
        if (instanceNoCreate != null) {
            instanceNoCreate.getModel().forceReload();
        }
        broadcastReceiver$PendingResult.finish();
    }
    
    public void onReceive(final Context context, final Intent intent) {
        if ("android.appwidget.action.APPWIDGET_HOST_RESTORED".equals(intent.getAction())) {
            final int intExtra = intent.getIntExtra("hostId", 0);
            Log.d("AWRestoredReceiver", "Widget ID map received for host:" + intExtra);
            if (intExtra != 1024) {
                return;
            }
            final int[] intArrayExtra = intent.getIntArrayExtra("appWidgetOldIds");
            final int[] intArrayExtra2 = intent.getIntArrayExtra("appWidgetIds");
            if (intArrayExtra.length == intArrayExtra2.length) {
                new Handler(LauncherModel.getWorkerLooper()).postAtFrontOfQueue((Runnable)new AppWidgetsRestoredReceiver$1(this, context, this.goAsync(), intArrayExtra, intArrayExtra2));
            }
            else {
                Log.e("AWRestoredReceiver", "Invalid host restored received");
            }
        }
    }
}

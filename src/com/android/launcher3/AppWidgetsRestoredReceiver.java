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
import android.util.Log;
import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetManager;
import android.content.BroadcastReceiver$PendingResult;
import android.content.Context;
import android.content.BroadcastReceiver;

public class AppWidgetsRestoredReceiver extends BroadcastReceiver
{
    static void restoreAppWidgetIds(final Context context, final BroadcastReceiver$PendingResult broadcastReceiver$PendingResult, final int[] array, final int[] array2) {
        final int n = 1;
        final ContentResolver contentResolver = context.getContentResolver();
        final AppWidgetManager instance = AppWidgetManager.getInstance(context);
        final AppWidgetHost appWidgetHost = new AppWidgetHost(context, 1024);
        int i = 0;
    Label_0150_Outer:
        while (i < array.length) {
            Log.i("AWRestoredReceiver", "Widget state restore id " + array[i] + " => " + array2[i]);
            Object o = instance.getAppWidgetInfo(array2[i]);
            int n2 = LauncherModel.isValidProvider((AppWidgetProviderInfo)o) ? 1 : 0;
            Label_0346: {
                if (n2 == 0) {
                    break Label_0346;
                }
                n2 = 4;
                while (true) {
                    final String[] array3 = new String[n];
                    array3[0] = Integer.toString(array[i]);
                    o = new ContentWriter(context, new ContentWriter$CommitParams("appWidgetId=? and (restored & 1) = 1", array3)).put("appWidgetId", Integer.valueOf(array2[i])).put("restored", Integer.valueOf(n2));
                    n2 = ((ContentWriter)o).commit();
                    Label_0333: {
                        if (n2 != 0) {
                            break Label_0333;
                        }
                        final Uri content_URI = LauncherSettings$Favorites.CONTENT_URI;
                        final String[] array4 = new String[n];
                        array4[0] = "appWidgetId";
                        o = contentResolver.query(content_URI, array4, "appWidgetId=?", array3, (String)null);
                        try {
                            if (!((Cursor)o).moveToFirst()) {
                                appWidgetHost.deleteAppWidgetId(array2[i]);
                            }
                            ((Cursor)o).close();
                            n2 = ++i;
                            continue Label_0150_Outer;
                            n2 = 2;
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

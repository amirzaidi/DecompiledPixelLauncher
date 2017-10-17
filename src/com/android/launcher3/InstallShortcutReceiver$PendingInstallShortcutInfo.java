// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.util.PackageManagerHelper;
import java.net.URISyntaxException;
import com.android.launcher3.shortcuts.ShortcutKey;
import java.util.Iterator;
import java.util.ArrayList;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.os.Process;
import com.android.launcher3.compat.LauncherAppsCompat;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import android.content.SharedPreferences;
import android.content.BroadcastReceiver;
import com.android.launcher3.graphics.LauncherIcons;
import com.android.launcher3.util.Provider;
import android.os.Looper;
import android.util.Pair;
import android.os.Parcelable;
import org.json.JSONException;
import android.util.Log;
import android.util.Base64;
import android.content.Intent$ShortcutIconResource;
import android.graphics.Bitmap;
import com.android.launcher3.compat.UserManagerCompat;
import org.json.JSONStringer;
import android.os.UserHandle;
import com.android.launcher3.shortcuts.ShortcutInfoCompat;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherActivityInfo;

class InstallShortcutReceiver$PendingInstallShortcutInfo
{
    final LauncherActivityInfo activityInfo;
    final Intent data;
    final String label;
    final Intent launchIntent;
    final Context mContext;
    final AppWidgetProviderInfo providerInfo;
    final ShortcutInfoCompat shortcutInfo;
    final UserHandle user;
    
    public InstallShortcutReceiver$PendingInstallShortcutInfo(final AppWidgetProviderInfo providerInfo, final int n, final Context mContext) {
        this.activityInfo = null;
        this.shortcutInfo = null;
        this.providerInfo = providerInfo;
        this.data = null;
        this.mContext = mContext;
        this.user = providerInfo.getProfile();
        this.launchIntent = new Intent().setComponent(providerInfo.provider).putExtra("appWidgetId", n);
        this.label = providerInfo.label;
    }
    
    public InstallShortcutReceiver$PendingInstallShortcutInfo(final Intent data, final UserHandle user, final Context mContext) {
        this.activityInfo = null;
        this.shortcutInfo = null;
        this.providerInfo = null;
        this.data = data;
        this.user = user;
        this.mContext = mContext;
        this.launchIntent = (Intent)data.getParcelableExtra("android.intent.extra.shortcut.INTENT");
        this.label = data.getStringExtra("android.intent.extra.shortcut.NAME");
    }
    
    public InstallShortcutReceiver$PendingInstallShortcutInfo(final LauncherActivityInfo activityInfo, final Context mContext) {
        this.activityInfo = activityInfo;
        this.shortcutInfo = null;
        this.providerInfo = null;
        this.data = null;
        this.user = activityInfo.getUser();
        this.mContext = mContext;
        this.launchIntent = AppInfo.makeLaunchIntent(activityInfo);
        this.label = activityInfo.getLabel().toString();
    }
    
    public InstallShortcutReceiver$PendingInstallShortcutInfo(final ShortcutInfoCompat shortcutInfo, final Context mContext) {
        this.activityInfo = null;
        this.shortcutInfo = shortcutInfo;
        this.providerInfo = null;
        this.data = null;
        this.mContext = mContext;
        this.user = shortcutInfo.getUserHandle();
        this.launchIntent = shortcutInfo.makeIntent();
        this.label = shortcutInfo.getShortLabel().toString();
    }
    
    public String encodeToString() {
    Label_0563_Outer:
        while (true) {
            while (true) {
                JSONStringer value4 = null;
                Label_0734: {
                    try {
                        Label_0117: {
                            if (this.activityInfo == null) {
                                break Label_0117;
                            }
                            try {
                                final JSONStringer key = new JSONStringer().object().key("intent.launch");
                                try {
                                    final JSONStringer key2 = key.value((Object)this.launchIntent.toUri(0)).key("isAppShortcut").value(true).key("userHandle");
                                    try {
                                        final Context mContext = this.mContext;
                                        try {
                                            final UserManagerCompat instance = UserManagerCompat.getInstance(mContext);
                                            try {
                                                final JSONStringer value = key2.value(instance.getSerialNumberForUser(this.user));
                                                try {
                                                    final JSONStringer endObject = value.endObject();
                                                    try {
                                                        return endObject.toString();
                                                        try {
                                                            final JSONStringer key3 = new JSONStringer().object().key("intent.launch");
                                                            try {
                                                                final JSONStringer key4 = key3.value((Object)this.launchIntent.toUri(0)).key("isDeepShortcut").value(true).key("userHandle");
                                                                try {
                                                                    final Context mContext2 = this.mContext;
                                                                    try {
                                                                        final UserManagerCompat instance2 = UserManagerCompat.getInstance(mContext2);
                                                                        try {
                                                                            final JSONStringer value2 = key4.value(instance2.getSerialNumberForUser(this.user));
                                                                            try {
                                                                                final JSONStringer endObject2 = value2.endObject();
                                                                                try {
                                                                                    return endObject2.toString();
                                                                                    Label_0234: {
                                                                                        try {
                                                                                            final JSONStringer key5 = new JSONStringer().object().key("intent.launch");
                                                                                            try {
                                                                                                final JSONStringer key6 = key5.value((Object)this.launchIntent.toUri(0)).key("isAppWidget").value(true).key("userHandle");
                                                                                                try {
                                                                                                    final Context mContext3 = this.mContext;
                                                                                                    try {
                                                                                                        final UserManagerCompat instance3 = UserManagerCompat.getInstance(mContext3);
                                                                                                        try {
                                                                                                            final JSONStringer value3 = key6.value(instance3.getSerialNumberForUser(this.user));
                                                                                                            try {
                                                                                                                final JSONStringer endObject3 = value3.endObject();
                                                                                                                try {
                                                                                                                    return endObject3.toString();
                                                                                                                    Label_0351:
                                                                                                                    final Intent launchIntent = this.launchIntent;
                                                                                                                    try {
                                                                                                                        Label_0617: {
                                                                                                                            if (launchIntent.getAction() != null) {
                                                                                                                                break Label_0617;
                                                                                                                            }
                                                                                                                            this.launchIntent.setAction("android.intent.action.VIEW");
                                                                                                                            while (true) {
                                                                                                                                final Context mContext4 = this.mContext;
                                                                                                                                try {
                                                                                                                                    final Intent launchIntent2 = this.launchIntent;
                                                                                                                                    try {
                                                                                                                                        final CharSequence ensureValidName = InstallShortcutReceiver.ensureValidName(mContext4, launchIntent2, this.label);
                                                                                                                                        try {
                                                                                                                                            final String string = ensureValidName.toString();
                                                                                                                                            try {
                                                                                                                                                final Parcelable parcelableExtra = this.data.getParcelableExtra("android.intent.extra.shortcut.ICON");
                                                                                                                                                try {
                                                                                                                                                    final Bitmap bitmap = (Bitmap)parcelableExtra;
                                                                                                                                                    try {
                                                                                                                                                        final Parcelable parcelableExtra2 = this.data.getParcelableExtra("android.intent.extra.shortcut.ICON_RESOURCE");
                                                                                                                                                        try {
                                                                                                                                                            final Intent$ShortcutIconResource intent$ShortcutIconResource = (Intent$ShortcutIconResource)parcelableExtra2;
                                                                                                                                                            try {
                                                                                                                                                                try {
                                                                                                                                                                    final JSONStringer key7 = new JSONStringer().object().key("intent.launch");
                                                                                                                                                                    try {
                                                                                                                                                                        value4 = key7.value((Object)this.launchIntent.toUri(0)).key("name").value((Object)string);
                                                                                                                                                                        if (bitmap == null) {
                                                                                                                                                                            break Label_0734;
                                                                                                                                                                        }
                                                                                                                                                                        final byte[] flattenBitmap = Utilities.flattenBitmap(bitmap);
                                                                                                                                                                        final JSONStringer key8 = value4.key("icon");
                                                                                                                                                                        try {
                                                                                                                                                                            JSONStringer jsonStringer = key8.value((Object)Base64.encodeToString(flattenBitmap, 0, flattenBitmap.length, 0));
                                                                                                                                                                            Label_0607: {
                                                                                                                                                                                if (intent$ShortcutIconResource == null) {
                                                                                                                                                                                    break Label_0607;
                                                                                                                                                                                }
                                                                                                                                                                                final JSONStringer key9 = jsonStringer.key("iconResource");
                                                                                                                                                                                try {
                                                                                                                                                                                    final JSONStringer key10 = key9.value((Object)intent$ShortcutIconResource.resourceName).key("iconResourcePackage");
                                                                                                                                                                                    try {
                                                                                                                                                                                        jsonStringer = key10.value((Object)intent$ShortcutIconResource.packageName);
                                                                                                                                                                                        try {
                                                                                                                                                                                            final JSONStringer endObject4 = jsonStringer.endObject();
                                                                                                                                                                                            try {
                                                                                                                                                                                                return endObject4.toString();
                                                                                                                                                                                                final Intent launchIntent3 = this.launchIntent;
                                                                                                                                                                                                try {
                                                                                                                                                                                                    if (!launchIntent3.getAction().equals("android.intent.action.MAIN")) {
                                                                                                                                                                                                        continue Label_0563_Outer;
                                                                                                                                                                                                    }
                                                                                                                                                                                                    final Intent launchIntent4 = this.launchIntent;
                                                                                                                                                                                                    try {
                                                                                                                                                                                                        if (launchIntent4.getCategories() == null) {
                                                                                                                                                                                                            continue Label_0563_Outer;
                                                                                                                                                                                                        }
                                                                                                                                                                                                        final Intent launchIntent5 = this.launchIntent;
                                                                                                                                                                                                        try {
                                                                                                                                                                                                            if (launchIntent5.getCategories().contains("android.intent.category.LAUNCHER")) {
                                                                                                                                                                                                                this.launchIntent.addFlags(270532608);
                                                                                                                                                                                                                continue Label_0563_Outer;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue Label_0563_Outer;
                                                                                                                                                                                                        }
                                                                                                                                                                                                        catch (JSONException ex) {
                                                                                                                                                                                                            Log.d("InstallShortcutReceiver", "Exception when adding shortcut: " + ex);
                                                                                                                                                                                                            return null;
                                                                                                                                                                                                        }
                                                                                                                                                                                                    }
                                                                                                                                                                                                    catch (JSONException ex2) {}
                                                                                                                                                                                                }
                                                                                                                                                                                                catch (JSONException ex3) {}
                                                                                                                                                                                            }
                                                                                                                                                                                            catch (JSONException ex4) {}
                                                                                                                                                                                        }
                                                                                                                                                                                        catch (JSONException ex5) {}
                                                                                                                                                                                    }
                                                                                                                                                                                    catch (JSONException ex6) {}
                                                                                                                                                                                }
                                                                                                                                                                                catch (JSONException ex7) {}
                                                                                                                                                                            }
                                                                                                                                                                        }
                                                                                                                                                                        catch (JSONException ex8) {}
                                                                                                                                                                    }
                                                                                                                                                                    catch (JSONException ex9) {}
                                                                                                                                                                }
                                                                                                                                                                catch (JSONException ex10) {}
                                                                                                                                                            }
                                                                                                                                                            catch (JSONException ex11) {}
                                                                                                                                                        }
                                                                                                                                                        catch (JSONException ex12) {}
                                                                                                                                                    }
                                                                                                                                                    catch (JSONException ex13) {}
                                                                                                                                                }
                                                                                                                                                catch (JSONException ex14) {}
                                                                                                                                            }
                                                                                                                                            catch (JSONException ex15) {}
                                                                                                                                        }
                                                                                                                                        catch (JSONException ex16) {}
                                                                                                                                    }
                                                                                                                                    catch (JSONException ex17) {}
                                                                                                                                }
                                                                                                                                catch (JSONException ex18) {}
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                    catch (JSONException ex19) {}
                                                                                                                }
                                                                                                                catch (JSONException ex20) {}
                                                                                                            }
                                                                                                            catch (JSONException ex21) {}
                                                                                                        }
                                                                                                        catch (JSONException ex22) {}
                                                                                                    }
                                                                                                    catch (JSONException ex23) {}
                                                                                                }
                                                                                                catch (JSONException ex24) {}
                                                                                            }
                                                                                            catch (JSONException ex25) {}
                                                                                        }
                                                                                        catch (JSONException ex26) {}
                                                                                    }
                                                                                }
                                                                                // iftrue(Label_0351:, this.providerInfo == null)
                                                                                catch (JSONException ex27) {}
                                                                            }
                                                                            catch (JSONException ex28) {}
                                                                        }
                                                                        catch (JSONException ex29) {}
                                                                    }
                                                                    catch (JSONException ex30) {}
                                                                }
                                                                catch (JSONException ex31) {}
                                                            }
                                                            catch (JSONException ex32) {}
                                                        }
                                                        catch (JSONException ex33) {}
                                                    }
                                                    // iftrue(Label_0234:, this.shortcutInfo == null)
                                                    catch (JSONException ex34) {}
                                                }
                                                catch (JSONException ex35) {}
                                            }
                                            catch (JSONException ex36) {}
                                        }
                                        catch (JSONException ex37) {}
                                    }
                                    catch (JSONException ex38) {}
                                }
                                catch (JSONException ex39) {}
                            }
                            catch (JSONException ex40) {}
                        }
                    }
                    catch (JSONException ex41) {}
                }
                JSONStringer jsonStringer = value4;
                continue;
            }
        }
    }
    
    public Pair getItemInfo() {
        if (this.activityInfo != null) {
            final AppInfo appInfo = new AppInfo(this.mContext, this.activityInfo, this.user);
            final LauncherAppState instance = LauncherAppState.getInstance(this.mContext);
            appInfo.title = "";
            appInfo.iconBitmap = instance.getIconCache().getDefaultIcon(this.user);
            final ShortcutInfo shortcut = appInfo.makeShortcut();
            if (Looper.myLooper() == LauncherModel.getWorkerLooper()) {
                instance.getIconCache().getTitleAndIcon(shortcut, this.activityInfo, false);
            }
            else {
                instance.getModel().updateAndBindShortcutInfo(new InstallShortcutReceiver$PendingInstallShortcutInfo$1(this, instance, shortcut));
            }
            return Pair.create((Object)shortcut, (Object)this.activityInfo);
        }
        if (this.shortcutInfo != null) {
            final ShortcutInfo shortcutInfo = new ShortcutInfo(this.shortcutInfo, this.mContext);
            shortcutInfo.iconBitmap = LauncherIcons.createShortcutIcon(this.shortcutInfo, this.mContext);
            return Pair.create((Object)shortcutInfo, (Object)this.shortcutInfo);
        }
        if (this.providerInfo != null) {
            final LauncherAppWidgetProviderInfo fromProviderInfo = LauncherAppWidgetProviderInfo.fromProviderInfo(this.mContext, this.providerInfo);
            final LauncherAppWidgetInfo launcherAppWidgetInfo = new LauncherAppWidgetInfo(this.launchIntent.getIntExtra("appWidgetId", 0), fromProviderInfo.provider);
            final InvariantDeviceProfile idp = LauncherAppState.getIDP(this.mContext);
            launcherAppWidgetInfo.minSpanX = fromProviderInfo.minSpanX;
            launcherAppWidgetInfo.minSpanY = fromProviderInfo.minSpanY;
            launcherAppWidgetInfo.spanX = Math.min(fromProviderInfo.spanX, idp.numColumns);
            launcherAppWidgetInfo.spanY = Math.min(fromProviderInfo.spanY, idp.numRows);
            return Pair.create((Object)launcherAppWidgetInfo, (Object)this.providerInfo);
        }
        return Pair.create((Object)createShortcutInfo(this.data, LauncherAppState.getInstance(this.mContext)), (Object)null);
    }
    
    public boolean isLauncherActivity() {
        return this.activityInfo != null;
    }
}

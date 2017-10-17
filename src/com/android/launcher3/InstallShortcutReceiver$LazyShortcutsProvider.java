// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.util.PackageManagerHelper;
import android.os.UserHandle;
import android.appwidget.AppWidgetProviderInfo;
import com.android.launcher3.shortcuts.ShortcutInfoCompat;
import java.net.URISyntaxException;
import org.json.JSONException;
import com.android.launcher3.shortcuts.ShortcutKey;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.os.Parcelable;
import com.android.launcher3.compat.UserManagerCompat;
import com.android.launcher3.graphics.LauncherIcons;
import android.util.Log;
import android.os.Process;
import android.graphics.Bitmap;
import android.content.Intent$ShortcutIconResource;
import android.content.pm.LauncherActivityInfo;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import android.content.SharedPreferences;
import android.content.Intent;
import android.content.BroadcastReceiver;
import java.util.Iterator;
import android.text.TextUtils;
import com.android.launcher3.compat.LauncherAppsCompat;
import android.util.Pair;
import com.android.launcher3.util.Preconditions;
import java.util.ArrayList;
import android.content.Context;
import com.android.launcher3.util.Provider;

class InstallShortcutReceiver$LazyShortcutsProvider extends Provider
{
    private final Context mContext;
    private final ArrayList mPendingItems;
    
    public InstallShortcutReceiver$LazyShortcutsProvider(final Context mContext, final ArrayList mPendingItems) {
        this.mContext = mContext;
        this.mPendingItems = mPendingItems;
    }
    
    public ArrayList get() {
        Preconditions.assertNonUiThread();
        final ArrayList<Pair> list = new ArrayList<Pair>();
        final LauncherAppsCompat instance = LauncherAppsCompat.getInstance(this.mContext);
        for (final InstallShortcutReceiver$PendingInstallShortcutInfo installShortcutReceiver$PendingInstallShortcutInfo : this.mPendingItems) {
            final String -wrap1 = getIntentPackage(installShortcutReceiver$PendingInstallShortcutInfo.launchIntent);
            if (TextUtils.isEmpty((CharSequence)-wrap1) || !(instance.isPackageEnabledForProfile(-wrap1, installShortcutReceiver$PendingInstallShortcutInfo.user) ^ true)) {
                list.add(installShortcutReceiver$PendingInstallShortcutInfo.getItemInfo());
            }
        }
        return list;
    }
}

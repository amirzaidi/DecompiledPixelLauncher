// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.util.Log;
import java.util.Collections;
import com.android.launcher3.model.PackageItemInfo;
import android.content.pm.ActivityInfo;
import android.text.TextUtils;
import java.util.Set;
import java.util.List;
import java.util.Iterator;
import android.graphics.BitmapFactory;
import android.database.Cursor;
import com.android.launcher3.util.Provider;
import android.content.res.Resources$NotFoundException;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.content.pm.ApplicationInfo;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.graphics.LauncherIcons;
import android.content.pm.PackageManager$NameNotFoundException;
import android.os.Process;
import com.android.launcher3.util.Preconditions;
import android.os.UserHandle;
import android.graphics.Rect;
import android.graphics.Bitmap;
import android.content.ComponentName;
import android.content.ContentValues;
import android.graphics.Bitmap$Config;
import com.android.launcher3.util.Themes;
import android.os.Handler;
import com.android.launcher3.compat.UserManagerCompat;
import android.content.pm.PackageManager;
import android.graphics.Paint;
import android.graphics.BitmapFactory$Options;
import android.graphics.Canvas;
import com.android.launcher3.compat.LauncherAppsCompat;
import android.content.Context;
import android.os.SystemClock;
import android.content.pm.PackageInfo;
import android.content.pm.LauncherActivityInfo;
import java.util.HashSet;
import java.util.HashMap;
import java.util.Stack;

class IconCache$SerializedIconUpdateTask implements Runnable
{
    private final Stack mAppsToAdd;
    private final Stack mAppsToUpdate;
    private final HashMap mPkgInfoMap;
    private final HashSet mUpdatedPackages;
    private final long mUserSerial;
    final /* synthetic */ IconCache this$0;
    
    IconCache$SerializedIconUpdateTask(final IconCache this$0, final long mUserSerial, final HashMap mPkgInfoMap, final Stack mAppsToAdd, final Stack mAppsToUpdate) {
        this.this$0 = this$0;
        this.mUpdatedPackages = new HashSet();
        this.mUserSerial = mUserSerial;
        this.mPkgInfoMap = mPkgInfoMap;
        this.mAppsToAdd = mAppsToAdd;
        this.mAppsToUpdate = mAppsToUpdate;
    }
    
    public void run() {
        if (!this.mAppsToUpdate.isEmpty()) {
            final LauncherActivityInfo launcherActivityInfo = this.mAppsToUpdate.pop();
            final String packageName = launcherActivityInfo.getComponentName().getPackageName();
            this.this$0.addIconToDBAndMemCache(launcherActivityInfo, (PackageInfo)this.mPkgInfoMap.get(packageName), this.mUserSerial, true);
            this.mUpdatedPackages.add(packageName);
            if (this.mAppsToUpdate.isEmpty() && (this.mUpdatedPackages.isEmpty() ^ true)) {
                LauncherAppState.getInstance(this.this$0.mContext).getModel().onPackageIconsUpdated(this.mUpdatedPackages, this.this$0.mUserManager.getUserForSerialNumber(this.mUserSerial));
            }
            this.scheduleNext();
        }
        else if (!this.mAppsToAdd.isEmpty()) {
            final LauncherActivityInfo launcherActivityInfo2 = this.mAppsToAdd.pop();
            final PackageInfo packageInfo = this.mPkgInfoMap.get(launcherActivityInfo2.getComponentName().getPackageName());
            if (packageInfo != null) {
                this.this$0.addIconToDBAndMemCache(launcherActivityInfo2, packageInfo, this.mUserSerial, false);
            }
            if (!this.mAppsToAdd.isEmpty()) {
                this.scheduleNext();
            }
        }
    }
    
    public void scheduleNext() {
        this.this$0.mWorkerHandler.postAtTime((Runnable)this, IconCache.ICON_UPDATE_TOKEN, SystemClock.uptimeMillis() + 1L);
    }
}

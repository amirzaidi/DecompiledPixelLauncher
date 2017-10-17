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
import java.util.HashSet;
import android.graphics.BitmapFactory;
import android.database.Cursor;
import android.content.res.Resources$NotFoundException;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.content.pm.ApplicationInfo;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.graphics.LauncherIcons;
import android.content.pm.PackageManager$NameNotFoundException;
import android.os.Process;
import com.android.launcher3.util.Preconditions;
import android.graphics.Bitmap;
import android.content.pm.PackageInfo;
import android.content.ComponentName;
import android.content.ContentValues;
import android.graphics.Bitmap$Config;
import android.os.Handler;
import com.android.launcher3.compat.UserManagerCompat;
import android.content.pm.PackageManager;
import android.graphics.BitmapFactory$Options;
import com.android.launcher3.compat.LauncherAppsCompat;
import android.content.Context;
import java.util.HashMap;
import android.content.pm.LauncherActivityInfo;
import android.os.UserHandle;
import android.content.Intent;
import com.android.launcher3.util.Provider;

class IconCache$ActivityInfoProvider extends Provider
{
    private final Intent mIntent;
    private final UserHandle mUser;
    final /* synthetic */ IconCache this$0;
    
    public IconCache$ActivityInfoProvider(final IconCache this$0, final Intent mIntent, final UserHandle mUser) {
        this.this$0 = this$0;
        this.mIntent = mIntent;
        this.mUser = mUser;
    }
    
    public LauncherActivityInfo get() {
        return this.this$0.mLauncherApps.resolveActivity(this.mIntent, this.mUser);
    }
}

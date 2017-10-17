// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.search;

import java.util.concurrent.TimeoutException;
import java.util.concurrent.ExecutionException;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import com.android.launcher3.LauncherModel$ModelUpdateTask;
import java.io.FileNotFoundException;
import android.os.ParcelFileDescriptor;
import com.android.launcher3.LauncherModel;
import android.content.ContentValues;
import java.util.concurrent.Future;
import android.os.Parcelable;
import android.util.Log;
import android.os.Looper;
import android.os.Bundle;
import android.database.MatrixCursor$RowBuilder;
import java.util.Iterator;
import android.database.MatrixCursor;
import android.database.Cursor;
import java.util.List;
import android.net.Uri$Builder;
import com.android.launcher3.AppInfo;
import com.android.launcher3.compat.UserManagerCompat;
import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.util.LooperExecutor;
import android.content.ContentProvider$PipeDataWriter;
import android.content.ContentProvider;
import com.android.launcher3.ItemInfoWithIcon;
import android.graphics.Bitmap;
import com.android.launcher3.util.ComponentKey;
import java.util.concurrent.Callable;

class g implements Callable
{
    final ComponentKey eO;
    final /* synthetic */ AppSearchProvider eP;
    
    public g(final AppSearchProvider ep, final ComponentKey eo) {
        this.eP = ep;
        this.eO = eo;
    }
    
    public Bitmap call() {
        final d d = new d(this.eO);
        this.eP.mApp.getIconCache().getTitleAndIcon(d, false);
        return d.iconBitmap;
    }
}

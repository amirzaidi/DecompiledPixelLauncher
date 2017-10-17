// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import android.app.job.JobInfo$Builder;
import android.content.ComponentName;
import android.app.job.JobScheduler;
import java.util.Iterator;
import android.os.ParcelFileDescriptor;
import android.graphics.drawable.Drawable;
import android.app.WallpaperInfo;
import android.content.Intent;
import java.util.Comparator;
import java.util.List;
import java.util.Collections;
import android.util.Pair;
import android.support.v7.a.d;
import java.util.ArrayList;
import android.support.v7.a.a;
import android.graphics.Canvas;
import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.util.Log;
import java.io.IOException;
import android.graphics.Rect;
import android.graphics.BitmapFactory$Options;
import android.graphics.BitmapRegionDecoder;
import com.android.launcher3.Utilities;
import android.app.WallpaperManager;
import android.content.Context;
import android.app.job.JobParameters;
import android.os.HandlerThread;
import android.os.Handler;
import android.app.job.JobService;

public class WallpaperManagerCompatVL$ColorExtractionService extends JobService implements Runnable
{
    private static final int MAX_WALLPAPER_EXTRACTION_AREA = 12544;
    private Handler mWorkerHandler;
    private HandlerThread mWorkerThread;
    
    public void onCreate() {
        super.onCreate();
        (this.mWorkerThread = new HandlerThread("ColorExtractionService")).start();
        this.mWorkerHandler = new Handler(this.mWorkerThread.getLooper());
    }
    
    public void onDestroy() {
        super.onDestroy();
        this.mWorkerThread.quit();
    }
    
    public boolean onStartJob(final JobParameters jobParameters) {
        this.mWorkerHandler.post((Runnable)this);
        return true;
    }
    
    public boolean onStopJob(final JobParameters jobParameters) {
        this.mWorkerHandler.removeCallbacksAndMessages((Object)null);
        return true;
    }
    
    public void run() {
        final int -wrap0 = getWallpaperId((Context)this);
        Object o = null;
        final WallpaperManager instance = WallpaperManager.getInstance((Context)this);
        final WallpaperInfo wallpaperInfo = instance.getWallpaperInfo();
        String string2 = null;
        Label_0848: {
            final StringBuilder sb;
            final ArrayList<Object> list;
            Label_0740: {
                Object bitmap = null;
                Label_0057: {
                    if (wallpaperInfo != null) {
                        final Drawable loadThumbnail = wallpaperInfo.loadThumbnail(this.getPackageManager());
                        bitmap = null;
                        o = loadThumbnail;
                    }
                    else {
                        Label_0896: {
                            Label_0647: {
                                if (!Utilities.ATLEAST_NOUGAT) {
                                    break Label_0647;
                                }
                                final Object o2 = null;
                                Object wallpaperFile = null;
                                final int n = 1;
                                final WallpaperManager wallpaperManager = instance;
                                try {
                                    wallpaperFile = wallpaperManager.getWallpaperFile(n);
                                    final BitmapRegionDecoder instance2 = BitmapRegionDecoder.newInstance(((ParcelFileDescriptor)wallpaperFile).getFileDescriptor(), false);
                                    final int n2 = instance2.getWidth() * instance2.getHeight();
                                    final BitmapFactory$Options bitmapFactory$Options = new BitmapFactory$Options();
                                    if (n2 > 12544) {
                                        bitmapFactory$Options.inSampleSize = (int)Math.pow(2.0, Math.floor(Math.log(n2 / 12544.0) / (Math.log(2.0) * 2.0)));
                                    }
                                    o = instance2.decodeRegion(new Rect(0, 0, instance2.getWidth(), instance2.getHeight()), bitmapFactory$Options);
                                    instance2.recycle();
                                    Label_0615: {
                                        if (wallpaperFile == null) {
                                            break Label_0615;
                                        }
                                        try {
                                            ((ParcelFileDescriptor)wallpaperFile).close();
                                            if (o2 != null) {
                                                ParcelFileDescriptor parcelFileDescriptor;
                                                try {
                                                    throw o2;
                                                }
                                                catch (IOException | NullPointerException ex) {
                                                    final Bitmap bitmap2;
                                                    bitmap = bitmap2;
                                                    parcelFileDescriptor = (ParcelFileDescriptor)o;
                                                }
                                                wallpaperFile = "WMCompatVL";
                                                Log.e((String)wallpaperFile, "Fetching partial bitmap failed, trying old method", (Throwable)bitmap);
                                                o = parcelFileDescriptor;
                                            }
                                            if (o == null) {
                                                o = instance.getDrawable();
                                                break Label_0057;
                                            }
                                            break Label_0896;
                                        }
                                        finally {}
                                    }
                                }
                                finally {
                                    try {}
                                    finally {
                                        final ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor)o;
                                        final String s;
                                        o = s;
                                        final Bitmap bitmap3;
                                        bitmap = bitmap3;
                                        while (true) {
                                            if (wallpaperFile == null) {
                                                break Label_0699;
                                            }
                                            try {
                                                ((ParcelFileDescriptor)wallpaperFile).close();
                                                if (o != null) {}
                                            }
                                            finally {
                                                if (o == null) {
                                                    o = wallpaperFile;
                                                    continue;
                                                }
                                                if (o != wallpaperFile) {
                                                    ((Throwable)o).addSuppressed((Throwable)wallpaperFile);
                                                }
                                                continue;
                                            }
                                            break;
                                        }
                                    }
                                }
                            }
                            break Label_0740;
                        }
                        bitmap = o;
                        o = null;
                    }
                }
                if (o != null) {
                    final int n3 = ((Drawable)o).getIntrinsicWidth() * ((Drawable)o).getIntrinsicHeight();
                    double sqrt = 1.0;
                    if (n3 > 12544) {
                        sqrt = Math.sqrt(12544.0 / n3);
                    }
                    bitmap = Bitmap.createBitmap((int)(((Drawable)o).getIntrinsicWidth() * sqrt), (int)(sqrt * ((Drawable)o).getIntrinsicHeight()), Bitmap$Config.ARGB_8888);
                    final Canvas canvas = new Canvas((Bitmap)bitmap);
                    ((Drawable)o).setBounds(0, 0, ((Bitmap)bitmap).getWidth(), ((Bitmap)bitmap).getHeight());
                    ((Drawable)o).draw(canvas);
                }
                final String string = "1," + -wrap0;
                if (bitmap == null) {
                    string2 = string;
                    break Label_0848;
                }
                final a adH = a.adu((Bitmap)bitmap).adH();
                ((Bitmap)bitmap).recycle();
                sb = new StringBuilder(string);
                list = new ArrayList<Object>();
                for (final d d : adH.adr()) {
                    list.add(new Pair((Object)d.adM(), (Object)d.adK()));
                }
            }
            Collections.sort(list, new WallpaperManagerCompatVL$ColorExtractionService$1(this));
            for (int i = 0; i < Math.min(3, list.size()); ++i) {
                sb.append(',').append(list.get(i).first);
            }
            string2 = sb.toString();
        }
        this.sendBroadcast(new Intent("com.android.launcher3.compat.WallpaperManagerCompatVL.EXTRACTION_COMPLETE").setPackage(this.getPackageName()).putExtra("wallpaper_parsed_colors", string2));
    }
}

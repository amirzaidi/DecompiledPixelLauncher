// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.content.ContentValues;
import java.util.Iterator;
import android.database.SQLException;
import java.util.HashSet;
import com.android.launcher3.util.ComponentKey;
import android.util.LongSparseArray;
import com.android.launcher3.util.Preconditions;
import com.android.launcher3.util.PackageUserKey;
import java.util.ArrayList;
import android.os.CancellationSignal;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.res.Resources$NotFoundException;
import android.graphics.Xfermode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Paint$Style;
import android.util.Log;
import android.os.UserHandle;
import java.util.concurrent.Future;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Callable;
import android.graphics.drawable.Drawable;
import android.graphics.Rect;
import com.android.launcher3.graphics.LauncherIcons;
import android.graphics.PorterDuff$Mode;
import com.android.launcher3.compat.ShortcutConfigActivityInfo;
import android.content.res.Resources;
import android.support.v4.b.a;
import android.graphics.RectF;
import android.graphics.Paint;
import android.graphics.Canvas;
import java.util.Map;
import java.util.Collections;
import java.util.WeakHashMap;
import android.os.Handler;
import com.android.launcher3.compat.AppWidgetManagerCompat;
import com.android.launcher3.compat.UserManagerCompat;
import java.util.Set;
import java.util.HashMap;
import android.content.Context;
import android.graphics.Bitmap$Config;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.widget.WidgetCell;
import android.graphics.Bitmap;
import android.os.CancellationSignal$OnCancelListener;
import android.os.AsyncTask;

public class WidgetPreviewLoader$PreviewLoadTask extends AsyncTask implements CancellationSignal$OnCancelListener
{
    private final BaseActivity mActivity;
    private final boolean mAnimatePreviewIn;
    Bitmap mBitmapToRecycle;
    private final WidgetCell mCaller;
    private final WidgetItem mInfo;
    final WidgetPreviewLoader$WidgetCacheKey mKey;
    private final int mPreviewHeight;
    private final int mPreviewWidth;
    long[] mVersions;
    final /* synthetic */ WidgetPreviewLoader this$0;
    
    WidgetPreviewLoader$PreviewLoadTask(final WidgetPreviewLoader this$0, final WidgetPreviewLoader$WidgetCacheKey mKey, final WidgetItem mInfo, final int mPreviewWidth, final int mPreviewHeight, final WidgetCell mCaller, final boolean mAnimatePreviewIn) {
        this.this$0 = this$0;
        this.mKey = mKey;
        this.mInfo = mInfo;
        this.mPreviewHeight = mPreviewHeight;
        this.mPreviewWidth = mPreviewWidth;
        this.mCaller = mCaller;
        this.mAnimatePreviewIn = mAnimatePreviewIn;
        this.mActivity = BaseActivity.fromContext(this.mCaller.getContext());
    }
    
    protected Bitmap doInBackground(final Void... array) {
        long[] packageVersion = null;
        if (this.isCancelled()) {
            return null;
        }
        Object o;
        while (true) {
            final WidgetPreviewLoader this$0 = this.this$0;
            while (true) {
                Label_0375: {
                    while (true) {
                        Label_0368: {
                            synchronized (this$0.mUnusedBitmaps) {
                                o = this.this$0.mUnusedBitmaps.iterator();
                                Bitmap bitmap = null;
                                Block_12: {
                                    while (((Iterator)o).hasNext()) {
                                        bitmap = ((Iterator<Bitmap>)o).next();
                                        if (bitmap != null && bitmap.isMutable() && bitmap.getWidth() == this.mPreviewWidth && bitmap.getHeight() == this.mPreviewHeight) {
                                            break Block_12;
                                        }
                                    }
                                    break Label_0375;
                                }
                                o = this.this$0;
                                o = ((WidgetPreviewLoader)o).mUnusedBitmaps;
                                ((Set)o).remove(bitmap);
                                // monitorexit(this$0.mUnusedBitmaps)
                                if (bitmap != null) {
                                    break Label_0368;
                                }
                                final int mPreviewWidth = this.mPreviewWidth;
                                final int mPreviewHeight = this.mPreviewHeight;
                                o = Bitmap$Config.ARGB_8888;
                                o = Bitmap.createBitmap(mPreviewWidth, mPreviewHeight, (Bitmap$Config)o);
                                if (this.isCancelled()) {
                                    return (Bitmap)o;
                                }
                            }
                            break;
                        }
                        final Bitmap$Config bitmap$Config;
                        o = bitmap$Config;
                        continue;
                    }
                }
                Bitmap bitmap = null;
                continue;
            }
        }
        Bitmap bitmap2 = this.this$0.readFromDb(this.mKey, (Bitmap)o, this);
        if (!this.isCancelled() && bitmap2 == null) {
            if (this.mInfo.activityInfo == null || this.mInfo.activityInfo.isPersistable()) {
                packageVersion = this.this$0.getPackageVersion(this.mKey.componentName.getPackageName());
            }
            this.mVersions = packageVersion;
            bitmap2 = this.this$0.generatePreview(this.mActivity, this.mInfo, (Bitmap)o, this.mPreviewWidth, this.mPreviewHeight);
        }
        return bitmap2;
    }
    
    public void onCancel() {
        this.cancel(true);
        if (this.mBitmapToRecycle != null) {
            this.this$0.mWorkerHandler.post((Runnable)new WidgetPreviewLoader$PreviewLoadTask$3(this));
        }
    }
    
    protected void onCancelled(final Bitmap bitmap) {
        if (bitmap != null) {
            this.this$0.mWorkerHandler.post((Runnable)new WidgetPreviewLoader$PreviewLoadTask$2(this, bitmap));
        }
    }
    
    protected void onPostExecute(final Bitmap mBitmapToRecycle) {
        this.mCaller.applyPreview(mBitmapToRecycle, this.mAnimatePreviewIn);
        if (this.mVersions != null) {
            this.this$0.mWorkerHandler.post((Runnable)new WidgetPreviewLoader$PreviewLoadTask$1(this, mBitmapToRecycle));
        }
        else {
            this.mBitmapToRecycle = mBitmapToRecycle;
        }
    }
}

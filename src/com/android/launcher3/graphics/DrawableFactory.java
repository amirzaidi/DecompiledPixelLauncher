// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import com.android.launcher3.ItemInfo;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.Bitmap$Config;
import android.util.Log;
import android.graphics.Bitmap;
import com.android.launcher3.FastBitmapDrawable;
import android.graphics.drawable.Drawable;
import com.android.launcher3.allapps.AllAppsBackgroundDrawable;
import com.android.launcher3.Utilities;
import android.content.Context;
import android.os.Process;
import android.util.ArrayMap;
import android.graphics.Path;
import android.os.UserHandle;

public class DrawableFactory
{
    private static final Object LOCK;
    private static DrawableFactory sInstance;
    protected final UserHandle mMyUser;
    private Path mPreloadProgressPath;
    protected final ArrayMap mUserBadges;
    
    static {
        LOCK = new Object();
    }
    
    public DrawableFactory() {
        this.mMyUser = Process.myUserHandle();
        this.mUserBadges = new ArrayMap();
    }
    
    public static DrawableFactory get(final Context context) {
        synchronized (DrawableFactory.LOCK) {
            if (DrawableFactory.sInstance == null) {
                DrawableFactory.sInstance = (DrawableFactory)Utilities.getOverrideObject(DrawableFactory.class, context.getApplicationContext(), 2131492890);
            }
            return DrawableFactory.sInstance;
        }
    }
    
    public AllAppsBackgroundDrawable getAllAppsBackground(final Context context) {
        return new AllAppsBackgroundDrawable(context);
    }
    
    public Drawable getBadgeForUser(final UserHandle userHandle, final Context context) {
        if (this.mMyUser.equals((Object)userHandle)) {
            return null;
        }
        final Bitmap userBadge = this.getUserBadge(userHandle, context);
        final FastBitmapDrawable fastBitmapDrawable = new FastBitmapDrawable(userBadge);
        fastBitmapDrawable.setFilterBitmap(true);
        fastBitmapDrawable.setBounds(0, 0, userBadge.getWidth(), userBadge.getHeight());
        return fastBitmapDrawable;
    }
    
    protected Path getPreloadProgressPath(final Context context) {
        final float n = 100.0f;
        if (Utilities.isAtLeastO()) {
            final int n2 = 2130837504;
            try {
                final Drawable drawable = context.getDrawable(n2);
                drawable.setBounds(0, 0, 100, 100);
                final Object invoke = drawable.getClass().getMethod("getIconMask", (Class[])new Class[0]).invoke(drawable, new Object[0]);
                try {
                    return (Path)invoke;
                }
                catch (Exception ex) {
                    Log.e("DrawableFactory", "Error loading mask icon", (Throwable)ex);
                }
            }
            catch (Exception ex2) {}
        }
        final Path path = new Path();
        path.moveTo(50.0f, 0.0f);
        path.addArc(0.0f, 0.0f, n, n, -90.0f, 360.0f);
        return path;
    }
    
    protected Bitmap getUserBadge(final UserHandle userHandle, final Context context) {
        synchronized (this) {
            final Bitmap bitmap = (Bitmap)this.mUserBadges.get((Object)userHandle);
            if (bitmap != null) {
                return bitmap;
            }
            final Resources resources = context.getApplicationContext().getResources();
            final int dimensionPixelSize = resources.getDimensionPixelSize(2131427434);
            final Bitmap bitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap$Config.ARGB_8888);
            final Drawable userBadgedDrawableForDensity = context.getPackageManager().getUserBadgedDrawableForDensity((Drawable)new BitmapDrawable(resources, bitmap2), userHandle, new Rect(0, 0, dimensionPixelSize, dimensionPixelSize), 0);
            Bitmap bitmap3;
            if (userBadgedDrawableForDensity instanceof BitmapDrawable) {
                bitmap3 = ((BitmapDrawable)userBadgedDrawableForDensity).getBitmap();
            }
            else {
                bitmap2.eraseColor(0);
                final Canvas canvas = new Canvas(bitmap2);
                userBadgedDrawableForDensity.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                userBadgedDrawableForDensity.draw(canvas);
                canvas.setBitmap((Bitmap)null);
                bitmap3 = bitmap2;
            }
            this.mUserBadges.put((Object)userHandle, (Object)bitmap3);
            return bitmap3;
        }
    }
    
    public FastBitmapDrawable newIcon(final Bitmap bitmap, final ItemInfo itemInfo) {
        return new FastBitmapDrawable(bitmap);
    }
    
    public PreloadIconDrawable newPendingIcon(final Bitmap bitmap, final Context context) {
        if (this.mPreloadProgressPath == null) {
            this.mPreloadProgressPath = this.getPreloadProgressPath(context);
        }
        return new PreloadIconDrawable(bitmap, this.mPreloadProgressPath, context);
    }
}

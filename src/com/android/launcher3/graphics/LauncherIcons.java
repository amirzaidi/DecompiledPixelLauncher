// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import android.content.ComponentName;
import com.android.launcher3.model.PackageItemInfo;
import com.android.launcher3.ItemInfoWithIcon;
import android.content.Intent;
import com.android.launcher3.AppInfo;
import com.android.launcher3.IconCache;
import com.android.launcher3.shortcuts.DeepShortcutManager;
import com.android.launcher3.util.Provider;
import com.android.launcher3.shortcuts.ShortcutInfoCompat;
import android.graphics.Bitmap$Config;
import android.graphics.drawable.PaintDrawable;
import com.android.launcher3.InvariantDeviceProfile;
import android.content.res.Resources;
import android.content.pm.PackageManager;
import com.android.launcher3.LauncherAppState;
import android.content.Intent$ShortcutIconResource;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.AdaptiveIconDrawable;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.os.UserHandle;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.DrawFilter;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Rect;
import android.graphics.Canvas;

public class LauncherIcons
{
    private static final Canvas sCanvas;
    private static final Rect sOldBounds;
    
    static {
        sOldBounds = new Rect();
        (sCanvas = new Canvas()).setDrawFilter((DrawFilter)new PaintFlagsDrawFilter(4, 2));
    }
    
    public static Bitmap addShadowToIcon(final Bitmap bitmap, final Context context) {
        return ShadowGenerator.getInstance(context).recreateIcon(bitmap);
    }
    
    public static Bitmap badgeIconForUser(final Bitmap bitmap, final UserHandle userHandle, final Context context) {
        if (userHandle == null || !(Process.myUserHandle().equals((Object)userHandle) ^ true)) {
            return bitmap;
        }
        final Drawable userBadgedIcon = context.getPackageManager().getUserBadgedIcon((Drawable)new LauncherIcons$FixedSizeBitmapDrawable(bitmap), userHandle);
        if (userBadgedIcon instanceof BitmapDrawable) {
            return ((BitmapDrawable)userBadgedIcon).getBitmap();
        }
        return createIconBitmap(userBadgedIcon, context);
    }
    
    public static Bitmap badgeWithBitmap(final Bitmap bitmap, final Bitmap bitmap2, final Context context) {
        final int dimensionPixelSize = context.getResources().getDimensionPixelSize(2131427434);
        synchronized (LauncherIcons.sCanvas) {
            LauncherIcons.sCanvas.setBitmap(bitmap);
            LauncherIcons.sCanvas.drawBitmap(bitmap2, new Rect(0, 0, bitmap2.getWidth(), bitmap2.getHeight()), new Rect(bitmap.getWidth() - dimensionPixelSize, bitmap.getHeight() - dimensionPixelSize, bitmap.getWidth(), bitmap.getHeight()), new Paint(2));
            LauncherIcons.sCanvas.setBitmap((Bitmap)null);
            return bitmap;
        }
    }
    
    public static Bitmap createBadgedIconBitmap(Drawable drawable, final UserHandle userHandle, final Context context, final int n) {
        final int n2 = 1;
        float n3 = 1.0f;
        if (!FeatureFlags.LAUNCHER3_DISABLE_ICON_NORMALIZATION) {
            final IconNormalizer instance = IconNormalizer.getInstance(context);
            if (Utilities.isAtLeastO() && n >= 26) {
                final boolean[] array = new boolean[n2];
                final AdaptiveIconDrawable adaptiveIconDrawable = (AdaptiveIconDrawable)context.getDrawable(2130837504).mutate();
                adaptiveIconDrawable.setBounds(0, 0, n2, n2);
                n3 = instance.getScale(drawable, null, adaptiveIconDrawable.getIconMask(), array);
                if (array[0] ^ true) {
                    final Drawable wrapToAdaptiveIconDrawable = wrapToAdaptiveIconDrawable(context, drawable, n3);
                    if (wrapToAdaptiveIconDrawable != drawable) {
                        n3 = instance.getScale(wrapToAdaptiveIconDrawable, null, null, null);
                        drawable = wrapToAdaptiveIconDrawable;
                    }
                }
            }
            else {
                n3 = instance.getScale(drawable, null, null, null);
            }
        }
        Bitmap bitmap = createIconBitmap(drawable, context, n3);
        if (Utilities.isAtLeastO() && drawable instanceof AdaptiveIconDrawable) {
            bitmap = ShadowGenerator.getInstance(context).recreateIcon(bitmap);
        }
        return badgeIconForUser(bitmap, userHandle, context);
    }
    
    public static Bitmap createIconBitmap(final Intent$ShortcutIconResource intent$ShortcutIconResource, final Context context) {
        final PackageManager packageManager = context.getPackageManager();
        try {
            final Resources resourcesForApplication = packageManager.getResourcesForApplication(intent$ShortcutIconResource.packageName);
            if (resourcesForApplication != null) {
                final int identifier = resourcesForApplication.getIdentifier(intent$ShortcutIconResource.resourceName, (String)null, (String)null);
                try {
                    final InvariantDeviceProfile idp = LauncherAppState.getIDP(context);
                    try {
                        return createIconBitmap(resourcesForApplication.getDrawableForDensity(identifier, idp.fillResIconDpi), context);
                    }
                    catch (Exception ex) {}
                }
                catch (Exception ex2) {}
            }
        }
        catch (Exception ex3) {}
        return null;
    }
    
    public static Bitmap createIconBitmap(final Bitmap bitmap, final Context context) {
        final int iconBitmapSize = LauncherAppState.getIDP(context).iconBitmapSize;
        if (iconBitmapSize == bitmap.getWidth() && iconBitmapSize == bitmap.getHeight()) {
            return bitmap;
        }
        return createIconBitmap((Drawable)new BitmapDrawable(context.getResources(), bitmap), context);
    }
    
    public static Bitmap createIconBitmap(final Drawable drawable, final Context context) {
        float scaleForBounds = 1.0f;
        if (Utilities.isAtLeastO() && drawable instanceof AdaptiveIconDrawable) {
            scaleForBounds = ShadowGenerator.getScaleForBounds(new RectF(0.0f, 0.0f, 0.0f, 0.0f));
        }
        Bitmap bitmap = createIconBitmap(drawable, context, scaleForBounds);
        if (Utilities.isAtLeastO() && drawable instanceof AdaptiveIconDrawable) {
            bitmap = ShadowGenerator.getInstance(context).recreateIcon(bitmap);
        }
        return bitmap;
    }
    
    public static Bitmap createIconBitmap(final Drawable drawable, final Context context, final float n) {
    Label_0286_Outer:
        while (true) {
            while (true) {
                int n2 = 0;
                int n3 = 0;
                int n5 = 0;
                int n6 = 0;
            Label_0498:
                while (true) {
                    int iconBitmapSize = 0;
                    float n4 = 0.0f;
                    Label_0471: {
                        synchronized (LauncherIcons.sCanvas) {
                            iconBitmapSize = LauncherAppState.getIDP(context).iconBitmapSize;
                            n2 = ((drawable instanceof PaintDrawable) ? 1 : 0);
                            if (n2 != 0) {
                                final PaintDrawable paintDrawable = (PaintDrawable)drawable;
                                paintDrawable.setIntrinsicWidth(iconBitmapSize);
                                paintDrawable.setIntrinsicHeight(iconBitmapSize);
                            }
                            else {
                                n2 = ((drawable instanceof BitmapDrawable) ? 1 : 0);
                                if (n2 != 0) {
                                    final BitmapDrawable bitmapDrawable = (BitmapDrawable)drawable;
                                    final Bitmap bitmap = bitmapDrawable.getBitmap();
                                    if (bitmap != null) {
                                        n3 = bitmap.getDensity();
                                        if (n3 == 0) {
                                            bitmapDrawable.setTargetDensity(context.getResources().getDisplayMetrics());
                                        }
                                    }
                                }
                            }
                            n2 = drawable.getIntrinsicWidth();
                            n3 = drawable.getIntrinsicHeight();
                            if (n2 > 0 && n3 > 0) {
                                n4 = n2;
                                n4 /= n3;
                                if (n2 <= n3) {
                                    break Label_0471;
                                }
                                n2 = (int)(iconBitmapSize / n4);
                                n3 = iconBitmapSize;
                                Object bitmap2 = Bitmap$Config.ARGB_8888;
                                bitmap2 = Bitmap.createBitmap(iconBitmapSize, iconBitmapSize, (Bitmap$Config)bitmap2);
                                final Canvas sCanvas = LauncherIcons.sCanvas;
                                sCanvas.setBitmap((Bitmap)bitmap2);
                                n5 = iconBitmapSize - n3;
                                n5 /= 2;
                                n6 = iconBitmapSize - n2;
                                n6 /= 2;
                                LauncherIcons.sOldBounds.set(drawable.getBounds());
                                if (Utilities.isAtLeastO() && drawable instanceof AdaptiveIconDrawable) {
                                    final int n7 = (int)(iconBitmapSize * 0.010416667f);
                                    n5 = Math.min(n5, n6);
                                    n5 = Math.max(n7, n5);
                                    n2 = Math.max(n3, n2);
                                    drawable.setBounds(n5, n5, n2, n2);
                                    n2 = 1;
                                    sCanvas.save(n2);
                                    n2 = iconBitmapSize / 2;
                                    final float n8 = n2;
                                    iconBitmapSize /= 2;
                                    sCanvas.scale(n, n, n8, (float)iconBitmapSize);
                                    drawable.draw(sCanvas);
                                    sCanvas.restore();
                                    drawable.setBounds(LauncherIcons.sOldBounds);
                                    n2 = 0;
                                    sCanvas.setBitmap((Bitmap)null);
                                    return (Bitmap)bitmap2;
                                }
                                break Label_0498;
                            }
                        }
                        n2 = iconBitmapSize;
                        n3 = iconBitmapSize;
                        continue Label_0286_Outer;
                    }
                    if (n3 > n2) {
                        n3 = (int)(iconBitmapSize * n4);
                        n2 = iconBitmapSize;
                        continue Label_0286_Outer;
                    }
                    n2 = iconBitmapSize;
                    n3 = iconBitmapSize;
                    continue Label_0286_Outer;
                }
                n3 += n5;
                n2 += n6;
                drawable.setBounds(n5, n6, n3, n2);
                continue;
            }
        }
    }
    
    public static Bitmap createScaledBitmapWithoutShadow(Drawable drawable, final Context context, final int n) {
        final int n2 = 1;
        final RectF rectF = new RectF();
        float n3 = 1.0f;
        if (!FeatureFlags.LAUNCHER3_DISABLE_ICON_NORMALIZATION) {
            final IconNormalizer instance = IconNormalizer.getInstance(context);
            if (Utilities.isAtLeastO() && n >= 26) {
                final boolean[] array = new boolean[n2];
                final AdaptiveIconDrawable adaptiveIconDrawable = (AdaptiveIconDrawable)context.getDrawable(2130837504).mutate();
                adaptiveIconDrawable.setBounds(0, 0, n2, n2);
                n3 = instance.getScale(drawable, rectF, adaptiveIconDrawable.getIconMask(), array);
                if (Utilities.isAtLeastO() && (array[0] ^ true)) {
                    final Drawable wrapToAdaptiveIconDrawable = wrapToAdaptiveIconDrawable(context, drawable, n3);
                    if (wrapToAdaptiveIconDrawable != drawable) {
                        n3 = instance.getScale(wrapToAdaptiveIconDrawable, rectF, null, null);
                        drawable = wrapToAdaptiveIconDrawable;
                    }
                }
            }
            else {
                n3 = instance.getScale(drawable, rectF, null, null);
            }
        }
        return createIconBitmap(drawable, context, Math.min(n3, ShadowGenerator.getScaleForBounds(rectF)));
    }
    
    public static Bitmap createShortcutIcon(final ShortcutInfoCompat shortcutInfoCompat, final Context context) {
        return createShortcutIcon(shortcutInfoCompat, context, true);
    }
    
    public static Bitmap createShortcutIcon(final ShortcutInfoCompat shortcutInfoCompat, final Context context, final Bitmap bitmap) {
        return createShortcutIcon(shortcutInfoCompat, context, true, new LauncherIcons$1(bitmap));
    }
    
    public static Bitmap createShortcutIcon(final ShortcutInfoCompat shortcutInfoCompat, final Context context, final boolean b) {
        return createShortcutIcon(shortcutInfoCompat, context, b, null);
    }
    
    public static Bitmap createShortcutIcon(final ShortcutInfoCompat shortcutInfoCompat, final Context context, final boolean b, final Provider provider) {
        Bitmap bitmap = null;
        final LauncherAppState instance = LauncherAppState.getInstance(context);
        final Drawable shortcutIconDrawable = DeepShortcutManager.getInstance(context).getShortcutIconDrawable(shortcutInfoCompat, instance.getInvariantDeviceProfile().fillResIconDpi);
        final IconCache iconCache = instance.getIconCache();
        if (shortcutIconDrawable != null) {
            bitmap = createScaledBitmapWithoutShadow(shortcutIconDrawable, context, 0);
        }
        else {
            if (provider != null) {
                bitmap = (Bitmap)provider.get();
            }
            if (bitmap == null) {
                bitmap = iconCache.getDefaultIcon(Process.myUserHandle());
            }
        }
        if (!b) {
            return bitmap;
        }
        return badgeWithBitmap(addShadowToIcon(bitmap, context), getShortcutInfoBadge(shortcutInfoCompat, iconCache), context);
    }
    
    public static Bitmap getShortcutInfoBadge(final ShortcutInfoCompat shortcutInfoCompat, final IconCache iconCache) {
        final ComponentName activity = shortcutInfoCompat.getActivity();
        Bitmap bitmap;
        if (activity != null) {
            final AppInfo appInfo = new AppInfo();
            appInfo.user = shortcutInfoCompat.getUserHandle();
            appInfo.componentName = activity;
            appInfo.intent = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setComponent(activity);
            iconCache.getTitleAndIcon(appInfo, false);
            bitmap = appInfo.iconBitmap;
        }
        else {
            final PackageItemInfo packageItemInfo = new PackageItemInfo(shortcutInfoCompat.getPackage());
            iconCache.getTitleAndIconForApp(packageItemInfo, false);
            bitmap = packageItemInfo.iconBitmap;
        }
        return bitmap;
    }
    
    static Drawable wrapToAdaptiveIconDrawable(final Context context, final Drawable drawable, final float scale) {
        if (!Utilities.isAtLeastO()) {
            return drawable;
        }
        if (!(drawable instanceof AdaptiveIconDrawable)) {
            final int n = 2130837504;
            try {
                final Drawable drawable2 = context.getDrawable(n);
                try {
                    final Drawable mutate = drawable2.mutate();
                    try {
                        final AdaptiveIconDrawable adaptiveIconDrawable = (AdaptiveIconDrawable)mutate;
                        try {
                            final Drawable foreground = adaptiveIconDrawable.getForeground();
                            try {
                                final FixedScaleDrawable fixedScaleDrawable = (FixedScaleDrawable)foreground;
                                fixedScaleDrawable.setDrawable(drawable);
                                final FixedScaleDrawable fixedScaleDrawable2 = fixedScaleDrawable;
                                try {
                                    fixedScaleDrawable2.setScale(scale);
                                    return (Drawable)adaptiveIconDrawable;
                                }
                                catch (Exception ex) {
                                    return drawable;
                                }
                            }
                            catch (Exception ex2) {}
                        }
                        catch (Exception ex3) {}
                    }
                    catch (Exception ex4) {}
                }
                catch (Exception ex5) {}
            }
            catch (Exception ex6) {}
        }
        return drawable;
    }
}

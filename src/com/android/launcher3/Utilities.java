// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.text.style.TtsSpan$TextBuilder;
import android.text.SpannableString;
import java.util.HashSet;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.graphics.Rect;
import android.util.TypedValue;
import android.app.WallpaperManager;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.ComponentName;
import android.os.PowerManager;
import android.os.Bundle;
import java.util.Collection;
import android.os.DeadObjectException;
import android.os.TransactionTooLargeException;
import android.support.v4.os.a;
import android.content.SharedPreferences;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import android.view.View;
import android.content.res.Resources;
import android.content.Context;
import java.io.OutputStream;
import android.graphics.Bitmap$CompressFormat;
import java.io.ByteArrayOutputStream;
import java.util.Iterator;
import android.content.pm.PackageManager$NameNotFoundException;
import android.util.Log;
import android.content.pm.ResolveInfo;
import android.content.Intent;
import android.util.Pair;
import android.content.pm.PackageManager;
import android.util.SparseArray;
import android.graphics.Color;
import android.graphics.Bitmap;
import android.util.DisplayMetrics;
import android.text.TextUtils;
import java.util.Locale;
import java.io.IOException;
import java.io.Closeable;
import android.graphics.Paint$FontMetrics;
import android.graphics.Paint;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import android.os.Build;
import android.os.Build$VERSION;
import java.util.regex.Pattern;
import android.graphics.Matrix;
import java.util.concurrent.Executor;

public final class Utilities
{
    public static final boolean ATLEAST_LOLLIPOP_MR1;
    public static final boolean ATLEAST_MARSHMALLOW;
    public static final boolean ATLEAST_NOUGAT;
    public static final boolean ATLEAST_NOUGAT_MR1;
    private static final int CORE_POOL_SIZE;
    private static final int CPU_COUNT;
    public static final boolean IS_DEBUG_DEVICE;
    private static final int MAXIMUM_POOL_SIZE;
    public static final Executor THREAD_POOL_EXECUTOR;
    private static final Matrix sInverseMatrix;
    private static final int[] sLoc0;
    private static final int[] sLoc1;
    private static final Matrix sMatrix;
    private static final float[] sPoint;
    private static final Pattern sTrimPattern;
    
    static {
        final int n = 2;
        boolean atleast_LOLLIPOP_MR1 = true;
        sTrimPattern = Pattern.compile("^[\\s|\\p{javaSpaceChar}]*(.*)[\\s|\\p{javaSpaceChar}]*$");
        sLoc0 = new int[n];
        sLoc1 = new int[n];
        sPoint = new float[n];
        sMatrix = new Matrix();
        sInverseMatrix = new Matrix();
        ATLEAST_NOUGAT_MR1 = (Build$VERSION.SDK_INT >= 25 && atleast_LOLLIPOP_MR1);
        ATLEAST_NOUGAT = (Build$VERSION.SDK_INT >= 24 && atleast_LOLLIPOP_MR1);
        ATLEAST_MARSHMALLOW = (Build$VERSION.SDK_INT >= 23 && atleast_LOLLIPOP_MR1);
        if (Build$VERSION.SDK_INT < 22) {
            atleast_LOLLIPOP_MR1 = false;
        }
        ATLEAST_LOLLIPOP_MR1 = atleast_LOLLIPOP_MR1;
        IS_DEBUG_DEVICE = Build.TYPE.toLowerCase().contains("debug");
        CPU_COUNT = Runtime.getRuntime().availableProcessors();
        CORE_POOL_SIZE = Utilities.CPU_COUNT + 1;
        MAXIMUM_POOL_SIZE = Utilities.CPU_COUNT * 2 + 1;
        THREAD_POOL_EXECUTOR = new ThreadPoolExecutor(Utilities.CORE_POOL_SIZE, Utilities.MAXIMUM_POOL_SIZE, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue<Runnable>());
    }
    
    public static float boundToRange(final float n, final float n2, final float n3) {
        return Math.max(n2, Math.min(n, n3));
    }
    
    public static int boundToRange(final int n, final int n2, final int n3) {
        return Math.max(n2, Math.min(n, n3));
    }
    
    public static int calculateTextHeight(final float textSize) {
        final Paint paint = new Paint();
        paint.setTextSize(textSize);
        final Paint$FontMetrics fontMetrics = paint.getFontMetrics();
        return (int)Math.ceil(fontMetrics.bottom - fontMetrics.top);
    }
    
    public static void closeSilently(final Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        }
        catch (IOException ex) {}
    }
    
    public static String createDbSelectionQuery(final String s, final Iterable iterable) {
        return String.format(Locale.ENGLISH, "%s IN (%s)", s, TextUtils.join((CharSequence)", ", iterable));
    }
    
    public static float dpiFromPx(final int n, final DisplayMetrics displayMetrics) {
        return n / (displayMetrics.densityDpi / 160.0f);
    }
    
    public static int findDominantColorByHue(final Bitmap bitmap, final int n) {
        final int height = bitmap.getHeight();
        final int width = bitmap.getWidth();
        final int n2 = (int)Math.sqrt(height * width / n);
        int n3;
        if (n2 < 1) {
            n3 = 1;
        }
        else {
            n3 = n2;
        }
        final float[] array = new float[3];
        final float[] array2 = new float[360];
        float n4 = -1.0f;
        int n5 = -1;
        int n6;
        for (int i = 0; i < height; i += n3, n5 = n6) {
            int j = 0;
            n6 = n5;
            while (j < width) {
                final int pixel = bitmap.getPixel(j, i);
                float n7;
                if ((pixel >> 24 & 0xFF) < 128) {
                    n7 = n4;
                }
                else {
                    Color.colorToHSV(pixel | 0xFF000000, array);
                    final int n8 = (int)array[0];
                    if (n8 < 0 || n8 >= array2.length) {
                        n7 = n4;
                    }
                    else {
                        array2[n8] += array[1] * array[2];
                        if (array2[n8] > n4) {
                            n7 = array2[n8];
                            n6 = n8;
                        }
                        else {
                            n7 = n4;
                        }
                    }
                }
                j += n3;
                n4 = n7;
            }
        }
        final SparseArray sparseArray = new SparseArray();
        int n9 = -16777216;
        float n10 = -1.0f;
        for (int k = 0; k < height; k += n3) {
            int l = 0;
        Label_0561_Outer:
            while (l < width) {
                final int n11 = bitmap.getPixel(l, k) | 0xFF000000;
                Color.colorToHSV(n11, array);
                while (true) {
                    Label_0613: {
                        if ((int)array[0] != n5) {
                            break Label_0613;
                        }
                        final float n12 = array[1];
                        final float n13 = array[2];
                        final int n14 = (int)(100.0f * n12) + (int)(10000.0f * n13);
                        final float n15 = n13 * n12;
                        final Float n16 = (Float)sparseArray.get(n14);
                        float n17;
                        if (n16 == null) {
                            n17 = n15;
                        }
                        else {
                            n17 = n16 + n15;
                        }
                        sparseArray.put(n14, (Object)n17);
                        if (n17 <= n10) {
                            break Label_0613;
                        }
                        final float n18 = n17;
                        final int n19 = n11;
                        l += n3;
                        n9 = n19;
                        n10 = n18;
                        continue Label_0561_Outer;
                    }
                    final int n19 = n9;
                    final float n18 = n10;
                    continue;
                }
            }
        }
        return n9;
    }
    
    static Pair findSystemApk(final String s, final PackageManager packageManager) {
        for (final ResolveInfo resolveInfo : packageManager.queryBroadcastReceivers(new Intent(s), 0)) {
            if (resolveInfo.activityInfo != null && (resolveInfo.activityInfo.applicationInfo.flags & 0x1) != 0x0) {
                final String packageName = resolveInfo.activityInfo.packageName;
                try {
                    return Pair.create((Object)packageName, (Object)packageManager.getResourcesForApplication(packageName));
                }
                catch (PackageManager$NameNotFoundException ex) {
                    Log.w("Launcher.Utilities", "Failed to find resources for " + packageName);
                    continue;
                }
                break;
            }
        }
        return null;
    }
    
    public static byte[] flattenBitmap(final Bitmap bitmap) {
        final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bitmap.getWidth() * bitmap.getHeight() * 4);
        try {
            bitmap.compress(Bitmap$CompressFormat.PNG, 100, (OutputStream)byteArrayOutputStream);
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        }
        catch (IOException ex) {
            Log.w("Launcher.Utilities", "Could not write bitmap");
            return null;
        }
    }
    
    public static boolean getAllowRotationDefaultValue(final Context context) {
        boolean b = false;
        if (Utilities.ATLEAST_NOUGAT) {
            final Resources resources = context.getResources();
            if (resources.getDisplayMetrics().densityDpi * resources.getConfiguration().smallestScreenWidthDp / DisplayMetrics.DENSITY_DEVICE_STABLE >= 600) {
                b = true;
            }
            return b;
        }
        return false;
    }
    
    public static int[] getCenterDeltaInScreenSpace(final View view, final View view2) {
        final float n = 2.0f;
        final int n2 = 1;
        view.getLocationInWindow(Utilities.sLoc0);
        view2.getLocationInWindow(Utilities.sLoc1);
        final int[] sLoc0 = Utilities.sLoc0;
        sLoc0[0] += (int)(view.getMeasuredWidth() * view.getScaleX() / n);
        final int[] sLoc2 = Utilities.sLoc0;
        sLoc2[n2] += (int)(view.getMeasuredHeight() * view.getScaleY() / n);
        final int[] sLoc3 = Utilities.sLoc1;
        sLoc3[0] += (int)(view2.getMeasuredWidth() * view2.getScaleX() / n);
        final int[] sLoc4 = Utilities.sLoc1;
        sLoc4[n2] += (int)(view2.getMeasuredHeight() * view2.getScaleY() / n);
        final int[] array = { Utilities.sLoc1[0] - Utilities.sLoc0[0], 0 };
        array[n2] = Utilities.sLoc1[n2] - Utilities.sLoc0[n2];
        return array;
    }
    
    public static float getDescendantCoordRelativeToAncestor(final View view, final View view2, final int[] array, final boolean b) {
        final int n = 1;
        Utilities.sPoint[0] = array[0];
        Utilities.sPoint[n] = array[n];
        float n2 = 1.0f;
        for (View view3 = view; view3 != view2 && view3 != null; view3 = (View)view3.getParent()) {
            if (view3 != view || b) {
                final float[] sPoint = Utilities.sPoint;
                sPoint[0] -= view3.getScrollX();
                final float[] sPoint2 = Utilities.sPoint;
                sPoint2[n] -= view3.getScrollY();
            }
            view3.getMatrix().mapPoints(Utilities.sPoint);
            final float[] sPoint3 = Utilities.sPoint;
            sPoint3[0] += view3.getLeft();
            final float[] sPoint4 = Utilities.sPoint;
            sPoint4[n] += view3.getTop();
            n2 *= view3.getScaleX();
        }
        array[0] = Math.round(Utilities.sPoint[0]);
        array[n] = Math.round(Utilities.sPoint[n]);
        return n2;
    }
    
    public static Object getOverrideObject(final Class clazz, final Context context, final int n) {
        final String string = context.getString(n);
        if (!TextUtils.isEmpty((CharSequence)string)) {
            try {
                final Class<?> forName = Class.forName(string);
                final Class[] array = { Context.class };
                final Class<?> clazz2 = forName;
                try {
                    final Constructor<?> declaredConstructor = clazz2.getDeclaredConstructor((Class<?>[])array);
                    final Object[] array2 = { context };
                    final Constructor<?> constructor = declaredConstructor;
                    try {
                        return constructor.newInstance(array2);
                    }
                    catch (ClassNotFoundException | InstantiationException | IllegalAccessException | ClassCastException | NoSuchMethodException | InvocationTargetException ex) {
                        final Throwable t;
                        Log.e("Launcher.Utilities", "Bad overriden class", t);
                    }
                }
                catch (ClassNotFoundException ex2) {}
                catch (InstantiationException ex3) {}
                catch (IllegalAccessException ex4) {}
                catch (ClassCastException ex5) {}
                catch (NoSuchMethodException ex6) {}
                catch (InvocationTargetException ex7) {}
            }
            catch (ClassNotFoundException ex8) {}
            catch (InstantiationException ex9) {}
            catch (IllegalAccessException ex10) {}
            catch (ClassCastException ex11) {}
            catch (NoSuchMethodException ex12) {}
            catch (InvocationTargetException ex13) {}
        }
        try {
            return clazz.newInstance();
        }
        catch (InstantiationException | IllegalAccessException ex14) {
            final Object o;
            throw new RuntimeException((Throwable)o);
        }
    }
    
    public static SharedPreferences getPrefs(final Context context) {
        return context.getSharedPreferences("com.android.launcher3.prefs", 0);
    }
    
    public static String getSystemProperty(final String s, final String s2) {
        final String s3 = "android.os.SystemProperties";
        try {
            final Object invoke = Class.forName(s3).getDeclaredMethod("get", String.class).invoke(null, s);
            try {
                final String s4 = (String)invoke;
                try {
                    if (!TextUtils.isEmpty((CharSequence)s4)) {
                        return s4;
                    }
                    return s2;
                }
                catch (Exception ex) {
                    Log.d("Launcher.Utilities", "Unable to read system properties");
                }
            }
            catch (Exception ex2) {}
        }
        catch (Exception ex3) {}
        return s2;
    }
    
    public static boolean isAllowRotationPrefEnabled(final Context context) {
        return getPrefs(context).getBoolean("pref_allowRotation", getAllowRotationDefaultValue(context));
    }
    
    public static boolean isAtLeastO() {
        return a.isAtLeastO();
    }
    
    public static boolean isBinderSizeError(final Exception ex) {
        return ex.getCause() instanceof TransactionTooLargeException || ex.getCause() instanceof DeadObjectException;
    }
    
    public static boolean isBootCompleted() {
        return "1".equals(getSystemProperty("sys.boot_completed", "1"));
    }
    
    public static boolean isEmpty(final Collection collection) {
        return collection == null || collection.isEmpty();
    }
    
    public static boolean isLauncherAppTarget(final Intent intent) {
        boolean empty = true;
        if (intent != null && "android.intent.action.MAIN".equals(intent.getAction()) && intent.getComponent() != null && intent.getCategories() != null && intent.getCategories().size() == (empty ? 1 : 0) && intent.hasCategory("android.intent.category.LAUNCHER") && TextUtils.isEmpty((CharSequence)intent.getDataString())) {
            final Bundle extras = intent.getExtras();
            if (extras != null) {
                empty = extras.keySet().isEmpty();
            }
            return empty;
        }
        return false;
    }
    
    public static boolean isPowerSaverOn(final Context context) {
        return ((PowerManager)context.getSystemService("power")).isPowerSaveMode();
    }
    
    public static boolean isPropertyEnabled(final String s) {
        return Log.isLoggable(s, 2);
    }
    
    public static boolean isRtl(final Resources resources) {
        boolean b = true;
        if (resources.getConfiguration().getLayoutDirection() != (b ? 1 : 0)) {
            b = false;
        }
        return b;
    }
    
    static boolean isSystemApp(final Context context, final Intent intent) {
        boolean b = false;
        String s = null;
        final PackageManager packageManager = context.getPackageManager();
        final ComponentName component = intent.getComponent();
        Label_0127: {
            if (component != null) {
                break Label_0127;
            }
            final ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 65536);
            if (resolveActivity != null && resolveActivity.activityInfo != null) {
                s = resolveActivity.activityInfo.packageName;
            }
            if (s == null) {
                return false;
            }
            final PackageManager packageManager2 = packageManager;
            final String s2 = s;
            try {
                final PackageInfo packageInfo = packageManager2.getPackageInfo(s2, 0);
                if (packageInfo == null || packageInfo.applicationInfo == null) {
                    return b;
                }
                final ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                try {
                    if ((applicationInfo.flags & 0x1) != 0x0) {
                        b = true;
                    }
                    return b;
                    s = component.getPackageName();
                }
                catch (PackageManager$NameNotFoundException ex) {
                    return false;
                }
            }
            catch (PackageManager$NameNotFoundException ex2) {}
        }
        return false;
    }
    
    public static boolean isWallpaperAllowed(final Context context) {
        if (Utilities.ATLEAST_NOUGAT) {
            final Class<WallpaperManager> clazz = WallpaperManager.class;
            try {
                final Object systemService = context.getSystemService((Class)clazz);
                try {
                    final WallpaperManager wallpaperManager = (WallpaperManager)systemService;
                    try {
                        final Object invoke = wallpaperManager.getClass().getDeclaredMethod("isSetWallpaperAllowed", (Class[])new Class[0]).invoke(wallpaperManager, new Object[0]);
                        try {
                            final Boolean b = (Boolean)invoke;
                            try {
                                return b;
                            }
                            catch (Exception ex) {}
                        }
                        catch (Exception ex2) {}
                    }
                    catch (Exception ex3) {}
                }
                catch (Exception ex4) {}
            }
            catch (Exception ex5) {}
        }
        return true;
    }
    
    public static int longCompare(final long n, final long n2) {
        int n3;
        if (n < n2) {
            n3 = -1;
        }
        else if (n == n2) {
            n3 = 0;
        }
        else {
            n3 = 1;
        }
        return n3;
    }
    
    public static void mapCoordInSelfToDescendant(View view, final View view2, final int[] array) {
        final int n = 1;
        Utilities.sMatrix.reset();
        while (view != view2) {
            Utilities.sMatrix.postTranslate((float)(-view.getScrollX()), (float)(-view.getScrollY()));
            Utilities.sMatrix.postConcat(view.getMatrix());
            Utilities.sMatrix.postTranslate((float)view.getLeft(), (float)view.getTop());
            view = (View)view.getParent();
        }
        Utilities.sMatrix.postTranslate((float)(-view.getScrollX()), (float)(-view.getScrollY()));
        Utilities.sMatrix.invert(Utilities.sInverseMatrix);
        Utilities.sPoint[0] = array[0];
        Utilities.sPoint[n] = array[n];
        Utilities.sInverseMatrix.mapPoints(Utilities.sPoint);
        array[0] = Math.round(Utilities.sPoint[0]);
        array[n] = Math.round(Utilities.sPoint[n]);
    }
    
    public static boolean pointInView(final View view, final float n, final float n2, final float n3) {
        boolean b = false;
        if (n >= -n3 && n2 >= -n3 && n < view.getWidth() + n3 && n2 < view.getHeight() + n3) {
            b = true;
        }
        return b;
    }
    
    public static int pxFromDp(final float n, final DisplayMetrics displayMetrics) {
        return Math.round(TypedValue.applyDimension(1, n, displayMetrics));
    }
    
    public static int pxFromSp(final float n, final DisplayMetrics displayMetrics) {
        return Math.round(TypedValue.applyDimension(2, n, displayMetrics));
    }
    
    public static void scaleRectAboutCenter(final Rect rect, final float n) {
        final float n2 = 0.5f;
        if (n != 1.0f) {
            final int centerX = rect.centerX();
            final int centerY = rect.centerY();
            rect.offset(-centerX, -centerY);
            rect.left = (int)(rect.left * n + n2);
            rect.top = (int)(rect.top * n + n2);
            rect.right = (int)(rect.right * n + n2);
            rect.bottom = (int)(rect.bottom * n + n2);
            rect.offset(centerX, centerY);
        }
    }
    
    public static void sendCustomAccessibilityEvent(final View view, final int n, final String s) {
        final AccessibilityManager accessibilityManager = (AccessibilityManager)view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            final AccessibilityEvent obtain = AccessibilityEvent.obtain(n);
            view.onInitializeAccessibilityEvent(obtain);
            obtain.getText().add(s);
            accessibilityManager.sendAccessibilityEvent(obtain);
        }
    }
    
    public static float shrinkRect(final Rect rect, final float n, final float n2) {
        final float n3 = 1.0f;
        final float n4 = 0.5f;
        final float min = Math.min(Math.min(n, n2), n3);
        if (min < n3) {
            final int n5 = (int)(rect.width() * (n - min) * n4);
            rect.left += n5;
            rect.right -= n5;
            final int n6 = (int)(rect.height() * (n2 - min) * n4);
            rect.top += n6;
            rect.bottom -= n6;
        }
        return min;
    }
    
    public static HashSet singletonHashSet(final Object o) {
        final HashSet<Object> set = new HashSet<Object>(1);
        set.add(o);
        return set;
    }
    
    public static String trim(final CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        return Utilities.sTrimPattern.matcher(charSequence).replaceAll("$1");
    }
    
    public static CharSequence wrapForTts(final CharSequence charSequence, final String s) {
        final SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan((Object)new TtsSpan$TextBuilder(s).build(), 0, spannableString.length(), 18);
        return (CharSequence)spannableString;
    }
}

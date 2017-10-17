// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import android.graphics.drawable.AdaptiveIconDrawable;
import com.android.launcher3.Utilities;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.Color;
import android.graphics.Path;
import android.graphics.Xfermode;
import android.graphics.PorterDuffXfermode;
import android.graphics.PorterDuff$Mode;
import android.graphics.Paint$Style;
import android.graphics.Bitmap$Config;
import com.android.launcher3.LauncherAppState;
import android.content.Context;
import java.util.Random;
import android.graphics.Paint;
import android.graphics.Matrix;
import java.io.File;
import android.graphics.Canvas;
import android.graphics.Bitmap;
import android.graphics.Rect;

public class IconNormalizer
{
    private static final Object LOCK;
    private static IconNormalizer sIconNormalizer;
    private final Rect mAdaptiveIconBounds;
    private float mAdaptiveIconScale;
    private final Bitmap mBitmap;
    private final Bitmap mBitmapARGB;
    private final Rect mBounds;
    private final Canvas mCanvas;
    private Canvas mCanvasARGB;
    private File mDir;
    private int mFileId;
    private final float[] mLeftBorder;
    private final Matrix mMatrix;
    private final int mMaxSize;
    private Paint mPaintIcon;
    private final Paint mPaintMaskShape;
    private final Paint mPaintMaskShapeOutline;
    private final byte[] mPixels;
    private final int[] mPixelsARGB;
    private Random mRandom;
    private final float[] mRightBorder;
    
    static {
        LOCK = new Object();
    }
    
    private IconNormalizer(final Context context) {
        this.mMaxSize = LauncherAppState.getIDP(context).iconBitmapSize * 2;
        this.mBitmap = Bitmap.createBitmap(this.mMaxSize, this.mMaxSize, Bitmap$Config.ALPHA_8);
        this.mCanvas = new Canvas(this.mBitmap);
        this.mPixels = new byte[this.mMaxSize * this.mMaxSize];
        this.mPixelsARGB = new int[this.mMaxSize * this.mMaxSize];
        this.mLeftBorder = new float[this.mMaxSize];
        this.mRightBorder = new float[this.mMaxSize];
        this.mBounds = new Rect();
        this.mAdaptiveIconBounds = new Rect();
        this.mBitmapARGB = Bitmap.createBitmap(this.mMaxSize, this.mMaxSize, Bitmap$Config.ARGB_8888);
        this.mCanvasARGB = new Canvas(this.mBitmapARGB);
        (this.mPaintIcon = new Paint()).setColor(-1);
        (this.mPaintMaskShape = new Paint()).setColor(-65536);
        this.mPaintMaskShape.setStyle(Paint$Style.FILL);
        this.mPaintMaskShape.setXfermode((Xfermode)new PorterDuffXfermode(PorterDuff$Mode.XOR));
        (this.mPaintMaskShapeOutline = new Paint()).setStrokeWidth(context.getResources().getDisplayMetrics().density * 2.0f);
        this.mPaintMaskShapeOutline.setStyle(Paint$Style.STROKE);
        this.mPaintMaskShapeOutline.setColor(-16777216);
        this.mPaintMaskShapeOutline.setXfermode((Xfermode)new PorterDuffXfermode(PorterDuff$Mode.DST_OUT));
        this.mMatrix = new Matrix();
        final int[] array = new int[this.mMaxSize * this.mMaxSize];
        this.mAdaptiveIconScale = 0.0f;
        this.mDir = context.getExternalFilesDir((String)null);
        this.mRandom = new Random();
    }
    
    private static void convertToConvexArray(final float[] array, final int n, final int n2, final int n3) {
        final float n4 = Float.MAX_VALUE;
        final float[] array2 = new float[array.length - 1];
        int i = -1;
        int j = n2 + 1;
        float n5 = n4;
        while (j <= n3) {
            int n6;
            float n7;
            if (array[j] <= -1.0f) {
                n6 = i;
                n7 = n5;
            }
            else {
                if (n5 == n4) {
                    i = n2;
                }
                else if (((array[j] - array[i]) / (j - i) - n5) * n < 0.0f) {
                    while (i > n2) {
                        --i;
                        if (((array[j] - array[i]) / (j - i) - array2[i]) * n >= 0.0f) {
                            break;
                        }
                    }
                }
                final float n8 = (array[j] - array[i]) / (j - i);
                for (int k = i; k < j; ++k) {
                    array2[k] = n8;
                    array[k] = array[i] + (k - i) * n8;
                }
                n7 = n8;
                n6 = j;
            }
            ++j;
            i = n6;
            n5 = n7;
        }
    }
    
    public static IconNormalizer getInstance(final Context context) {
        synchronized (IconNormalizer.LOCK) {
            if (IconNormalizer.sIconNormalizer == null) {
                IconNormalizer.sIconNormalizer = new IconNormalizer(context);
            }
            return IconNormalizer.sIconNormalizer;
        }
    }
    
    private boolean isShape(final Path path) {
        if (Math.abs(this.mBounds.width() / this.mBounds.height() - 1.0f) > 0.05f) {
            return false;
        }
        this.mFileId = this.mRandom.nextInt();
        this.mBitmapARGB.eraseColor(0);
        this.mCanvasARGB.drawBitmap(this.mBitmap, 0.0f, 0.0f, this.mPaintIcon);
        this.mMatrix.reset();
        this.mMatrix.setScale((float)this.mBounds.width(), (float)this.mBounds.height());
        this.mMatrix.postTranslate((float)this.mBounds.left, (float)this.mBounds.top);
        path.transform(this.mMatrix);
        this.mCanvasARGB.drawPath(path, this.mPaintMaskShape);
        this.mCanvasARGB.drawPath(path, this.mPaintMaskShapeOutline);
        return this.isTransparentBitmap(this.mBitmapARGB);
    }
    
    private boolean isTransparentBitmap(final Bitmap bitmap) {
        boolean b = false;
        final int width = this.mBounds.width();
        final int height = this.mBounds.height();
        bitmap.getPixels(this.mPixelsARGB, 0, width, this.mBounds.left, this.mBounds.top, width, height);
        int i = 0;
        int n = 0;
        while (i < width * height) {
            if (Color.alpha(this.mPixelsARGB[i]) > 40) {
                ++n;
            }
            ++i;
        }
        if (n / (this.mBounds.width() * this.mBounds.height()) < 0.005f) {
            b = true;
        }
        return b;
    }
    
    public float getScale(final Drawable drawable, final RectF rectF, final Path path, final boolean[] array) {
    Label_0620_Outer:
        while (true) {
            while (true) {
                int right = 0;
                int top = 0;
                int bottom = 0;
                int right2 = 0;
                Label_1346: {
                    while (true) {
                        Label_1339: {
                            synchronized (this) {
                                float n = Utilities.isAtLeastO() ? 1 : 0;
                                if (n != 0) {
                                    n = ((drawable instanceof AdaptiveIconDrawable) ? 1 : 0);
                                    if (n != 0) {
                                        n = fcmpl(this.mAdaptiveIconScale, 0.0f);
                                        if (n != 0) {
                                            if (rectF != null) {
                                                rectF.set(this.mAdaptiveIconBounds);
                                            }
                                            return this.mAdaptiveIconScale;
                                        }
                                    }
                                }
                                int n2 = drawable.getIntrinsicWidth();
                                n = drawable.getIntrinsicHeight();
                                int n4 = 0;
                                int n5 = 0;
                                Label_0160: {
                                    if (n2 <= 0 || n <= 0) {
                                        Label_0128: {
                                            if (n2 > 0) {
                                                final float n3 = this.mMaxSize;
                                                if (n2 <= n3) {
                                                    break Label_0128;
                                                }
                                            }
                                            n2 = this.mMaxSize;
                                        }
                                        Label_0152: {
                                            if (n > 0) {
                                                final float n3 = this.mMaxSize;
                                                if (n <= n3) {
                                                    break Label_0152;
                                                }
                                            }
                                            n = this.mMaxSize;
                                        }
                                        n4 = (int)n;
                                        n5 = n2;
                                    }
                                    else {
                                        float n3 = this.mMaxSize;
                                        if (n2 <= n3) {
                                            n3 = this.mMaxSize;
                                            if (n <= n3) {
                                                n4 = (int)n;
                                                n5 = n2;
                                                break Label_0160;
                                            }
                                        }
                                        n3 = Math.max(n2, (int)n);
                                        right = this.mMaxSize;
                                        final int n6 = (int)(n2 * right / n3);
                                        right = this.mMaxSize;
                                        n *= right;
                                        n = (n4 = (int)(n / n3));
                                        n5 = n6;
                                    }
                                }
                                this.mBitmap.eraseColor(0);
                                n = 0;
                                drawable.setBounds(0, 0, n5, n4);
                                drawable.draw(this.mCanvas);
                                final ByteBuffer wrap = ByteBuffer.wrap(this.mPixels);
                                wrap.rewind();
                                this.mBitmap.copyPixelsToBuffer((Buffer)wrap);
                                top = -1;
                                bottom = -1;
                                n = this.mMaxSize;
                                right2 = (int)(n + 1);
                                right = -1;
                                int n7 = 0;
                                n = this.mMaxSize;
                                final int n8 = (int)(n - n5);
                                float n3;
                                int min;
                                for (int i = 0; i < n4; ++i, right2 = min, bottom = (int)n3, top = right, right = (int)n) {
                                    n3 = -1;
                                    n = -1;
                                    for (int j = 0; j < n5; ++j) {
                                        if ((this.mPixels[n7] & 0xFF) > 40) {
                                            n3 = -1;
                                            if (n == n3) {
                                                n = j;
                                            }
                                            n3 = j;
                                        }
                                        ++n7;
                                    }
                                    n7 += n8;
                                    this.mLeftBorder[i] = n;
                                    this.mRightBorder[i] = n3;
                                    if (n == -1) {
                                        break Label_1346;
                                    }
                                    if (top != -1) {
                                        break Label_1339;
                                    }
                                    bottom = i;
                                    min = Math.min(right2, (int)n);
                                    n = Math.max(right, (int)n3);
                                    n3 = i;
                                    right = bottom;
                                }
                                n = -1;
                                if (top != n) {
                                    n = -1;
                                    if (right != n) {
                                        convertToConvexArray(this.mLeftBorder, 1, top, bottom);
                                        convertToConvexArray(this.mRightBorder, -1, top, bottom);
                                        n = 0;
                                        float n9 = 0.0f;
                                        for (int k = 0; k < n4; ++k) {
                                            final float n10 = this.mLeftBorder[k];
                                            int i = -1082130432;
                                            n3 = fcmpg(n10, -1.0f);
                                            if (n3 > 0) {
                                                final float n11 = this.mRightBorder[k] - this.mLeftBorder[k];
                                                i = 1065353216;
                                                n9 += n11 + 1.0f;
                                            }
                                        }
                                        final int n12 = bottom + 1 - top;
                                        n3 = right + 1 - right2;
                                        final float n13 = n9 / (n12 * n3);
                                        n3 = fcmpg(n13, 0.7853982f);
                                        float n14;
                                        if (n3 < 0) {
                                            n14 = 0.6597222f;
                                        }
                                        else {
                                            final float n15 = (1.0f - n13) * 0.040449437f;
                                            n3 = 1059498667;
                                            n14 = n15 + 0.6510417f;
                                        }
                                        this.mBounds.left = right2;
                                        this.mBounds.right = right;
                                        this.mBounds.top = top;
                                        this.mBounds.bottom = bottom;
                                        if (rectF != null) {
                                            n3 = this.mBounds.left;
                                            final float n16 = n3 / n5;
                                            right = this.mBounds.top;
                                            final float n17 = right;
                                            right2 = this.mBounds.right;
                                            final float n18 = right2 / n5;
                                            int i = 1065353216;
                                            final float n19 = 1.0f - n18;
                                            i = this.mBounds.bottom;
                                            final float n20 = i / n4;
                                            bottom = 1065353216;
                                            rectF.set(n16, n17, n19, 1.0f - n20);
                                        }
                                        if (array != null) {
                                            n3 = array.length;
                                            if (n3 > 0) {
                                                n3 = (this.isShape(path) ? 1 : 0);
                                                right = 0;
                                                array[0] = (n3 != 0.0f);
                                            }
                                        }
                                        final float n21 = n9 / (n5 * n4);
                                        n3 = fcmpl(n21, n14);
                                        float mAdaptiveIconScale;
                                        if (n3 > 0) {
                                            mAdaptiveIconScale = (float)Math.sqrt(n14 / n21);
                                        }
                                        else {
                                            n = 1065353216;
                                            mAdaptiveIconScale = 1.0f;
                                        }
                                        if (Utilities.isAtLeastO() && drawable instanceof AdaptiveIconDrawable) {
                                            final float mAdaptiveIconScale2 = this.mAdaptiveIconScale;
                                            n3 = 0;
                                            if (mAdaptiveIconScale2 == 0.0f) {
                                                this.mAdaptiveIconScale = mAdaptiveIconScale;
                                                this.mAdaptiveIconBounds.set(this.mBounds);
                                            }
                                        }
                                        return mAdaptiveIconScale;
                                    }
                                }
                                return 1.0f;
                            }
                        }
                        bottom = top;
                        continue Label_0620_Outer;
                    }
                }
                float n = right;
                int min = right2;
                float n3 = bottom;
                right = top;
                continue;
            }
        }
    }
}

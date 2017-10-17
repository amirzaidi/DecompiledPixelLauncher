// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.badge;

import android.graphics.ColorFilter;
import com.android.launcher3.graphics.ShadowGenerator;
import android.graphics.Point;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.Paint$Align;
import com.android.launcher3.graphics.IconPalette;
import android.content.Context;
import android.util.SparseArray;
import android.graphics.Shader;
import android.graphics.Canvas;
import android.graphics.Bitmap$Config;
import android.graphics.Paint;
import android.graphics.Bitmap;

class BadgeRenderer$IconDrawer
{
    private final Bitmap mCircleClipBitmap;
    private final int mPadding;
    private final Paint mPaint;
    final /* synthetic */ BadgeRenderer this$0;
    
    public BadgeRenderer$IconDrawer(final BadgeRenderer this$0, final int mPadding) {
        this.this$0 = this$0;
        this.mPaint = new Paint(7);
        this.mPadding = mPadding;
        this.mCircleClipBitmap = Bitmap.createBitmap(this$0.mSize, this$0.mSize, Bitmap$Config.ALPHA_8);
        final Canvas canvas = new Canvas();
        canvas.setBitmap(this.mCircleClipBitmap);
        canvas.drawCircle((float)(this$0.mSize / 2), (float)(this$0.mSize / 2), (float)(this$0.mSize / 2 - mPadding), this.mPaint);
    }
    
    public void drawIcon(final Shader shader, final Canvas canvas) {
        this.mPaint.setShader(shader);
        canvas.drawBitmap(this.mCircleClipBitmap, (float)(-this.this$0.mSize / 2), (float)(-this.this$0.mSize / 2), this.mPaint);
        this.mPaint.setShader((Shader)null);
    }
}

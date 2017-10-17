// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.testing;

import android.graphics.Canvas;
import android.util.AttributeSet;
import android.content.Context;
import android.graphics.Paint;
import android.view.View;

public class WeightWatcher$ProcessWatcher$GraphView extends View
{
    Paint headPaint;
    Paint pssPaint;
    final /* synthetic */ WeightWatcher$ProcessWatcher this$1;
    Paint ussPaint;
    
    public WeightWatcher$ProcessWatcher$GraphView(final WeightWatcher$ProcessWatcher weightWatcher$ProcessWatcher, final Context context) {
        this(weightWatcher$ProcessWatcher, context, null);
    }
    
    public WeightWatcher$ProcessWatcher$GraphView(final WeightWatcher$ProcessWatcher this$1, final Context context, final AttributeSet set) {
        this.this$1 = this$1;
        super(context, set);
        (this.pssPaint = new Paint()).setColor(-6697984);
        (this.ussPaint = new Paint()).setColor(-6750208);
        (this.headPaint = new Paint()).setColor(-1);
    }
    
    public void onDraw(final Canvas canvas) {
        final int width = canvas.getWidth();
        final int height = canvas.getHeight();
        if (this.this$1.mMemInfo == null) {
            return;
        }
        final int length = this.this$1.mMemInfo.pss.length;
        final float n = width / length;
        final float max = Math.max(1.0f, n);
        final float n2 = height / this.this$1.mMemInfo.max;
        for (int i = 0; i < length; ++i) {
            final float n3 = i * n;
            canvas.drawRect(n3, height - this.this$1.mMemInfo.pss[i] * n2, n3 + max, (float)height, this.pssPaint);
            canvas.drawRect(n3, height - this.this$1.mMemInfo.uss[i] * n2, n3 + max, (float)height, this.ussPaint);
        }
        final float n4 = this.this$1.mMemInfo.head * n;
        canvas.drawRect(n4, 0.0f, n4 + max, (float)height, this.headPaint);
    }
}

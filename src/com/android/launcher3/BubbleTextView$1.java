// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.content.res.Resources;
import android.content.res.ColorStateList;
import android.view.ViewParent;
import com.android.launcher3.folder.FolderIcon;
import android.view.MotionEvent;
import android.graphics.Paint$FontMetrics;
import android.view.View$MeasureSpec;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import android.graphics.drawable.Drawable$Callback;
import android.graphics.Region$Op;
import com.android.launcher3.graphics.PreloadIconDrawable;
import java.text.NumberFormat;
import com.android.launcher3.model.PackageItemInfo;
import android.animation.ObjectAnimator;
import android.graphics.Canvas;
import com.android.launcher3.graphics.DrawableFactory;
import android.content.res.TypedArray;
import android.view.View$AccessibilityDelegate;
import android.view.View;
import android.util.AttributeSet;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Bitmap;
import com.android.launcher3.graphics.HolographicOutlineHelper;
import android.view.View$OnLongClickListener;
import com.android.launcher3.graphics.IconPalette;
import com.android.launcher3.badge.BadgeRenderer;
import com.android.launcher3.badge.BadgeInfo;
import android.graphics.drawable.Drawable;
import android.widget.TextView;
import android.util.Property;

final class BubbleTextView$1 extends Property
{
    BubbleTextView$1(final Class clazz, final String s) {
        super(clazz, s);
    }
    
    public Float get(final BubbleTextView bubbleTextView) {
        return bubbleTextView.mBadgeScale;
    }
    
    public void set(final BubbleTextView bubbleTextView, final Float n) {
        bubbleTextView.mBadgeScale = n;
        bubbleTextView.invalidate();
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.folder.FolderIcon;
import android.content.res.ColorStateList;
import android.view.ViewParent;
import android.graphics.drawable.ColorDrawable;
import com.android.launcher3.folder.FolderIconPreviewVerifier;
import android.view.MotionEvent;
import android.graphics.Paint$FontMetrics;
import android.view.View$MeasureSpec;
import android.view.KeyEvent;
import android.graphics.Canvas;
import java.text.NumberFormat;
import com.android.launcher3.graphics.PreloadIconDrawable;
import com.android.launcher3.model.PackageItemInfo;
import android.animation.ObjectAnimator;
import android.support.v4.b.a;
import android.graphics.Color;
import com.android.launcher3.graphics.DrawableFactory;
import android.content.res.TypedArray;
import android.view.View$AccessibilityDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.util.AttributeSet;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Bitmap;
import com.android.launcher3.graphics.HolographicOutlineHelper;
import android.graphics.drawable.Drawable;
import com.android.launcher3.badge.BadgeRenderer;
import com.android.launcher3.graphics.IconPalette;
import com.android.launcher3.badge.BadgeInfo;
import android.widget.TextView;
import android.util.Property;

final class BubbleTextView$2 extends Property
{
    BubbleTextView$2(final Class clazz, final String s) {
        super(clazz, s);
    }
    
    public Integer get(final BubbleTextView bubbleTextView) {
        return bubbleTextView.getTextAlpha();
    }
    
    public void set(final BubbleTextView bubbleTextView, final Integer n) {
        bubbleTextView.setTextAlpha(n);
    }
}

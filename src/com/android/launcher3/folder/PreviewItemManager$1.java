// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.widget.TextView;
import android.animation.Animator$AnimatorListener;
import java.util.Iterator;
import java.util.Collection;
import com.android.launcher3.ShortcutInfo;
import java.util.List;
import com.android.launcher3.config.FeatureFlags;
import android.graphics.drawable.Drawable$Callback;
import com.android.launcher3.BubbleTextView;
import android.graphics.Rect;
import android.graphics.Canvas;
import com.android.launcher3.Utilities;
import android.view.View;
import android.graphics.drawable.Drawable;
import java.util.ArrayList;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class PreviewItemManager$1 implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ PreviewItemManager this$0;
    
    PreviewItemManager$1(final PreviewItemManager this$0) {
        this.this$0 = this$0;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        this.this$0.mCurrentPageItemsTransX = (float)valueAnimator.getAnimatedValue();
        this.this$0.onParamsChanged();
    }
}

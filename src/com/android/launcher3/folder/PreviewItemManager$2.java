// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.widget.TextView;
import android.animation.Animator$AnimatorListener;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.animation.ValueAnimator;
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
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class PreviewItemManager$2 extends AnimatorListenerAdapter
{
    final /* synthetic */ PreviewItemManager this$0;
    
    PreviewItemManager$2(final PreviewItemManager this$0) {
        this.this$0 = this$0;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.this$0.mCurrentPageParams.clear();
    }
}

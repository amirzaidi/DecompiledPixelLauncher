// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import java.util.Iterator;
import com.android.launcher3.anim.PropertyResetListener;
import android.graphics.Color;
import com.android.launcher3.LauncherAnimUtils;
import android.support.v4.b.a;
import com.android.launcher3.util.Themes;
import com.android.launcher3.Utilities;
import android.graphics.Rect;
import com.android.launcher3.dragndrop.DragLayer$LayoutParams;
import android.animation.ObjectAnimator;
import com.android.launcher3.ShortcutAndWidgetContainer;
import java.util.List;
import android.animation.Animator$AnimatorListener;
import android.view.View;
import com.android.launcher3.CellLayout$LayoutParams;
import android.animation.AnimatorSet;
import android.view.animation.AnimationUtils;
import com.android.launcher3.Launcher;
import android.animation.TimeInterpolator;
import android.graphics.drawable.GradientDrawable;
import android.content.Context;
import android.util.Property;
import android.animation.Animator;
import com.android.launcher3.BubbleTextView;
import android.animation.AnimatorListenerAdapter;

final class FolderAnimationManager$4 extends AnimatorListenerAdapter
{
    final /* synthetic */ FolderAnimationManager this$0;
    final /* synthetic */ BubbleTextView val$btv;
    final /* synthetic */ float val$initialScale;
    final /* synthetic */ float val$xDistance;
    final /* synthetic */ float val$yDistance;
    
    FolderAnimationManager$4(final FolderAnimationManager this$0, final BubbleTextView val$btv, final float val$xDistance, final float val$yDistance, final float val$initialScale) {
        this.this$0 = this$0;
        this.val$btv = val$btv;
        this.val$xDistance = val$xDistance;
        this.val$yDistance = val$yDistance;
        this.val$initialScale = val$initialScale;
    }
    
    public void onAnimationEnd(final Animator animator) {
        final float n = 1.0f;
        super.onAnimationEnd(animator);
        this.val$btv.setTranslationX(0.0f);
        this.val$btv.setTranslationY(0.0f);
        this.val$btv.setScaleX(n);
        this.val$btv.setScaleY(n);
    }
    
    public void onAnimationStart(final Animator animator) {
        super.onAnimationStart(animator);
        if (this.this$0.mIsOpening) {
            this.val$btv.setTranslationX(this.val$xDistance);
            this.val$btv.setTranslationY(this.val$yDistance);
            this.val$btv.setScaleX(this.val$initialScale);
            this.val$btv.setScaleY(this.val$initialScale);
        }
    }
}

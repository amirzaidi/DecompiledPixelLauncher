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
import com.android.launcher3.BubbleTextView;
import android.animation.AnimatorSet;
import android.view.animation.AnimationUtils;
import com.android.launcher3.Launcher;
import android.animation.TimeInterpolator;
import android.graphics.drawable.GradientDrawable;
import android.content.Context;
import android.util.Property;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class FolderAnimationManager$3 extends AnimatorListenerAdapter
{
    final /* synthetic */ FolderAnimationManager this$0;
    
    FolderAnimationManager$3(final FolderAnimationManager this$0) {
        this.this$0 = this$0;
    }
    
    public void onAnimationEnd(final Animator animator) {
        final float n = 1.0f;
        super.onAnimationEnd(animator);
        this.this$0.mFolder.setTranslationX(0.0f);
        this.this$0.mFolder.setTranslationY(0.0f);
        this.this$0.mFolder.setTranslationZ(0.0f);
        this.this$0.mFolder.setScaleX(n);
        this.this$0.mFolder.setScaleY(n);
    }
}

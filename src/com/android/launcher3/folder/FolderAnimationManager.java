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
import android.animation.Animator;
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

public class FolderAnimationManager
{
    private static final Property SCALE_PROPERTY;
    private FolderPagedView mContent;
    private Context mContext;
    private final int mDelay;
    private final int mDuration;
    private Folder mFolder;
    private GradientDrawable mFolderBackground;
    private FolderIcon mFolderIcon;
    private final TimeInterpolator mFolderInterpolator;
    private final boolean mIsOpening;
    private final TimeInterpolator mLargeFolderPreviewItemCloseInterpolator;
    private final TimeInterpolator mLargeFolderPreviewItemOpenInterpolator;
    private Launcher mLauncher;
    private PreviewBackground mPreviewBackground;
    private final PreviewItemDrawingParams mTmpParams;
    
    static {
        SCALE_PROPERTY = new FolderAnimationManager$1(Float.class, "scale");
    }
    
    public FolderAnimationManager(final Folder mFolder, final boolean mIsOpening) {
        this.mTmpParams = new PreviewItemDrawingParams(0.0f, 0.0f, 0.0f, 0.0f);
        this.mFolder = mFolder;
        this.mContent = mFolder.mContent;
        this.mFolderBackground = (GradientDrawable)this.mFolder.getBackground();
        this.mFolderIcon = mFolder.mFolderIcon;
        this.mPreviewBackground = this.mFolderIcon.mBackground;
        this.mContext = mFolder.getContext();
        this.mLauncher = mFolder.mLauncher;
        this.mIsOpening = mIsOpening;
        this.mDuration = this.mFolder.mMaterialExpandDuration;
        this.mDelay = this.mContext.getResources().getInteger(2131558420);
        this.mFolderInterpolator = (TimeInterpolator)AnimationUtils.loadInterpolator(this.mContext, 2131165189);
        this.mLargeFolderPreviewItemOpenInterpolator = (TimeInterpolator)AnimationUtils.loadInterpolator(this.mContext, 2131165191);
        this.mLargeFolderPreviewItemCloseInterpolator = (TimeInterpolator)AnimationUtils.loadInterpolator(this.mContext, 2131165190);
    }
    
    private void addPreviewItemAnimators(final AnimatorSet set, final float n, final int n2, final int n3) {
        final FolderIcon$PreviewLayoutRule layoutRule = this.mFolderIcon.getLayoutRule();
        final boolean b = this.mFolder.mContent.getCurrentPage() == 0 && true;
        List list;
        if (b) {
            list = this.mFolderIcon.getPreviewItems();
        }
        else {
            list = this.mFolderIcon.getPreviewItemsOnPage(this.mFolder.mContent.getCurrentPage());
        }
        final int size = list.size();
        int num_ITEMS_IN_PREVIEW;
        if (b) {
            num_ITEMS_IN_PREVIEW = size;
        }
        else {
            num_ITEMS_IN_PREVIEW = FolderIcon.NUM_ITEMS_IN_PREVIEW;
        }
        final TimeInterpolator previewItemInterpolator = this.getPreviewItemInterpolator();
        final ShortcutAndWidgetContainer shortcutsAndWidgets = this.mContent.getPageAt(0).getShortcutsAndWidgets();
        for (int i = 0; i < size; ++i) {
            final BubbleTextView bubbleTextView = list.get(i);
            final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)bubbleTextView.getLayoutParams();
            cellLayout$LayoutParams.isLockedToGrid = true;
            shortcutsAndWidgets.setupLp((View)bubbleTextView);
            final float n4 = layoutRule.getIconSize() * layoutRule.scaleForItem(i, num_ITEMS_IN_PREVIEW) / list.get(i).getIconSize();
            final float n5 = n4 / n;
            float n6;
            if (this.mIsOpening) {
                n6 = n5;
            }
            else {
                n6 = 1.0f;
            }
            bubbleTextView.setScaleX(n6);
            bubbleTextView.setScaleY(n6);
            layoutRule.computePreviewItemDrawingParams(i, num_ITEMS_IN_PREVIEW, this.mTmpParams);
            final int n7 = (int)((this.mTmpParams.transX - (int)((cellLayout$LayoutParams.width - bubbleTextView.getIconSize()) * n4) / 2 + n2) / n);
            final int n8 = (int)((this.mTmpParams.transY + n3) / n);
            final float n9 = n7 - cellLayout$LayoutParams.x;
            final float n10 = n8 - cellLayout$LayoutParams.y;
            final Animator animator = this.getAnimator((View)bubbleTextView, View.TRANSLATION_X, n9, 0.0f);
            animator.setInterpolator(previewItemInterpolator);
            this.play(set, animator);
            final Animator animator2 = this.getAnimator((View)bubbleTextView, View.TRANSLATION_Y, n10, 0.0f);
            animator2.setInterpolator(previewItemInterpolator);
            this.play(set, animator2);
            final Animator animator3 = this.getAnimator((View)bubbleTextView, FolderAnimationManager.SCALE_PROPERTY, n5, 1.0f);
            animator3.setInterpolator(previewItemInterpolator);
            this.play(set, animator3);
            if (this.mFolder.getItemCount() > FolderIcon.NUM_ITEMS_IN_PREVIEW) {
                int mDelay;
                if (this.mIsOpening) {
                    mDelay = this.mDelay;
                }
                else {
                    mDelay = this.mDelay * 2;
                }
                if (this.mIsOpening) {
                    animator.setStartDelay((long)mDelay);
                    animator2.setStartDelay((long)mDelay);
                    animator3.setStartDelay((long)mDelay);
                }
                animator.setDuration(animator.getDuration() - mDelay);
                animator2.setDuration(animator2.getDuration() - mDelay);
                animator3.setDuration(animator3.getDuration() - mDelay);
            }
            set.addListener((Animator$AnimatorListener)new FolderAnimationManager$4(this, bubbleTextView, n9, n10, n5));
        }
    }
    
    private Animator getAnimator(final GradientDrawable gradientDrawable, final String s, final int n, final int n2) {
        final int n3 = 2;
        final int n4 = 1;
        ObjectAnimator objectAnimator;
        if (this.mIsOpening) {
            final int[] array = new int[n3];
            array[0] = n;
            array[n4] = n2;
            objectAnimator = ObjectAnimator.ofArgb((Object)gradientDrawable, s, array);
        }
        else {
            final int[] array2 = new int[n3];
            array2[0] = n2;
            array2[n4] = n;
            objectAnimator = ObjectAnimator.ofArgb((Object)gradientDrawable, s, array2);
        }
        return (Animator)objectAnimator;
    }
    
    private Animator getAnimator(final View view, final Property property, final float n, final float n2) {
        final int n3 = 2;
        final int n4 = 1;
        ObjectAnimator objectAnimator;
        if (this.mIsOpening) {
            final float[] array = new float[n3];
            array[0] = n;
            array[n4] = n2;
            objectAnimator = ObjectAnimator.ofFloat((Object)view, property, array);
        }
        else {
            final float[] array2 = new float[n3];
            array2[0] = n2;
            array2[n4] = n;
            objectAnimator = ObjectAnimator.ofFloat((Object)view, property, array2);
        }
        return (Animator)objectAnimator;
    }
    
    private TimeInterpolator getPreviewItemInterpolator() {
        if (this.mFolder.getItemCount() > FolderIcon.NUM_ITEMS_IN_PREVIEW) {
            TimeInterpolator timeInterpolator;
            if (this.mIsOpening) {
                timeInterpolator = this.mLargeFolderPreviewItemOpenInterpolator;
            }
            else {
                timeInterpolator = this.mLargeFolderPreviewItemCloseInterpolator;
            }
            return timeInterpolator;
        }
        return this.mFolderInterpolator;
    }
    
    private void play(final AnimatorSet set, final Animator animator) {
        this.play(set, animator, animator.getStartDelay(), this.mDuration);
    }
    
    private void play(final AnimatorSet set, final Animator animator, final long startDelay, final int n) {
        animator.setStartDelay(startDelay);
        animator.setDuration((long)n);
        set.play(animator);
    }
    
    public AnimatorSet getAnimator() {
        final DragLayer$LayoutParams dragLayer$LayoutParams = (DragLayer$LayoutParams)this.mFolder.getLayoutParams();
        final FolderIcon$PreviewLayoutRule layoutRule = this.mFolderIcon.getLayoutRule();
        final List previewItems = this.mFolderIcon.getPreviewItems();
        final Rect rect = new Rect();
        final float descendantRectRelativeToSelf = this.mLauncher.getDragLayer().getDescendantRectRelativeToSelf((View)this.mFolderIcon, rect);
        final int scaledRadius = this.mPreviewBackground.getScaledRadius();
        final float n = scaledRadius * 2 * descendantRectRelativeToSelf;
        final float n2 = layoutRule.scaleForItem(0, previewItems.size()) * layoutRule.getIconSize();
        final float n3 = n2 / previewItems.get(0).getIconSize() * descendantRectRelativeToSelf;
        float n4;
        if (this.mIsOpening) {
            n4 = n3;
        }
        else {
            n4 = 1.0f;
        }
        this.mFolder.setScaleX(n4);
        this.mFolder.setScaleY(n4);
        this.mFolder.setPivotX(0.0f);
        this.mFolder.setPivotY(0.0f);
        final int n5 = (int)(n2 / 2.0f);
        int n6;
        if (Utilities.isRtl(this.mContext.getResources())) {
            n6 = (int)(dragLayer$LayoutParams.width * n3 - n - n5);
        }
        else {
            n6 = n5;
        }
        final int n7 = (int)((this.mFolder.getPaddingLeft() + this.mContent.getPaddingLeft()) * n3);
        final int n8 = (int)((this.mFolder.getPaddingTop() + this.mContent.getPaddingTop()) * n3);
        final int n9 = rect.left + this.mPreviewBackground.getOffsetX() - n7 - n6;
        final int n10 = rect.top + this.mPreviewBackground.getOffsetY() - n8;
        final float n11 = n9 - dragLayer$LayoutParams.x;
        final float n12 = n10 - dragLayer$LayoutParams.y;
        final int attrColor = Themes.getAttrColor(this.mContext, 16843827);
        final int asb = a.asb(attrColor, this.mPreviewBackground.getBackgroundAlpha());
        final GradientDrawable mFolderBackground = this.mFolderBackground;
        int color;
        if (this.mIsOpening) {
            color = asb;
        }
        else {
            color = attrColor;
        }
        mFolderBackground.setColor(color);
        final int n13 = n7 + n6;
        final Rect rect2 = new Rect(Math.round(n13 / n3), Math.round(n8 / n3), Math.round((n13 + n) / n3), Math.round((n8 + n) / n3));
        final Rect rect3 = new Rect(0, 0, dragLayer$LayoutParams.width, dragLayer$LayoutParams.height);
        final float n14 = n / n3 / 2.0f;
        final float n15 = Utilities.pxFromDp(2.0f, this.mContext.getResources().getDisplayMetrics());
        final AnimatorSet animatorSet = LauncherAnimUtils.createAnimatorSet();
        final PropertyResetListener propertyResetListener = new PropertyResetListener(BubbleTextView.TEXT_ALPHA_PROPERTY, Color.alpha(Themes.getAttrColor(this.mContext, 16842808)));
        for (final BubbleTextView bubbleTextView : this.mFolder.getItemsOnPage(this.mFolder.mContent.getCurrentPage())) {
            if (this.mIsOpening) {
                bubbleTextView.setTextVisibility(false);
            }
            final ObjectAnimator textAlphaAnimator = bubbleTextView.createTextAlphaAnimator(this.mIsOpening);
            textAlphaAnimator.addListener((Animator$AnimatorListener)propertyResetListener);
            this.play(animatorSet, (Animator)textAlphaAnimator);
        }
        this.play(animatorSet, this.getAnimator((View)this.mFolder, View.TRANSLATION_X, n11, 0.0f));
        this.play(animatorSet, this.getAnimator((View)this.mFolder, View.TRANSLATION_Y, n12, 0.0f));
        this.play(animatorSet, this.getAnimator((View)this.mFolder, FolderAnimationManager.SCALE_PROPERTY, n3, 1.0f));
        this.play(animatorSet, this.getAnimator(this.mFolderBackground, "color", asb, attrColor));
        this.play(animatorSet, (Animator)this.mFolderIcon.mFolderName.createTextAlphaAnimator(this.mIsOpening ^ true));
        this.play(animatorSet, (Animator)new FolderAnimationManager$2(this, n14, n15, rect2, rect3).createRevealAnimator((View)this.mFolder, this.mIsOpening ^ true));
        final int n16 = this.mDuration / 2;
        final Animator animator = this.getAnimator((View)this.mFolder, View.TRANSLATION_Z, -this.mFolder.getElevation(), 0.0f);
        int n17;
        if (this.mIsOpening) {
            n17 = n16;
        }
        else {
            n17 = 0;
        }
        this.play(animatorSet, animator, n17, n16);
        animatorSet.addListener((Animator$AnimatorListener)new FolderAnimationManager$3(this));
        final Iterator iterator2 = animatorSet.getChildAnimations().iterator();
        while (iterator2.hasNext()) {
            iterator2.next().setInterpolator(this.mFolderInterpolator);
        }
        final int n18 = scaledRadius - this.mPreviewBackground.getRadius();
        this.addPreviewItemAnimators(animatorSet, n3 / descendantRectRelativeToSelf, n6 + n18, n18);
        return animatorSet;
    }
}

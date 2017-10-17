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

public class PreviewItemManager
{
    private float mCurrentPageItemsTransX;
    private ArrayList mCurrentPageParams;
    private ArrayList mFirstPageParams;
    private FolderIcon mIcon;
    private float mIntrinsicIconSize;
    private int mPrevTopPadding;
    private Drawable mReferenceDrawable;
    private boolean mShouldSlideInFirstPage;
    private int mTotalWidth;
    
    public PreviewItemManager(final FolderIcon mIcon) {
        final int n = -1;
        this.mIntrinsicIconSize = -1.0f;
        this.mTotalWidth = n;
        this.mPrevTopPadding = n;
        this.mReferenceDrawable = null;
        this.mFirstPageParams = new ArrayList();
        this.mCurrentPageParams = new ArrayList();
        this.mCurrentPageItemsTransX = 0.0f;
        this.mIcon = mIcon;
    }
    
    private void computePreviewDrawingParams(final int n, final int mTotalWidth) {
        if (this.mIntrinsicIconSize != n || this.mTotalWidth != mTotalWidth || this.mPrevTopPadding != this.mIcon.getPaddingTop()) {
            this.mIntrinsicIconSize = n;
            this.mTotalWidth = mTotalWidth;
            this.mPrevTopPadding = this.mIcon.getPaddingTop();
            this.mIcon.mBackground.setup(this.mIcon.mLauncher, (View)this.mIcon, this.mTotalWidth, this.mIcon.getPaddingTop());
            this.mIcon.mPreviewLayoutRule.init(this.mIcon.mBackground.previewSize, this.mIntrinsicIconSize, Utilities.isRtl(this.mIcon.getResources()));
            this.updateItemDrawingParams(false);
        }
    }
    
    private void drawPreviewItem(final Canvas canvas, final PreviewItemDrawingParams previewItemDrawingParams) {
        canvas.save(1);
        canvas.translate(previewItemDrawingParams.transX, previewItemDrawingParams.transY);
        canvas.scale(previewItemDrawingParams.scale, previewItemDrawingParams.scale);
        final Drawable drawable = previewItemDrawingParams.drawable;
        if (drawable != null) {
            final Rect bounds = drawable.getBounds();
            canvas.save();
            canvas.translate((float)(-bounds.left), (float)(-bounds.top));
            canvas.scale(this.mIntrinsicIconSize / bounds.width(), this.mIntrinsicIconSize / bounds.height());
            drawable.draw(canvas);
            canvas.restore();
        }
        canvas.restore();
    }
    
    private PreviewItemDrawingParams getFinalIconParams(final PreviewItemDrawingParams previewItemDrawingParams) {
        final float n = this.mIcon.mLauncher.getDeviceProfile().iconSizePx;
        final float n2 = n / this.mReferenceDrawable.getIntrinsicWidth();
        final float n3 = (this.mIcon.mBackground.previewSize - n) / 2.0f;
        previewItemDrawingParams.update(n3, n3, n2);
        return previewItemDrawingParams;
    }
    
    private void updateTransitionParam(final PreviewItemDrawingParams previewItemDrawingParams, final BubbleTextView bubbleTextView, final int n, final int n2) {
        previewItemDrawingParams.drawable = bubbleTextView.getCompoundDrawables()[1];
        if (!this.mIcon.mFolder.isOpen()) {
            previewItemDrawingParams.drawable.setCallback((Drawable$Callback)this.mIcon);
        }
        final FolderPreviewItemAnim anim = new FolderPreviewItemAnim(this, previewItemDrawingParams, n, FolderIcon.NUM_ITEMS_IN_PREVIEW, n2, FolderIcon.NUM_ITEMS_IN_PREVIEW, 400, null);
        if (previewItemDrawingParams.anim != null && (previewItemDrawingParams.anim.hasEqualFinalState(anim) ^ true)) {
            previewItemDrawingParams.anim.cancel();
        }
        previewItemDrawingParams.anim = anim;
    }
    
    void buildParamsForPage(final int n, final ArrayList list, final boolean b) {
        int i = 0;
        final List previewItemsOnPage = this.mIcon.getPreviewItemsOnPage(n);
        final int size = list.size();
        while (previewItemsOnPage.size() < list.size()) {
            list.remove(list.size() - 1);
        }
        while (previewItemsOnPage.size() > list.size()) {
            list.add(new PreviewItemDrawingParams(0.0f, 0.0f, 0.0f, 0.0f));
        }
        int n2;
        if (n == 0) {
            n2 = previewItemsOnPage.size();
        }
        else {
            n2 = FolderIcon.NUM_ITEMS_IN_PREVIEW;
        }
        while (i < list.size()) {
            final PreviewItemDrawingParams previewItemDrawingParams = list.get(i);
            previewItemDrawingParams.drawable = previewItemsOnPage.get(i).getCompoundDrawables()[1];
            if (previewItemDrawingParams.drawable != null && (this.mIcon.mFolder.isOpen() ^ true)) {
                previewItemDrawingParams.drawable.setCallback((Drawable$Callback)this.mIcon);
            }
            Label_0287: {
                if (!b || FeatureFlags.LAUNCHER3_LEGACY_FOLDER_ICON) {
                    this.computePreviewItemDrawingParams(i, n2, previewItemDrawingParams);
                    if (this.mReferenceDrawable == null) {
                        this.mReferenceDrawable = previewItemDrawingParams.drawable;
                    }
                }
                else {
                    final FolderPreviewItemAnim anim = new FolderPreviewItemAnim(this, previewItemDrawingParams, i, size, i, n2, 400, null);
                    if (previewItemDrawingParams.anim != null) {
                        if (previewItemDrawingParams.anim.hasEqualFinalState(anim)) {
                            break Label_0287;
                        }
                        previewItemDrawingParams.anim.cancel();
                    }
                    (previewItemDrawingParams.anim = anim).start();
                }
            }
            ++i;
        }
    }
    
    PreviewItemDrawingParams computePreviewItemDrawingParams(final int n, final int n2, final PreviewItemDrawingParams previewItemDrawingParams) {
        if (n == -1) {
            return this.getFinalIconParams(previewItemDrawingParams);
        }
        return this.mIcon.mPreviewLayoutRule.computePreviewItemDrawingParams(n, n2, previewItemDrawingParams);
    }
    
    public FolderPreviewItemAnim createFirstItemAnimation(final boolean b, final Runnable runnable) {
        FolderPreviewItemAnim folderPreviewItemAnim;
        if (b) {
            folderPreviewItemAnim = new FolderPreviewItemAnim(this, this.mFirstPageParams.get(0), 0, 2, -1, -1, 200, runnable);
        }
        else {
            folderPreviewItemAnim = new FolderPreviewItemAnim(this, this.mFirstPageParams.get(0), -1, -1, 0, 2, 350, runnable);
        }
        return folderPreviewItemAnim;
    }
    
    public void draw(final Canvas canvas) {
        float n = 0.0f;
        if (this.mShouldSlideInFirstPage) {
            this.drawParams(canvas, this.mCurrentPageParams, this.mCurrentPageItemsTransX);
            n = this.mCurrentPageItemsTransX - 200.0f;
        }
        this.drawParams(canvas, this.mFirstPageParams, n);
    }
    
    public void drawParams(final Canvas canvas, final ArrayList list, final float n) {
        canvas.translate(n, 0.0f);
        for (int i = list.size() - 1; i >= 0; --i) {
            final PreviewItemDrawingParams previewItemDrawingParams = list.get(i);
            if (!previewItemDrawingParams.hidden) {
                this.drawPreviewItem(canvas, previewItemDrawingParams);
            }
        }
        canvas.translate(-n, 0.0f);
    }
    
    float getIntrinsicIconSize() {
        return this.mIntrinsicIconSize;
    }
    
    public void hidePreviewItem(final int n, final boolean hidden) {
        PreviewItemDrawingParams previewItemDrawingParams = null;
        if (n < this.mFirstPageParams.size()) {
            previewItemDrawingParams = this.mFirstPageParams.get(n);
        }
        if (previewItemDrawingParams != null) {
            previewItemDrawingParams.hidden = hidden;
        }
    }
    
    public void onDrop(final List list, final List list2, final ShortcutInfo shortcutInfo) {
        int i = 0;
        final int size = list2.size();
        final ArrayList mFirstPageParams = this.mFirstPageParams;
        this.buildParamsForPage(0, mFirstPageParams, false);
        final ArrayList<BubbleTextView> list3 = new ArrayList<BubbleTextView>();
        for (final BubbleTextView bubbleTextView : list2) {
            if (!list.contains(bubbleTextView) && (bubbleTextView.getTag().equals(shortcutInfo) ^ true)) {
                list3.add(bubbleTextView);
            }
        }
        for (int j = 0; j < list3.size(); ++j) {
            final int index = list2.indexOf(list3.get(j));
            final PreviewItemDrawingParams previewItemDrawingParams = mFirstPageParams.get(index);
            this.computePreviewItemDrawingParams(index, size, previewItemDrawingParams);
            this.updateTransitionParam(previewItemDrawingParams, list3.get(j), this.mIcon.mPreviewLayoutRule.getEnterIndex(), list2.indexOf(list3.get(j)));
        }
        for (int k = 0; k < list2.size(); ++k) {
            final int index2 = list.indexOf(list2.get(k));
            if (index2 >= 0 && k != index2) {
                this.updateTransitionParam(mFirstPageParams.get(k), list2.get(k), index2, k);
            }
        }
        final ArrayList<BubbleTextView> list4 = new ArrayList<BubbleTextView>(list);
        list4.removeAll(list2);
        for (int l = 0; l < list4.size(); ++l) {
            final BubbleTextView bubbleTextView2 = list4.get(l);
            final int index3 = list.indexOf(bubbleTextView2);
            final PreviewItemDrawingParams computePreviewItemDrawingParams = this.computePreviewItemDrawingParams(index3, size, null);
            this.updateTransitionParam(computePreviewItemDrawingParams, bubbleTextView2, index3, this.mIcon.mPreviewLayoutRule.getExitIndex());
            mFirstPageParams.add(0, computePreviewItemDrawingParams);
        }
        while (i < mFirstPageParams.size()) {
            if (mFirstPageParams.get(i).anim != null) {
                mFirstPageParams.get(i).anim.start();
            }
            ++i;
        }
    }
    
    void onFolderClose(final int n) {
        final int n2 = 1;
        boolean mShouldSlideInFirstPage;
        if (n != 0) {
            mShouldSlideInFirstPage = (n2 != 0);
        }
        else {
            mShouldSlideInFirstPage = false;
        }
        this.mShouldSlideInFirstPage = mShouldSlideInFirstPage;
        if (this.mShouldSlideInFirstPage) {
            this.mCurrentPageItemsTransX = 0.0f;
            this.buildParamsForPage(n, this.mCurrentPageParams, false);
            this.onParamsChanged();
            final float[] array = { 0.0f, 0.0f };
            array[n2] = 200.0f;
            final ValueAnimator ofFloat = ValueAnimator.ofFloat(array);
            ofFloat.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new PreviewItemManager$1(this));
            ofFloat.addListener((Animator$AnimatorListener)new PreviewItemManager$2(this));
            ofFloat.setStartDelay((long)100);
            ofFloat.setDuration(300L);
            ofFloat.start();
        }
    }
    
    public void onParamsChanged() {
        this.mIcon.invalidate();
    }
    
    Drawable prepareCreateAnimation(final View view) {
        final Drawable mReferenceDrawable = ((TextView)view).getCompoundDrawables()[1];
        this.computePreviewDrawingParams(mReferenceDrawable.getIntrinsicWidth(), view.getMeasuredWidth());
        return this.mReferenceDrawable = mReferenceDrawable;
    }
    
    public void recomputePreviewDrawingParams() {
        if (this.mReferenceDrawable != null) {
            this.computePreviewDrawingParams(this.mReferenceDrawable.getIntrinsicWidth(), this.mIcon.getMeasuredWidth());
        }
    }
    
    void updateItemDrawingParams(final boolean b) {
        this.buildParamsForPage(0, this.mFirstPageParams, b);
    }
    
    boolean verifyDrawable(final Drawable drawable) {
        for (int i = 0; i < this.mFirstPageParams.size(); ++i) {
            if (((PreviewItemDrawingParams)this.mFirstPageParams.get(i)).drawable == drawable) {
                return true;
            }
        }
        return false;
    }
}

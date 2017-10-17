// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.widget;

import android.view.ViewGroup$LayoutParams;
import android.view.MotionEvent;
import android.graphics.drawable.Drawable;
import com.android.launcher3.graphics.DrawableFactory;
import android.graphics.Bitmap;
import com.android.launcher3.StylusEventHelper$StylusButtonListener;
import android.view.View;
import com.android.launcher3.SimpleOnStylusPressListener;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.WidgetPreviewLoader;
import android.widget.TextView;
import com.android.launcher3.StylusEventHelper;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.BaseActivity;
import android.os.CancellationSignal;
import android.view.View$OnLayoutChangeListener;
import android.widget.LinearLayout;

public class WidgetCell extends LinearLayout implements View$OnLayoutChangeListener
{
    protected CancellationSignal mActiveRequest;
    protected final BaseActivity mActivity;
    private boolean mAnimatePreview;
    private int mCellSize;
    protected WidgetItem mItem;
    protected int mPresetPreviewSize;
    private StylusEventHelper mStylusEventHelper;
    private TextView mWidgetDims;
    private WidgetImageView mWidgetImage;
    private TextView mWidgetName;
    private WidgetPreviewLoader mWidgetPreviewLoader;
    
    public WidgetCell(final Context context) {
        this(context, null);
    }
    
    public WidgetCell(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public WidgetCell(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mAnimatePreview = true;
        this.mActivity = BaseActivity.fromContext(context);
        this.mStylusEventHelper = new StylusEventHelper(new SimpleOnStylusPressListener((View)this), (View)this);
        this.setContainerWidth();
        this.setWillNotDraw(false);
        this.setClipToPadding(false);
        this.setAccessibilityDelegate(this.mActivity.getAccessibilityDelegate());
    }
    
    private void setContainerWidth() {
        this.mCellSize = (int)(this.mActivity.getDeviceProfile().cellWidthPx * 2.6f);
        this.mPresetPreviewSize = (int)(this.mCellSize * 0.8f);
    }
    
    public void applyFromCellItem(final WidgetItem mItem, final WidgetPreviewLoader mWidgetPreviewLoader) {
        final int n = 2;
        final int n2 = 1;
        this.mItem = mItem;
        this.mWidgetName.setText((CharSequence)this.mItem.label);
        final TextView mWidgetDims = this.mWidgetDims;
        final Context context = this.getContext();
        final Object[] array = new Object[n];
        array[0] = this.mItem.spanX;
        array[n2] = this.mItem.spanY;
        mWidgetDims.setText((CharSequence)context.getString(2131492906, array));
        final TextView mWidgetDims2 = this.mWidgetDims;
        final Context context2 = this.getContext();
        final Object[] array2 = new Object[n];
        array2[0] = this.mItem.spanX;
        array2[n2] = this.mItem.spanY;
        mWidgetDims2.setContentDescription((CharSequence)context2.getString(2131492907, array2));
        this.mWidgetPreviewLoader = mWidgetPreviewLoader;
        if (mItem.activityInfo != null) {
            this.setTag((Object)new PendingAddShortcutInfo(mItem.activityInfo));
        }
        else {
            this.setTag((Object)new PendingAddWidgetInfo(mItem.widgetInfo));
        }
    }
    
    public void applyPreview(final Bitmap bitmap) {
        this.applyPreview(bitmap, true);
    }
    
    public void applyPreview(final Bitmap bitmap, final boolean b) {
        final float alpha = 1.0f;
        if (bitmap != null) {
            this.mWidgetImage.setBitmap(bitmap, DrawableFactory.get(this.getContext()).getBadgeForUser(this.mItem.user, this.getContext()));
            if (this.mAnimatePreview) {
                this.mWidgetImage.setAlpha(0.0f);
                this.mWidgetImage.animate().alpha(alpha).setDuration((long)90);
            }
            else {
                this.mWidgetImage.setAlpha(alpha);
            }
        }
    }
    
    public void clear() {
        this.mWidgetImage.animate().cancel();
        this.mWidgetImage.setBitmap(null, null);
        this.mWidgetName.setText((CharSequence)null);
        this.mWidgetDims.setText((CharSequence)null);
        if (this.mActiveRequest != null) {
            this.mActiveRequest.cancel();
            this.mActiveRequest = null;
        }
    }
    
    public void ensurePreview() {
        this.ensurePreview(true);
    }
    
    public void ensurePreview(final boolean b) {
        if (this.mActiveRequest != null) {
            return;
        }
        this.mActiveRequest = this.mWidgetPreviewLoader.getPreview(this.mItem, this.mPresetPreviewSize, this.mPresetPreviewSize, this, b);
    }
    
    public CharSequence getAccessibilityClassName() {
        return WidgetCell.class.getName();
    }
    
    public WidgetImageView getWidgetView() {
        return this.mWidgetImage;
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mWidgetImage = (WidgetImageView)this.findViewById(2131624071);
        this.mWidgetName = (TextView)this.findViewById(2131624069);
        this.mWidgetDims = (TextView)this.findViewById(2131624070);
    }
    
    public void onLayoutChange(final View view, final int n, final int n2, final int n3, final int n4, final int n5, final int n6, final int n7, final int n8) {
        this.removeOnLayoutChangeListener((View$OnLayoutChangeListener)this);
        this.ensurePreview();
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        final boolean onTouchEvent = super.onTouchEvent(motionEvent);
        return this.mStylusEventHelper.onMotionEvent(motionEvent) || onTouchEvent;
    }
    
    public void setAnimatePreview(final boolean mAnimatePreview) {
        this.mAnimatePreview = mAnimatePreview;
    }
    
    public void setLayoutParams(final ViewGroup$LayoutParams layoutParams) {
        final int mCellSize = this.mCellSize;
        layoutParams.height = mCellSize;
        layoutParams.width = mCellSize;
        super.setLayoutParams(layoutParams);
    }
}

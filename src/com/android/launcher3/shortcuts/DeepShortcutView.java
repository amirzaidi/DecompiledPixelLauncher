// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.shortcuts;

import com.android.launcher3.Utilities;
import android.view.View$OnTouchListener;
import android.view.View$OnLongClickListener;
import android.view.View$OnClickListener;
import com.android.launcher3.Launcher;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.content.Context;
import android.graphics.Rect;
import com.android.launcher3.ShortcutInfo;
import android.view.View;
import com.android.launcher3.BubbleTextView;
import android.graphics.Point;
import android.widget.FrameLayout;

public class DeepShortcutView extends FrameLayout
{
    private static final Point sTempPoint;
    private BubbleTextView mBubbleText;
    private ShortcutInfoCompat mDetail;
    private View mIconView;
    private ShortcutInfo mInfo;
    private final Rect mPillRect;
    
    static {
        sTempPoint = new Point();
    }
    
    public DeepShortcutView(final Context context) {
        this(context, null, 0);
    }
    
    public DeepShortcutView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public DeepShortcutView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mPillRect = new Rect();
    }
    
    public void applyShortcutInfo(final ShortcutInfo mInfo, final ShortcutInfoCompat mDetail, final ShortcutsItemView shortcutsItemView) {
        boolean b = false;
        this.mInfo = mInfo;
        this.mDetail = mDetail;
        this.mBubbleText.applyFromShortcutInfo(mInfo);
        this.mIconView.setBackground(this.mBubbleText.getIcon());
        final CharSequence longLabel = this.mDetail.getLongLabel();
        final int n = this.mBubbleText.getWidth() - this.mBubbleText.getTotalPaddingLeft() - this.mBubbleText.getTotalPaddingRight();
        if (!TextUtils.isEmpty(longLabel) && this.mBubbleText.getPaint().measureText(longLabel.toString()) <= n) {
            b = true;
        }
        final BubbleTextView mBubbleText = this.mBubbleText;
        CharSequence shortLabel;
        if (b) {
            shortLabel = longLabel;
        }
        else {
            shortLabel = this.mDetail.getShortLabel();
        }
        mBubbleText.setText(shortLabel);
        this.mBubbleText.setOnClickListener((View$OnClickListener)Launcher.getLauncher(this.getContext()));
        this.mBubbleText.setOnLongClickListener((View$OnLongClickListener)shortcutsItemView);
        this.mBubbleText.setOnTouchListener((View$OnTouchListener)shortcutsItemView);
    }
    
    public BubbleTextView getBubbleText() {
        return this.mBubbleText;
    }
    
    public ShortcutInfo getFinalInfo() {
        final ShortcutInfo shortcutInfo = new ShortcutInfo(this.mInfo);
        Launcher.getLauncher(this.getContext()).getModel().updateAndBindShortcutInfo(shortcutInfo, this.mDetail);
        return shortcutInfo;
    }
    
    public Point getIconCenter() {
        final Point sTempPoint = DeepShortcutView.sTempPoint;
        final int n = this.getMeasuredHeight() / 2;
        DeepShortcutView.sTempPoint.x = n;
        sTempPoint.y = n;
        if (Utilities.isRtl(this.getResources())) {
            DeepShortcutView.sTempPoint.x = this.getMeasuredWidth() - DeepShortcutView.sTempPoint.x;
        }
        return DeepShortcutView.sTempPoint;
    }
    
    public View getIconView() {
        return this.mIconView;
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mBubbleText = (BubbleTextView)this.findViewById(2131623994);
        this.mIconView = this.findViewById(2131623990);
    }
    
    protected void onMeasure(final int n, final int n2) {
        super.onMeasure(n, n2);
        this.mPillRect.set(0, 0, this.getMeasuredWidth(), this.getMeasuredHeight());
    }
    
    public void setWillDrawIcon(final boolean b) {
        final View mIconView = this.mIconView;
        int visibility;
        if (b) {
            visibility = 0;
        }
        else {
            visibility = 4;
        }
        mIconView.setVisibility(visibility);
    }
}

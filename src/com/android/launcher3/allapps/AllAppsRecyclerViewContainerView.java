// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import android.view.ViewGroup;
import android.graphics.Bitmap;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.DeviceProfile;
import android.view.View;
import com.android.launcher3.Launcher;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.ClickShadowView;
import com.android.launcher3.BubbleTextView$BubbleTextShadowHandler;
import android.widget.RelativeLayout;

public class AllAppsRecyclerViewContainerView extends RelativeLayout implements BubbleTextView$BubbleTextShadowHandler
{
    private final ClickShadowView mTouchFeedbackView;
    
    public AllAppsRecyclerViewContainerView(final Context context) {
        this(context, null);
    }
    
    public AllAppsRecyclerViewContainerView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public AllAppsRecyclerViewContainerView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        final DeviceProfile deviceProfile = Launcher.getLauncher(context).getDeviceProfile();
        this.mTouchFeedbackView = new ClickShadowView(context);
        final int n2 = deviceProfile.allAppsIconSizePx + this.mTouchFeedbackView.getExtraSize();
        this.addView((View)this.mTouchFeedbackView, n2, n2);
    }
    
    public void setPressedIcon(final BubbleTextView bubbleTextView, final Bitmap bitmap) {
        if (bubbleTextView == null || bitmap == null) {
            this.mTouchFeedbackView.setBitmap(null);
            this.mTouchFeedbackView.animate().cancel();
        }
        else if (this.mTouchFeedbackView.setBitmap(bitmap)) {
            this.mTouchFeedbackView.alignWithIconView(bubbleTextView, (ViewGroup)bubbleTextView.getParent(), this.findViewById(2131623979));
            this.mTouchFeedbackView.animateShadow();
        }
    }
}

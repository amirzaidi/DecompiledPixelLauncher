// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.discovery;

import android.view.View$AccessibilityDelegate;
import android.view.View$OnClickListener;
import java.text.NumberFormat;
import java.text.DecimalFormat;
import android.util.AttributeSet;
import android.content.Context;
import android.widget.TextView;
import android.view.View$OnLongClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;

public class AppDiscoveryItemView extends RelativeLayout
{
    private static boolean SHOW_REVIEW_COUNT;
    private ImageView mImage;
    private View$OnLongClickListener mOnLongClickListener;
    private TextView mPrice;
    private TextView mRatingText;
    private RatingView mRatingView;
    private TextView mReviewCount;
    private TextView mTitle;
    
    static {
        AppDiscoveryItemView.SHOW_REVIEW_COUNT = false;
    }
    
    public AppDiscoveryItemView(final Context context) {
        this(context, null);
    }
    
    public AppDiscoveryItemView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public AppDiscoveryItemView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
    }
    
    public void apply(final AppDiscoveryAppInfo appDiscoveryAppInfo) {
        View$OnLongClickListener mOnLongClickListener = null;
        final int visibility = 8;
        this.setTag((Object)appDiscoveryAppInfo);
        this.mImage.setTag((Object)appDiscoveryAppInfo);
        this.mImage.setImageBitmap(appDiscoveryAppInfo.iconBitmap);
        final ImageView mImage = this.mImage;
        if (appDiscoveryAppInfo.isDragAndDropSupported()) {
            mOnLongClickListener = this.mOnLongClickListener;
        }
        mImage.setOnLongClickListener(mOnLongClickListener);
        this.mTitle.setText(appDiscoveryAppInfo.title);
        final TextView mPrice = this.mPrice;
        String priceFormatted;
        if (appDiscoveryAppInfo.priceFormatted != null) {
            priceFormatted = appDiscoveryAppInfo.priceFormatted;
        }
        else {
            priceFormatted = "";
        }
        mPrice.setText((CharSequence)priceFormatted);
        final TextView mReviewCount = this.mReviewCount;
        int visibility2;
        if (AppDiscoveryItemView.SHOW_REVIEW_COUNT) {
            visibility2 = 0;
        }
        else {
            visibility2 = visibility;
        }
        mReviewCount.setVisibility(visibility2);
        if (appDiscoveryAppInfo.rating >= 0.0f) {
            this.mRatingText.setText((CharSequence)new DecimalFormat("#.0").format(appDiscoveryAppInfo.rating));
            this.mRatingView.setRating(appDiscoveryAppInfo.rating);
            this.mRatingView.setVisibility(0);
            this.mReviewCount.setText((CharSequence)("(" + NumberFormat.getInstance().format(appDiscoveryAppInfo.reviewCount) + ")"));
        }
        else {
            this.mRatingView.setVisibility(visibility);
            this.mRatingText.setText((CharSequence)"");
            this.mReviewCount.setText((CharSequence)"");
        }
    }
    
    public void init(final View$OnClickListener view$OnClickListener, final View$AccessibilityDelegate accessibilityDelegate, final View$OnLongClickListener mOnLongClickListener) {
        this.setOnClickListener(view$OnClickListener);
        this.mImage.setOnClickListener(view$OnClickListener);
        this.setAccessibilityDelegate(accessibilityDelegate);
        this.mOnLongClickListener = mOnLongClickListener;
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mImage = (ImageView)this.findViewById(2131623981);
        this.mTitle = (TextView)this.findViewById(2131623982);
        this.mRatingText = (TextView)this.findViewById(2131623983);
        this.mRatingView = (RatingView)this.findViewById(2131623984);
        this.mPrice = (TextView)this.findViewById(2131623986);
        this.mReviewCount = (TextView)this.findViewById(2131623985);
    }
}

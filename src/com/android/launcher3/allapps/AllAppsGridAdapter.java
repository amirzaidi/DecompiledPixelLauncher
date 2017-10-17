// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import com.android.launcher3.util.PackageManagerHelper;
import android.view.View$AccessibilityDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.TextView;
import com.android.launcher3.discovery.AppDiscoveryAppInfo;
import com.android.launcher3.discovery.AppDiscoveryItemView;
import com.android.launcher3.BubbleTextView;
import android.support.v7.widget.j;
import android.content.res.Resources;
import com.android.launcher3.anim.SpringAnimationHandler$AnimationFactory;
import com.android.launcher3.config.FeatureFlags;
import android.support.v7.widget.Q;
import android.content.Context;
import com.android.launcher3.anim.SpringAnimationHandler;
import android.content.Intent;
import android.view.LayoutInflater;
import com.android.launcher3.Launcher;
import android.view.View$OnLongClickListener;
import android.view.View$OnFocusChangeListener;
import android.view.View$OnClickListener;
import android.support.v7.widget.M;
import android.support.v7.widget.q;

public class AllAppsGridAdapter extends q
{
    private final AlphabeticalAppsList mApps;
    private int mAppsPerRow;
    private AllAppsGridAdapter$BindViewCallback mBindViewCallback;
    private String mEmptySearchMessage;
    private final M mGridLayoutMgr;
    private final AllAppsGridAdapter$GridSpanSizer mGridSizer;
    private final View$OnClickListener mIconClickListener;
    private View$OnFocusChangeListener mIconFocusListener;
    private final View$OnLongClickListener mIconLongClickListener;
    private final Launcher mLauncher;
    private final LayoutInflater mLayoutInflater;
    private Intent mMarketSearchIntent;
    private SpringAnimationHandler mSpringAnimationHandler;
    
    public AllAppsGridAdapter(final Launcher mLauncher, final AlphabeticalAppsList mApps, final View$OnClickListener mIconClickListener, final View$OnLongClickListener mIconLongClickListener) {
        final Resources resources = mLauncher.getResources();
        this.mLauncher = mLauncher;
        this.mApps = mApps;
        this.mEmptySearchMessage = resources.getString(2131492911);
        this.mGridSizer = new AllAppsGridAdapter$GridSpanSizer(this);
        (this.mGridLayoutMgr = new AllAppsGridAdapter$AppsGridLayoutManager(this, (Context)mLauncher)).setSpanSizeLookup(this.mGridSizer);
        this.mLayoutInflater = LayoutInflater.from((Context)mLauncher);
        this.mIconClickListener = mIconClickListener;
        this.mIconLongClickListener = mIconLongClickListener;
        if (FeatureFlags.LAUNCHER3_PHYSICS) {
            this.mSpringAnimationHandler = new SpringAnimationHandler(0, new AllAppsGridAdapter$AllAppsSpringAnimationFactory(this, null));
        }
    }
    
    public static boolean isDividerViewType(final int n) {
        return isViewType(n, 96);
    }
    
    public static boolean isIconViewType(final int n) {
        return isViewType(n, 6);
    }
    
    public static boolean isViewType(final int n, final int n2) {
        boolean b = false;
        if ((n & n2) != 0x0) {
            b = true;
        }
        return b;
    }
    
    public int getItemCount() {
        return this.mApps.getAdapterItems().size();
    }
    
    public int getItemViewType(final int n) {
        return this.mApps.getAdapterItems().get(n).viewType;
    }
    
    public M getLayoutManager() {
        return this.mGridLayoutMgr;
    }
    
    public SpringAnimationHandler getSpringAnimationHandler() {
        return this.mSpringAnimationHandler;
    }
    
    public void onBindViewHolder(final AllAppsGridAdapter$ViewHolder allAppsGridAdapter$ViewHolder, final int n) {
        final int visibility = 8;
        int visibility2 = 0;
        switch (allAppsGridAdapter$ViewHolder.getItemViewType()) {
            case 2:
            case 4: {
                ((BubbleTextView)allAppsGridAdapter$ViewHolder.itemView).applyFromApplicationInfo(this.mApps.getAdapterItems().get(n).appInfo);
                break;
            }
            case 256: {
                ((AppDiscoveryItemView)allAppsGridAdapter$ViewHolder.itemView).apply((AppDiscoveryAppInfo)this.mApps.getAdapterItems().get(n).appInfo);
                break;
            }
            case 8: {
                final TextView textView = (TextView)allAppsGridAdapter$ViewHolder.itemView;
                textView.setText((CharSequence)this.mEmptySearchMessage);
                int gravity;
                if (this.mApps.hasNoFilteredResults()) {
                    gravity = 17;
                }
                else {
                    gravity = 8388627;
                }
                textView.setGravity(gravity);
                break;
            }
            case 16: {
                final TextView textView2 = (TextView)allAppsGridAdapter$ViewHolder.itemView;
                if (this.mMarketSearchIntent != null) {
                    textView2.setVisibility(0);
                    break;
                }
                textView2.setVisibility(visibility);
                break;
            }
            case 128: {
                int visibility3;
                if (this.mApps.isAppDiscoveryRunning()) {
                    visibility3 = 0;
                }
                else {
                    visibility3 = visibility;
                }
                if (this.mApps.isAppDiscoveryRunning()) {
                    visibility2 = visibility;
                }
                allAppsGridAdapter$ViewHolder.itemView.findViewById(2131623987).setVisibility(visibility3);
                allAppsGridAdapter$ViewHolder.itemView.findViewById(2131623988).setVisibility(visibility2);
                break;
            }
        }
        if (this.mBindViewCallback != null) {
            this.mBindViewCallback.onBindView(allAppsGridAdapter$ViewHolder);
        }
    }
    
    public AllAppsGridAdapter$ViewHolder onCreateViewHolder(final ViewGroup viewGroup, final int n) {
        switch (n) {
            default: {
                throw new RuntimeException("Unexpected view type");
            }
            case 2:
            case 4: {
                final BubbleTextView bubbleTextView = (BubbleTextView)this.mLayoutInflater.inflate(2130968585, viewGroup, false);
                bubbleTextView.setOnClickListener(this.mIconClickListener);
                bubbleTextView.setOnLongClickListener(this.mIconLongClickListener);
                bubbleTextView.setLongPressTimeout(ViewConfiguration.getLongPressTimeout());
                bubbleTextView.setOnFocusChangeListener(this.mIconFocusListener);
                bubbleTextView.getLayoutParams().height = this.mLauncher.getDeviceProfile().allAppsCellHeightPx;
                return new AllAppsGridAdapter$ViewHolder((View)bubbleTextView);
            }
            case 256: {
                final AppDiscoveryItemView appDiscoveryItemView = (AppDiscoveryItemView)this.mLayoutInflater.inflate(2130968579, viewGroup, false);
                appDiscoveryItemView.init(this.mIconClickListener, this.mLauncher.getAccessibilityDelegate(), this.mIconLongClickListener);
                return new AllAppsGridAdapter$ViewHolder((View)appDiscoveryItemView);
            }
            case 8: {
                return new AllAppsGridAdapter$ViewHolder(this.mLayoutInflater.inflate(2130968582, viewGroup, false));
            }
            case 16: {
                final View inflate = this.mLayoutInflater.inflate(2130968586, viewGroup, false);
                inflate.setOnClickListener((View$OnClickListener)new AllAppsGridAdapter$1(this));
                return new AllAppsGridAdapter$ViewHolder(inflate);
            }
            case 128: {
                return new AllAppsGridAdapter$ViewHolder(this.mLayoutInflater.inflate(2130968580, viewGroup, false));
            }
            case 32:
            case 64: {
                return new AllAppsGridAdapter$ViewHolder(this.mLayoutInflater.inflate(2130968581, viewGroup, false));
            }
        }
    }
    
    public boolean onFailedToRecycleView(final AllAppsGridAdapter$ViewHolder allAppsGridAdapter$ViewHolder) {
        return true;
    }
    
    public void onViewAttachedToWindow(final AllAppsGridAdapter$ViewHolder allAppsGridAdapter$ViewHolder) {
        final int itemViewType = allAppsGridAdapter$ViewHolder.getItemViewType();
        if (FeatureFlags.LAUNCHER3_PHYSICS && isViewType(itemViewType, 70)) {
            this.mSpringAnimationHandler.add(allAppsGridAdapter$ViewHolder.itemView, allAppsGridAdapter$ViewHolder);
        }
    }
    
    public void onViewDetachedFromWindow(final AllAppsGridAdapter$ViewHolder allAppsGridAdapter$ViewHolder) {
        final int itemViewType = allAppsGridAdapter$ViewHolder.getItemViewType();
        if (FeatureFlags.LAUNCHER3_PHYSICS && isViewType(itemViewType, 70)) {
            this.mSpringAnimationHandler.remove(allAppsGridAdapter$ViewHolder.itemView);
        }
    }
    
    public void setBindViewCallback(final AllAppsGridAdapter$BindViewCallback mBindViewCallback) {
        this.mBindViewCallback = mBindViewCallback;
    }
    
    public void setIconFocusListener(final View$OnFocusChangeListener mIconFocusListener) {
        this.mIconFocusListener = mIconFocusListener;
    }
    
    public void setLastSearchQuery(final String s) {
        this.mEmptySearchMessage = this.mLauncher.getResources().getString(2131492912, new Object[] { s });
        this.mMarketSearchIntent = PackageManagerHelper.getMarketSearchIntent((Context)this.mLauncher, s);
    }
    
    public void setNumAppsPerRow(final int n) {
        this.mAppsPerRow = n;
        this.mGridLayoutMgr.setSpanCount(n);
    }
}

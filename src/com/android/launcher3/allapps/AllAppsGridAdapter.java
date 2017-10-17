// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import com.android.launcher3.AppInfo;
import android.widget.TextView;
import com.android.launcher3.discovery.AppDiscoveryAppInfo;
import com.android.launcher3.discovery.AppDiscoveryItemView;
import android.view.View$AccessibilityDelegate;
import com.android.launcher3.BubbleTextView;
import android.support.v7.widget.j;
import android.graphics.Point;
import android.content.res.Resources;
import android.support.v7.widget.Q;
import android.content.Context;
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
    private AllAppsSearchBarController mSearchController;
    
    public AllAppsGridAdapter(final Launcher mLauncher, final AlphabeticalAppsList mApps, final View$OnClickListener mIconClickListener, final View$OnLongClickListener mIconLongClickListener) {
        final Resources resources = mLauncher.getResources();
        this.mLauncher = mLauncher;
        this.mApps = mApps;
        this.mEmptySearchMessage = resources.getString(2131492909);
        this.mGridSizer = new AllAppsGridAdapter$GridSpanSizer(this);
        (this.mGridLayoutMgr = new AllAppsGridAdapter$AppsGridLayoutManager(this, (Context)mLauncher)).setSpanSizeLookup(this.mGridSizer);
        this.mLayoutInflater = LayoutInflater.from((Context)mLauncher);
        this.mIconClickListener = mIconClickListener;
        this.mIconLongClickListener = mIconLongClickListener;
    }
    
    private Point getCellSize() {
        return this.mLauncher.getDeviceProfile().getCellSize();
    }
    
    public static boolean isDividerViewType(final int n) {
        return isViewType(n, 224);
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
    
    public void onBindViewHolder(final AllAppsGridAdapter$ViewHolder allAppsGridAdapter$ViewHolder, final int n) {
        final int visibility = 8;
        int visibility2 = 0;
        switch (allAppsGridAdapter$ViewHolder.getItemViewType()) {
            case 2:
            case 4: {
                final AppInfo appInfo = this.mApps.getAdapterItems().get(n).appInfo;
                final BubbleTextView bubbleTextView = (BubbleTextView)allAppsGridAdapter$ViewHolder.itemView;
                bubbleTextView.applyFromApplicationInfo(appInfo);
                bubbleTextView.setAccessibilityDelegate((View$AccessibilityDelegate)this.mLauncher.getAccessibilityDelegate());
                break;
            }
            case 512: {
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
            case 256: {
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
                final BubbleTextView bubbleTextView = (BubbleTextView)this.mLayoutInflater.inflate(2130968583, viewGroup, false);
                bubbleTextView.setOnClickListener(this.mIconClickListener);
                bubbleTextView.setOnLongClickListener(this.mIconLongClickListener);
                ViewConfiguration.get(viewGroup.getContext());
                bubbleTextView.setLongPressTimeout(ViewConfiguration.getLongPressTimeout());
                bubbleTextView.setOnFocusChangeListener(this.mIconFocusListener);
                bubbleTextView.getLayoutParams().height = this.getCellSize().y;
                return new AllAppsGridAdapter$ViewHolder((View)bubbleTextView);
            }
            case 512: {
                final AppDiscoveryItemView appDiscoveryItemView = (AppDiscoveryItemView)this.mLayoutInflater.inflate(2130968579, viewGroup, false);
                appDiscoveryItemView.init(this.mIconClickListener, this.mLauncher.getAccessibilityDelegate(), this.mIconLongClickListener);
                return new AllAppsGridAdapter$ViewHolder((View)appDiscoveryItemView);
            }
            case 8: {
                return new AllAppsGridAdapter$ViewHolder(this.mLayoutInflater.inflate(2130968582, viewGroup, false));
            }
            case 16: {
                final View inflate = this.mLayoutInflater.inflate(2130968585, viewGroup, false);
                inflate.setOnClickListener((View$OnClickListener)new AllAppsGridAdapter$1(this));
                return new AllAppsGridAdapter$ViewHolder(inflate);
            }
            case 64: {
                return new AllAppsGridAdapter$ViewHolder(this.mLayoutInflater.inflate(2130968584, viewGroup, false));
            }
            case 256: {
                return new AllAppsGridAdapter$ViewHolder(this.mLayoutInflater.inflate(2130968580, viewGroup, false));
            }
            case 32:
            case 128: {
                return new AllAppsGridAdapter$ViewHolder(this.mLayoutInflater.inflate(2130968581, viewGroup, false));
            }
        }
    }
    
    public boolean onFailedToRecycleView(final AllAppsGridAdapter$ViewHolder allAppsGridAdapter$ViewHolder) {
        return true;
    }
    
    public void setBindViewCallback(final AllAppsGridAdapter$BindViewCallback mBindViewCallback) {
        this.mBindViewCallback = mBindViewCallback;
    }
    
    public void setIconFocusListener(final View$OnFocusChangeListener mIconFocusListener) {
        this.mIconFocusListener = mIconFocusListener;
    }
    
    public void setLastSearchQuery(final String s) {
        this.mEmptySearchMessage = this.mLauncher.getResources().getString(2131492910, new Object[] { s });
        this.mMarketSearchIntent = this.mSearchController.createMarketSearchIntent(s);
    }
    
    public void setNumAppsPerRow(final int n) {
        this.mAppsPerRow = n;
        this.mGridLayoutMgr.setSpanCount(n);
    }
    
    public void setSearchController(final AllAppsSearchBarController mSearchController) {
        this.mSearchController = mSearchController;
    }
}

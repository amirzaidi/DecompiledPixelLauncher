// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import com.android.launcher3.util.PackageManagerHelper;
import android.view.View$AccessibilityDelegate;
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
import android.support.v7.widget.M;
import android.support.v7.widget.q;
import com.android.launcher3.ItemInfo;
import android.view.View;
import android.view.View$OnClickListener;

final class AllAppsGridAdapter$1 implements View$OnClickListener
{
    final /* synthetic */ AllAppsGridAdapter this$0;
    
    AllAppsGridAdapter$1(final AllAppsGridAdapter this$0) {
        this.this$0 = this$0;
    }
    
    public void onClick(final View view) {
        this.this$0.mLauncher.startActivitySafely(view, this.this$0.mMarketSearchIntent, null);
    }
}

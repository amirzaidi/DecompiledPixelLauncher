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
import com.android.launcher3.config.FeatureFlags;
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
import com.android.launcher3.Utilities;
import android.support.a.d;
import com.android.launcher3.anim.SpringAnimationHandler;
import android.support.a.b;
import android.support.a.a;
import com.android.launcher3.anim.SpringAnimationHandler$AnimationFactory;

class AllAppsGridAdapter$AllAppsSpringAnimationFactory implements SpringAnimationHandler$AnimationFactory
{
    final /* synthetic */ AllAppsGridAdapter this$0;
    
    private AllAppsGridAdapter$AllAppsSpringAnimationFactory(final AllAppsGridAdapter this$0) {
        this.this$0 = this$0;
    }
    
    private int getAppPosition(final int n, final int n2, final int n3) {
        int n4 = 0;
        if (n < n2) {
            return n;
        }
        if (n2 != 0) {
            n4 = 1;
        }
        return n3 - n2 + n - n4;
    }
    
    private float getColumnFactor(final int n, final int n2) {
        final boolean b = true;
        boolean b2 = false;
        final float n3 = n2 / 2;
        int n4 = (int)Math.abs(n - n3);
        if (n2 % 2 == 0) {
            b2 = b;
        }
        if (b2 && n < n3) {
            --n4;
        }
        int i = n4;
        float n5 = 0.0f;
        while (i > 0) {
            if (i == (b ? 1 : 0)) {
                n5 += 0.2f;
            }
            else {
                n5 += 0.1f;
            }
            --i;
        }
        return n5;
    }
    
    public a initialize(final AllAppsGridAdapter$ViewHolder allAppsGridAdapter$ViewHolder) {
        return SpringAnimationHandler.forView(allAppsGridAdapter$ViewHolder.itemView, b.agJ, 0.0f);
    }
    
    public void update(final a a, final AllAppsGridAdapter$ViewHolder allAppsGridAdapter$ViewHolder) {
        final float n = 900.0f;
        final int appPosition = this.getAppPosition(allAppsGridAdapter$ViewHolder.getAdapterPosition(), Math.min(this.this$0.mAppsPerRow, this.this$0.mApps.getPredictedApps().size()), this.this$0.mAppsPerRow);
        final int n2 = appPosition % this.this$0.mAppsPerRow;
        int abs = appPosition / this.this$0.mAppsPerRow;
        final int n3 = this.this$0.mApps.getNumAppRows() - 1;
        if (abs > n3 / 2) {
            abs = Math.abs(n3 - abs);
        }
        final float n4 = (abs + 1) * 0.5f;
        final float columnFactor = this.getColumnFactor(n2, this.this$0.mAppsPerRow);
        ((a)((a)a.aub((n4 + columnFactor) * -100.0f)).aue((columnFactor + n4) * 100.0f)).atV().aus(Utilities.boundToRange(n - abs * 50.0f, 580.0f, n)).auo(0.55f);
    }
}

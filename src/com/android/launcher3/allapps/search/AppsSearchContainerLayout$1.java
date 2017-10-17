// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps.search;

import android.text.Editable;
import android.text.method.TextKeyListener;
import android.view.KeyEvent;
import com.android.launcher3.config.FeatureFlags;
import android.widget.FrameLayout$LayoutParams;
import com.android.launcher3.graphics.TintedDrawableSpan;
import android.text.SpannableString;
import android.support.v7.widget.m;
import java.util.ArrayList;
import android.text.Spannable;
import android.text.Selection;
import android.util.AttributeSet;
import android.content.Context;
import android.text.SpannableStringBuilder;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.Launcher;
import com.android.launcher3.allapps.AllAppsRecyclerView;
import com.android.launcher3.allapps.AlphabeticalAppsList;
import com.android.launcher3.allapps.AllAppsGridAdapter;
import com.android.launcher3.allapps.SearchUiManager;
import android.widget.FrameLayout;
import android.graphics.Rect;
import com.android.launcher3.DeviceProfile;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.View;
import com.android.launcher3.allapps.SearchUiManager$OnScrollRangeChangeListener;
import android.view.View$OnLayoutChangeListener;

final class AppsSearchContainerLayout$1 implements View$OnLayoutChangeListener
{
    final /* synthetic */ AppsSearchContainerLayout this$0;
    final /* synthetic */ SearchUiManager$OnScrollRangeChangeListener val$listener;
    
    AppsSearchContainerLayout$1(final AppsSearchContainerLayout this$0, final SearchUiManager$OnScrollRangeChangeListener val$listener) {
        this.this$0 = this$0;
        this.val$listener = val$listener;
    }
    
    public void onLayoutChange(final View view, final int n, final int n2, final int n3, final int n4, final int n5, final int n6, final int n7, final int n8) {
        final DeviceProfile deviceProfile = this.this$0.mLauncher.getDeviceProfile();
        if (!deviceProfile.isVerticalBarLayout()) {
            final Rect insets = this.this$0.mLauncher.getDragLayer().getInsets();
            this.val$listener.onScrollRangeChanged(n4 - deviceProfile.hotseatBarBottomPaddingPx - insets.bottom - (((ViewGroup$MarginLayoutParams)this.this$0.getLayoutParams()).bottomMargin + (this.this$0.mMinHeight - this.this$0.mSearchBoxHeight + insets.top)));
        }
        else {
            this.val$listener.onScrollRangeChanged(n4);
        }
    }
}

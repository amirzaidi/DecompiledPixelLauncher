// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace;

import java.util.List;
import java.util.Collections;
import java.util.ArrayList;
import com.android.launcher3.popup.PopupContainerWithArrow;
import android.animation.ValueAnimator;
import com.android.launcher3.Launcher;
import com.google.android.apps.nexuslauncher.logging.UserEventDispatcherImpl;
import android.animation.LayoutTransition;
import com.android.launcher3.dynamicui.WallpaperColorInfo;
import android.view.LayoutInflater;
import android.text.TextUtils;
import android.text.TextUtils$TruncateAt;
import com.android.launcher3.util.Themes;
import android.util.AttributeSet;
import android.content.Context;
import android.os.Handler;
import android.text.TextPaint;
import com.android.launcher3.BubbleTextView;
import android.view.ViewGroup;
import com.google.android.apps.nexuslauncher.graphics.IcuDateTextView;
import android.content.res.ColorStateList;
import android.widget.TextView;
import android.widget.ImageView;
import android.view.View$OnLongClickListener;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.widget.FrameLayout;
import android.view.View;
import android.view.View$OnClickListener;

final class k implements View$OnClickListener
{
    final /* synthetic */ SmartspaceView eT;
    
    k(final SmartspaceView et) {
        this.eT = et;
    }
    
    public void onClick(final View view) {
        if (this.eT.el != null && this.eT.el.dI()) {
            this.eT.dD(2);
            this.eT.el.eD.dP(view);
        }
    }
}

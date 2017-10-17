// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace;

import java.util.List;
import java.util.Collections;
import java.util.ArrayList;
import com.android.launcher3.popup.PopupContainerWithArrow;
import android.animation.ValueAnimator;
import android.util.Log;
import com.android.launcher3.Launcher;
import com.google.android.apps.nexuslauncher.logging.UserEventDispatcherImpl;
import android.view.LayoutInflater;
import android.text.TextUtils$TruncateAt;
import com.android.launcher3.dynamicui.WallpaperColorInfo;
import android.text.TextUtils;
import com.android.launcher3.util.Themes;
import android.util.AttributeSet;
import android.content.Context;
import android.os.Handler;
import com.android.launcher3.BubbleTextView;
import com.google.android.apps.nexuslauncher.graphics.IcuDateTextView;
import android.content.res.ColorStateList;
import android.widget.ImageView;
import android.view.ViewGroup;
import android.text.TextPaint;
import android.widget.TextView;
import android.view.View$OnLongClickListener;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.widget.FrameLayout;
import android.view.View;
import android.view.View$OnClickListener;

final class i implements View$OnClickListener
{
    final /* synthetic */ SmartspaceView ea;
    
    i(final SmartspaceView ea) {
        this.ea = ea;
    }
    
    public void onClick(final View view) {
        if (this.ea.dq != null && this.ea.dq.cR()) {
            this.ea.cp(10001);
            this.ea.dq.dO.cu(view);
        }
    }
}

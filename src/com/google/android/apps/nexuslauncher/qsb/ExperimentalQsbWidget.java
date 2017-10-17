// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.content.SharedPreferences;
import android.content.Intent;
import android.graphics.Rect;
import com.android.launcher3.DeviceProfile;
import android.widget.FrameLayout$LayoutParams;
import android.view.View$MeasureSpec;
import android.util.AttributeSet;
import android.content.Context;

public class ExperimentalQsbWidget extends f
{
    public ExperimentalQsbWidget(final Context context) {
        this(context, null);
    }
    
    public ExperimentalQsbWidget(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public ExperimentalQsbWidget(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
    }
    
    protected void onMeasure(final int n, final int n2) {
        if (this.P != null) {
            final DeviceProfile deviceProfile = this.Q.getDeviceProfile();
            final int size = View$MeasureSpec.getSize(n);
            ((FrameLayout$LayoutParams)this.P.getLayoutParams()).width = size - (DeviceProfile.calculateCellWidth(size, deviceProfile.inv.numColumns) - deviceProfile.iconSizePx);
        }
        super.onMeasure(n, n2);
    }
    
    protected int u(final boolean b) {
        int n;
        if (b) {
            n = 2130968614;
        }
        else {
            n = 2130968615;
        }
        return n;
    }
    
    protected void v(final Rect rect, final Intent intent) {
        if (!this.R) {
            intent.putExtra("source_mic_alpha", 0.0f);
        }
    }
    
    protected boolean w(final SharedPreferences sharedPreferences) {
        return false;
    }
}

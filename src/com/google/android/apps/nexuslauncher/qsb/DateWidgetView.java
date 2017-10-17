// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.graphics.Paint;
import com.android.launcher3.DeviceProfile;
import android.view.View$MeasureSpec;
import com.android.launcher3.Launcher;
import android.text.format.DateFormat;
import android.text.Editable;
import android.graphics.Rect;
import java.util.Locale;
import android.widget.LinearLayout$LayoutParams;
import android.view.View;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.content.Context;
import android.text.TextWatcher;
import android.widget.LinearLayout;

public class DateWidgetView extends LinearLayout implements TextWatcher
{
    private String F;
    private float G;
    private DoubleShadowTextClock H;
    private DoubleShadowTextClock I;
    private int J;
    
    public DateWidgetView(final Context context, final AttributeSet set) {
        super(context, set);
        this.F = "";
        this.J = 0;
    }
    
    private void H() {
        this.F = "";
        this.I();
    }
    
    private void I() {
        if (this.J <= 0) {
            return;
        }
        final String string = this.H.getText().toString();
        if (this.F.equals(string)) {
            return;
        }
        this.F = string;
        if (string.isEmpty()) {
            return;
        }
        final TextPaint paint = this.H.getPaint();
        final float textSize = paint.getTextSize();
        float g = this.G;
        for (int i = 0; i < 10; ++i) {
            paint.setTextSize(g);
            final float measureText = paint.measureText(string);
            if (measureText <= this.J) {
                break;
            }
            g = g * this.J / measureText;
        }
        if (Float.compare(g, textSize) == 0) {
            paint.setTextSize(textSize);
        }
        else {
            this.H.setTextSize(0, g);
            this.K();
        }
    }
    
    private void J(final View view, final int marginEnd) {
        final LinearLayout$LayoutParams linearLayout$LayoutParams = (LinearLayout$LayoutParams)view.getLayoutParams();
        linearLayout$LayoutParams.setMarginEnd(marginEnd);
        linearLayout$LayoutParams.resolveLayoutDirection(linearLayout$LayoutParams.getLayoutDirection());
    }
    
    private void K() {
        final Locale default1 = Locale.getDefault();
        if (default1 != null && Locale.ENGLISH.getLanguage().equals(default1.getLanguage())) {
            final TextPaint paint = this.H.getPaint();
            final Rect rect = new Rect();
            ((Paint)paint).getTextBounds("x", 0, 1, rect);
            this.I.setPadding(0, 0, 0, (int)(Math.abs(((Paint)paint).getFontMetrics().ascent) - rect.height()) / 2);
        }
    }
    
    public void afterTextChanged(final Editable editable) {
        this.I();
    }
    
    public void beforeTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.H = (DoubleShadowTextClock)this.findViewById(2131623992);
        this.G = this.H.getTextSize();
        this.H.addTextChangedListener((TextWatcher)this);
        this.H.F(DateFormat.getBestDateTimePattern(Locale.getDefault(), "MMMMd"));
        (this.I = (DoubleShadowTextClock)this.findViewById(2131623993)).F(this.getContext().getString(2131493015, new Object[] { "EEEE", "yyyy" }));
        this.K();
    }
    
    protected void onMeasure(final int n, final int n2) {
        final DeviceProfile deviceProfile = Launcher.getLauncher(this.getContext()).getDeviceProfile();
        final int n3 = View$MeasureSpec.getSize(n) / deviceProfile.inv.numColumns;
        final int n4 = (n3 - deviceProfile.iconSizePx) / 2;
        this.J = (deviceProfile.inv.numColumns - Math.max(1, (int)Math.ceil(this.getResources().getDimension(2131427482) / n3))) * n3;
        this.H();
        this.J((View)this.H, n4);
        this.J((View)this.I, n4);
        super.onMeasure(n, n2);
    }
    
    public void onTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
    }
}

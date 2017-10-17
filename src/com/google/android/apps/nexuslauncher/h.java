// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import android.net.Uri;
import android.content.Intent;
import android.text.Editable;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.allapps.DefaultAppSearchController;
import android.os.CountDownTimer;

final class h extends CountDownTimer
{
    final /* synthetic */ b dP;
    
    h(final b dp, final long n, final long n2) {
        this.dP = dp;
        super(n, n2);
    }
    
    public void onFinish() {
        this.dP.cX(true);
    }
    
    public void onTick(final long n) {
        if (!this.dP.dw) {
            this.dP.cW();
        }
        this.dP.mInput.setText((CharSequence)("\u2764 " + (100 - n / 30)));
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common;

import android.support.v4.app.bb;
import android.os.Bundle;
import android.content.DialogInterface;
import android.content.DialogInterface$OnDismissListener;
import com.google.android.gms.common.internal.l;
import android.app.Dialog;
import android.content.DialogInterface$OnCancelListener;
import android.support.v4.app.aX;

public class m extends aX
{
    private DialogInterface$OnCancelListener kR;
    private Dialog kS;
    
    public m() {
        this.kS = null;
        this.kR = null;
    }
    
    public static m ov(final Dialog dialog, final DialogInterface$OnCancelListener kr) {
        final m m = new m();
        final Dialog ks = (Dialog)l.ho(dialog, "Cannot display null dialog");
        ks.setOnCancelListener((DialogInterface$OnCancelListener)null);
        ks.setOnDismissListener((DialogInterface$OnDismissListener)null);
        m.kS = ks;
        if (kr != null) {
            m.kR = kr;
        }
        return m;
    }
    
    public void onCancel(final DialogInterface dialogInterface) {
        if (this.kR != null) {
            this.kR.onCancel(dialogInterface);
        }
    }
    
    public Dialog onCreateDialog(final Bundle bundle) {
        if (this.kS == null) {
            this.aqi(false);
        }
        return this.kS;
    }
    
    public void ou(final bb bb, final String s) {
        super.ou(bb, s);
    }
}

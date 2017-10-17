// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common;

import android.support.v4.app.aW;
import android.os.Bundle;
import android.content.DialogInterface;
import android.content.DialogInterface$OnDismissListener;
import com.google.android.gms.common.internal.l;
import android.app.Dialog;
import android.content.DialogInterface$OnCancelListener;
import android.support.v4.app.aT;

public class m extends aT
{
    private DialogInterface$OnCancelListener nJ;
    private Dialog nK;
    
    public m() {
        this.nK = null;
        this.nJ = null;
    }
    
    public static m rh(final Dialog dialog, final DialogInterface$OnCancelListener nj) {
        final m m = new m();
        final Dialog nk = (Dialog)l.kc(dialog, "Cannot display null dialog");
        nk.setOnCancelListener((DialogInterface$OnCancelListener)null);
        nk.setOnDismissListener((DialogInterface$OnDismissListener)null);
        m.nK = nk;
        if (nj != null) {
            m.nJ = nj;
        }
        return m;
    }
    
    public void onCancel(final DialogInterface dialogInterface) {
        if (this.nJ != null) {
            this.nJ.onCancel(dialogInterface);
        }
    }
    
    public Dialog onCreateDialog(final Bundle bundle) {
        if (this.nK == null) {
            this.arj(false);
        }
        return this.nK;
    }
    
    public void rg(final aW aw, final String s) {
        super.rg(aw, s);
    }
}

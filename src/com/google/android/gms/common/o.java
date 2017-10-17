// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common;

import android.app.FragmentManager;
import android.os.Bundle;
import android.content.DialogInterface;
import android.content.DialogInterface$OnDismissListener;
import com.google.android.gms.common.internal.l;
import android.app.Dialog;
import android.content.DialogInterface$OnCancelListener;
import android.app.DialogFragment;

public class o extends DialogFragment
{
    private DialogInterface$OnCancelListener nM;
    private Dialog nN;
    
    public o() {
        this.nN = null;
        this.nM = null;
    }
    
    public static o rl(final Dialog dialog, final DialogInterface$OnCancelListener nm) {
        final o o = new o();
        final Dialog nn = (Dialog)l.kc(dialog, "Cannot display null dialog");
        nn.setOnCancelListener((DialogInterface$OnCancelListener)null);
        nn.setOnDismissListener((DialogInterface$OnDismissListener)null);
        o.nN = nn;
        if (nm != null) {
            o.nM = nm;
        }
        return o;
    }
    
    public void onCancel(final DialogInterface dialogInterface) {
        if (this.nM != null) {
            this.nM.onCancel(dialogInterface);
        }
    }
    
    public Dialog onCreateDialog(final Bundle bundle) {
        if (this.nN == null) {
            this.setShowsDialog(false);
        }
        return this.nN;
    }
    
    public void show(final FragmentManager fragmentManager, final String s) {
        super.show(fragmentManager, s);
    }
}

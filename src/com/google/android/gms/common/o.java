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
    private DialogInterface$OnCancelListener kU;
    private Dialog kV;
    
    public o() {
        this.kV = null;
        this.kU = null;
    }
    
    public static o oz(final Dialog dialog, final DialogInterface$OnCancelListener ku) {
        final o o = new o();
        final Dialog kv = (Dialog)l.ho(dialog, "Cannot display null dialog");
        kv.setOnCancelListener((DialogInterface$OnCancelListener)null);
        kv.setOnDismissListener((DialogInterface$OnDismissListener)null);
        o.kV = kv;
        if (ku != null) {
            o.kU = ku;
        }
        return o;
    }
    
    public void onCancel(final DialogInterface dialogInterface) {
        if (this.kU != null) {
            this.kU.onCancel(dialogInterface);
        }
    }
    
    public Dialog onCreateDialog(final Bundle bundle) {
        if (this.kV == null) {
            this.setShowsDialog(false);
        }
        return this.kV;
    }
    
    public void show(final FragmentManager fragmentManager, final String s) {
        super.show(fragmentManager, s);
    }
}

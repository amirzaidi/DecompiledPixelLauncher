// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import com.google.android.gms.internal.bw;
import com.google.android.gms.internal.by;
import com.google.android.gms.common.internal.I;
import android.util.TypedValue;
import com.google.android.gms.common.a.c;
import android.content.Intent;
import android.app.AlertDialog;
import android.content.res.Resources;
import android.content.DialogInterface$OnClickListener;
import com.google.android.gms.R$string;
import android.view.View;
import android.app.AlertDialog$Builder;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import android.app.Dialog;
import com.google.android.gms.common.internal.P;
import android.content.DialogInterface$OnCancelListener;
import com.google.android.gms.internal.aC;
import android.app.Activity;
import com.google.android.gms.common.api.GoogleApiActivity;
import android.app.PendingIntent;
import android.content.Context;

public class a extends f
{
    public static final int kx;
    private static final a ky;
    
    static {
        ky = new a();
        kx = f.kC;
    }
    
    public static a nI() {
        return a.ky;
    }
    
    public PendingIntent nA(final Context context, final int n, final int n2) {
        return super.nA(context, n, n2);
    }
    
    public void nB(final Context context, final ConnectionResult connectionResult, final int n) {
        final PendingIntent no = this.nO(context, connectionResult);
        if (no != null) {
            n.oy(connectionResult.nu(), context, GoogleApiActivity.eR(context, no, n));
        }
    }
    
    public final boolean nC(final int n) {
        return super.nC(n);
    }
    
    public boolean nD(final Activity activity, final aC ac, final int n, final int n2, final DialogInterface$OnCancelListener dialogInterface$OnCancelListener) {
        final Dialog nk = this.nK((Context)activity, n, P.jh(ac, this.nJ((Context)activity, n, "d"), n2), dialogInterface$OnCancelListener);
        if (nk != null) {
            this.nE(activity, nk, "GooglePlayServicesErrorDialog", dialogInterface$OnCancelListener);
            return true;
        }
        return false;
    }
    
    void nE(final Activity activity, final Dialog dialog, final String s, final DialogInterface$OnCancelListener dialogInterface$OnCancelListener) {
        if (!(activity instanceof android.support.v4.app.a)) {
            if (!com.google.android.gms.common.a.n.jV()) {
                throw new RuntimeException("This Activity does not support Fragments.");
            }
            o.oz(dialog, dialogInterface$OnCancelListener).show(activity.getFragmentManager(), s);
        }
        else {
            m.ov(dialog, dialogInterface$OnCancelListener).ou(((android.support.v4.app.a)activity).ahY(), s);
        }
    }
    
    public Dialog nF(final Activity activity, final int n, final int n2, final DialogInterface$OnCancelListener dialogInterface$OnCancelListener) {
        return this.nK((Context)activity, n, P.ji(activity, this.nJ((Context)activity, n, "d"), n2), dialogInterface$OnCancelListener);
    }
    
    public boolean nG(final Activity activity, final int n, final int n2, final DialogInterface$OnCancelListener dialogInterface$OnCancelListener) {
        final Dialog nf = this.nF(activity, n, n2, dialogInterface$OnCancelListener);
        if (nf != null) {
            this.nE(activity, nf, "GooglePlayServicesErrorDialog", dialogInterface$OnCancelListener);
            return true;
        }
        return false;
    }
    
    public Dialog nH(final Activity activity, final DialogInterface$OnCancelListener dialogInterface$OnCancelListener) {
        final int indeterminate = 1;
        final ProgressBar view = new ProgressBar((Context)activity, (AttributeSet)null, 16842874);
        view.setIndeterminate((boolean)(indeterminate != 0));
        view.setVisibility(0);
        final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder((Context)activity);
        alertDialog$Builder.setView((View)view);
        final String oe = k.oe((Context)activity);
        final Resources resources = activity.getResources();
        final int common_google_play_services_updating_text = R$string.common_google_play_services_updating_text;
        final Object[] array = new Object[indeterminate];
        array[0] = oe;
        alertDialog$Builder.setMessage((CharSequence)resources.getString(common_google_play_services_updating_text, array));
        alertDialog$Builder.setTitle(R$string.common_google_play_services_updating_title);
        alertDialog$Builder.setPositiveButton((CharSequence)"", (DialogInterface$OnClickListener)null);
        final AlertDialog create = alertDialog$Builder.create();
        this.nE(activity, (Dialog)create, "GooglePlayServicesUpdatingDialog", dialogInterface$OnCancelListener);
        return (Dialog)create;
    }
    
    public Intent nJ(final Context context, final int n, final String s) {
        return super.nJ(context, n, s);
    }
    
    Dialog nK(final Context context, int n, final P p4, final DialogInterface$OnCancelListener onCancelListener) {
        AlertDialog$Builder alertDialog$Builder = null;
        if (n != 0) {
            if (c.jx(context) && n == 2) {
                n = 42;
            }
            if (com.google.android.gms.common.a.n.kb()) {
                final TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(16843529, typedValue, true);
                if ("Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId))) {
                    alertDialog$Builder = new AlertDialog$Builder(context, 5);
                }
            }
            if (alertDialog$Builder == null) {
                alertDialog$Builder = new AlertDialog$Builder(context);
            }
            alertDialog$Builder.setMessage((CharSequence)I.iH(context, n, k.oe(context)));
            if (onCancelListener != null) {
                alertDialog$Builder.setOnCancelListener(onCancelListener);
            }
            final String if1 = I.iF(context, n);
            if (if1 != null) {
                alertDialog$Builder.setPositiveButton((CharSequence)if1, (DialogInterface$OnClickListener)p4);
            }
            final String ij = I.iJ(context, n);
            if (ij != null) {
                alertDialog$Builder.setTitle((CharSequence)ij);
            }
            return (Dialog)alertDialog$Builder.create();
        }
        return null;
    }
    
    public PendingIntent nL(final Context context, final int n, final int n2, final String s) {
        return super.nL(context, n, n2, s);
    }
    
    public Intent nM(final int n) {
        return super.nM(n);
    }
    
    public int nN(final Context context) {
        return super.nN(context);
    }
    
    public PendingIntent nO(final Context context, final ConnectionResult connectionResult) {
        if (!connectionResult.nx()) {
            int nu = connectionResult.nu();
            if (c.jx(context) && nu == 2) {
                nu = 42;
            }
            return this.nA(context, nu, 0);
        }
        return connectionResult.ny();
    }
    
    public boolean nP(final Context context, final int n) {
        return super.nP(context, n);
    }
    
    public bw nz(final Context context, final by by) {
        final IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        final bw bw = new bw(by);
        context.registerReceiver((BroadcastReceiver)bw, intentFilter);
        bw.zo(context);
        if (this.nT(context, "com.google.android.gms")) {
            return bw;
        }
        by.zq();
        bw.zp();
        return null;
    }
}

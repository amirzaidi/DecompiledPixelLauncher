// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common;

import com.google.android.gms.common.internal.I;
import android.util.TypedValue;
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
import com.google.android.gms.internal.aw;
import android.app.Activity;
import com.google.android.gms.common.api.GoogleApiActivity;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import com.google.android.gms.internal.bq;
import com.google.android.gms.internal.bs;
import com.google.android.gms.common.a.c;
import android.app.PendingIntent;
import android.content.Context;

public class a extends f
{
    public static final int np;
    private static final a nq;
    
    static {
        nq = new a();
        np = f.nu;
    }
    
    public static a getInstance() {
        return a.nq;
    }
    
    public PendingIntent qA(final Context context, final ConnectionResult connectionResult) {
        if (!connectionResult.qk()) {
            int qh = connectionResult.qh();
            if (c.ml(context) && qh == 2) {
                qh = 42;
            }
            return this.qn(context, qh, 0);
        }
        return connectionResult.ql();
    }
    
    public boolean qB(final Context context, final int n) {
        return super.qB(context, n);
    }
    
    public bq qm(final Context context, final bs bs) {
        final IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        final bq bq = new bq(bs);
        context.registerReceiver((BroadcastReceiver)bq, intentFilter);
        bq.zn(context);
        if (this.qF(context, "com.google.android.gms")) {
            return bq;
        }
        bs.zp();
        bq.zo();
        return null;
    }
    
    public PendingIntent qn(final Context context, final int n, final int n2) {
        return super.qn(context, n, n2);
    }
    
    public void qo(final Context context, final ConnectionResult connectionResult, final int n) {
        final PendingIntent qa = this.qA(context, connectionResult);
        if (qa != null) {
            n.rk(connectionResult.qh(), context, GoogleApiActivity.hF(context, qa, n));
        }
    }
    
    public final boolean qp(final int n) {
        return super.qp(n);
    }
    
    public boolean qq(final Activity activity, final aw aw, final int n, final int n2, final DialogInterface$OnCancelListener dialogInterface$OnCancelListener) {
        final Dialog qw = this.qw((Context)activity, n, P.lV(aw, this.qv((Context)activity, n, "d"), n2), dialogInterface$OnCancelListener);
        if (qw != null) {
            this.qr(activity, qw, "GooglePlayServicesErrorDialog", dialogInterface$OnCancelListener);
            return true;
        }
        return false;
    }
    
    void qr(final Activity activity, final Dialog dialog, final String s, final DialogInterface$OnCancelListener dialogInterface$OnCancelListener) {
        if (!(activity instanceof android.support.v4.app.a)) {
            if (!com.google.android.gms.common.a.n.mJ()) {
                throw new RuntimeException("This Activity does not support Fragments.");
            }
            o.rl(dialog, dialogInterface$OnCancelListener).show(activity.getFragmentManager(), s);
        }
        else {
            m.rh(dialog, dialogInterface$OnCancelListener).rg(((android.support.v4.app.a)activity).aji(), s);
        }
    }
    
    public Dialog qs(final Activity activity, final int n, final int n2, final DialogInterface$OnCancelListener dialogInterface$OnCancelListener) {
        return this.qw((Context)activity, n, P.lW(activity, this.qv((Context)activity, n, "d"), n2), dialogInterface$OnCancelListener);
    }
    
    public boolean qt(final Activity activity, final int n, final int n2, final DialogInterface$OnCancelListener dialogInterface$OnCancelListener) {
        final Dialog qs = this.qs(activity, n, n2, dialogInterface$OnCancelListener);
        if (qs != null) {
            this.qr(activity, qs, "GooglePlayServicesErrorDialog", dialogInterface$OnCancelListener);
            return true;
        }
        return false;
    }
    
    public Dialog qu(final Activity activity, final DialogInterface$OnCancelListener dialogInterface$OnCancelListener) {
        final int indeterminate = 1;
        final ProgressBar view = new ProgressBar((Context)activity, (AttributeSet)null, 16842874);
        view.setIndeterminate((boolean)(indeterminate != 0));
        view.setVisibility(0);
        final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder((Context)activity);
        alertDialog$Builder.setView((View)view);
        final String qq = k.qQ((Context)activity);
        final Resources resources = activity.getResources();
        final int common_google_play_services_updating_text = R$string.common_google_play_services_updating_text;
        final Object[] array = new Object[indeterminate];
        array[0] = qq;
        alertDialog$Builder.setMessage((CharSequence)resources.getString(common_google_play_services_updating_text, array));
        alertDialog$Builder.setTitle(R$string.common_google_play_services_updating_title);
        alertDialog$Builder.setPositiveButton((CharSequence)"", (DialogInterface$OnClickListener)null);
        final AlertDialog create = alertDialog$Builder.create();
        this.qr(activity, (Dialog)create, "GooglePlayServicesUpdatingDialog", dialogInterface$OnCancelListener);
        return (Dialog)create;
    }
    
    public Intent qv(final Context context, final int n, final String s) {
        return super.qv(context, n, s);
    }
    
    Dialog qw(final Context context, int n, final P p4, final DialogInterface$OnCancelListener onCancelListener) {
        AlertDialog$Builder alertDialog$Builder = null;
        if (n != 0) {
            if (c.ml(context) && n == 2) {
                n = 42;
            }
            if (com.google.android.gms.common.a.n.mP()) {
                final TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(16843529, typedValue, true);
                if ("Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId))) {
                    alertDialog$Builder = new AlertDialog$Builder(context, 5);
                }
            }
            if (alertDialog$Builder == null) {
                alertDialog$Builder = new AlertDialog$Builder(context);
            }
            alertDialog$Builder.setMessage((CharSequence)I.lv(context, n, k.qQ(context)));
            if (onCancelListener != null) {
                alertDialog$Builder.setOnCancelListener(onCancelListener);
            }
            final String lt = I.lt(context, n);
            if (lt != null) {
                alertDialog$Builder.setPositiveButton((CharSequence)lt, (DialogInterface$OnClickListener)p4);
            }
            final String lx = I.lx(context, n);
            if (lx != null) {
                alertDialog$Builder.setTitle((CharSequence)lx);
            }
            return (Dialog)alertDialog$Builder.create();
        }
        return null;
    }
    
    public PendingIntent qx(final Context context, final int n, final int n2, final String s) {
        return super.qx(context, n, n2, s);
    }
    
    public Intent qy(final int n) {
        return super.qy(n);
    }
    
    public int qz(final Context context) {
        return super.qz(context);
    }
}

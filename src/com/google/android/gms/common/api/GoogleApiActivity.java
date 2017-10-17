// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.api;

import android.content.DialogInterface;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.bG;
import android.os.Parcelable;
import android.content.Context;
import android.os.Bundle;
import android.content.IntentSender$SendIntentException;
import android.content.Intent;
import com.google.android.gms.common.a;
import android.app.PendingIntent;
import android.util.Log;
import android.content.DialogInterface$OnCancelListener;
import android.app.Activity;

public class GoogleApiActivity extends Activity implements DialogInterface$OnCancelListener
{
    protected int hD;
    
    public GoogleApiActivity() {
        this.hD = 0;
    }
    
    private void hC() {
        final boolean hd = true;
        final Bundle extras = this.getIntent().getExtras();
        if (extras == null) {
            Log.e("GoogleApiActivity", "Activity started without extras");
            this.finish();
            return;
        }
        final PendingIntent pendingIntent = (PendingIntent)extras.get("pending_intent");
        final Integer n = (Integer)extras.get("error_code");
        if (pendingIntent == null && n == null) {
            Log.e("GoogleApiActivity", "Activity started without resolution");
            this.finish();
            return;
        }
        if (pendingIntent == null) {
            a.getInstance().qt(this, n, 2, (DialogInterface$OnCancelListener)this);
            this.hD = (hd ? 1 : 0);
        }
        else {
            try {
                this.startIntentSenderForResult(pendingIntent.getIntentSender(), 1, (Intent)null, 0, 0, 0);
                this.hD = 1;
            }
            catch (IntentSender$SendIntentException ex) {
                Log.e("GoogleApiActivity", "Failed to launch pendingIntent", (Throwable)ex);
                this.finish();
            }
        }
    }
    
    public static PendingIntent hD(final Context context, final PendingIntent pendingIntent, final int n, final boolean b) {
        return PendingIntent.getActivity(context, 0, hE(context, pendingIntent, n, b), 134217728);
    }
    
    public static Intent hE(final Context context, final PendingIntent pendingIntent, final int n, final boolean b) {
        final Intent intent = new Intent(context, (Class)GoogleApiActivity.class);
        intent.putExtra("pending_intent", (Parcelable)pendingIntent);
        intent.putExtra("failing_client_id", n);
        intent.putExtra("notify_manager", b);
        return intent;
    }
    
    public static PendingIntent hF(final Context context, final PendingIntent pendingIntent, final int n) {
        return hD(context, pendingIntent, n, true);
    }
    
    private void hG(final int n, final bG bg) {
        switch (n) {
            case 0: {
                bg.AO(new ConnectionResult(13, null), this.getIntent().getIntExtra("failing_client_id", -1));
                break;
            }
            case -1: {
                bg.Bf();
                break;
            }
        }
    }
    
    protected void hB(final int result) {
        this.setResult(result);
    }
    
    protected void onActivityResult(final int n, final int n2, final Intent intent) {
        final boolean b = true;
        super.onActivityResult(n, n2, intent);
        if (n != (b ? 1 : 0)) {
            if (n == 2) {
                this.hD = 0;
                this.hB(n2);
            }
        }
        else {
            final boolean booleanExtra = this.getIntent().getBooleanExtra("notify_manager", b);
            this.hD = 0;
            final bG bi = bG.Bi();
            this.hB(n2);
            if (booleanExtra) {
                this.hG(n2, bi);
            }
        }
        this.finish();
    }
    
    public void onCancel(final DialogInterface dialogInterface) {
        this.setResult(this.hD = 0);
        this.finish();
    }
    
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.hD = bundle.getInt("resolution");
        }
        if (this.hD != 1) {
            this.hC();
        }
    }
    
    protected void onSaveInstanceState(final Bundle bundle) {
        bundle.putInt("resolution", this.hD);
        super.onSaveInstanceState(bundle);
    }
}

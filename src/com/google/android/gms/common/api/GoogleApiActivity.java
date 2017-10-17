// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.api;

import android.content.DialogInterface;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.bM;
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
    protected int eK;
    
    public GoogleApiActivity() {
        this.eK = 0;
    }
    
    private void eO() {
        final boolean ek = true;
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
            a.nI().nG(this, n, 2, (DialogInterface$OnCancelListener)this);
            this.eK = (ek ? 1 : 0);
        }
        else {
            try {
                this.startIntentSenderForResult(pendingIntent.getIntentSender(), 1, (Intent)null, 0, 0, 0);
                this.eK = 1;
            }
            catch (IntentSender$SendIntentException ex) {
                Log.e("GoogleApiActivity", "Failed to launch pendingIntent", (Throwable)ex);
                this.finish();
            }
        }
    }
    
    public static PendingIntent eP(final Context context, final PendingIntent pendingIntent, final int n, final boolean b) {
        return PendingIntent.getActivity(context, 0, eQ(context, pendingIntent, n, b), 134217728);
    }
    
    public static Intent eQ(final Context context, final PendingIntent pendingIntent, final int n, final boolean b) {
        final Intent intent = new Intent(context, (Class)GoogleApiActivity.class);
        intent.putExtra("pending_intent", (Parcelable)pendingIntent);
        intent.putExtra("failing_client_id", n);
        intent.putExtra("notify_manager", b);
        return intent;
    }
    
    public static PendingIntent eR(final Context context, final PendingIntent pendingIntent, final int n) {
        return eP(context, pendingIntent, n, true);
    }
    
    private void eS(final int n, final bM bm) {
        switch (n) {
            case 0: {
                bm.AP(new ConnectionResult(13, null), this.getIntent().getIntExtra("failing_client_id", -1));
                break;
            }
            case -1: {
                bm.Bg();
                break;
            }
        }
    }
    
    protected void eN(final int result) {
        this.setResult(result);
    }
    
    protected void onActivityResult(final int n, final int n2, final Intent intent) {
        final boolean b = true;
        super.onActivityResult(n, n2, intent);
        if (n != (b ? 1 : 0)) {
            if (n == 2) {
                this.eK = 0;
                this.eN(n2);
            }
        }
        else {
            final boolean booleanExtra = this.getIntent().getBooleanExtra("notify_manager", b);
            this.eK = 0;
            final bM bj = bM.Bj();
            this.eN(n2);
            if (booleanExtra) {
                this.eS(n2, bj);
            }
        }
        this.finish();
    }
    
    public void onCancel(final DialogInterface dialogInterface) {
        this.setResult(this.eK = 0);
        this.finish();
    }
    
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.eK = bundle.getInt("resolution");
        }
        if (this.eK != 1) {
            this.eO();
        }
    }
    
    protected void onSaveInstanceState(final Bundle bundle) {
        bundle.putInt("resolution", this.eK);
        super.onSaveInstanceState(bundle);
    }
}

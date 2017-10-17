// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.LocationAvailability;
import android.util.Log;
import android.os.Message;
import android.os.Handler;
import com.google.android.gms.location.zze$zza;

class d extends zze$zza
{
    private Handler Ce;
    
    private void FW(final int what, final Object obj) {
        if (this.Ce != null) {
            final Message obtain = Message.obtain();
            obtain.what = what;
            obtain.obj = obj;
            this.Ce.sendMessage(obtain);
            return;
        }
        Log.e("LocationClientHelper", "Received a data in client after calling removeLocationUpdates.");
    }
    
    public void onLocationAvailability(final LocationAvailability locationAvailability) {
        this.FW(1, locationAvailability);
    }
    
    public void onLocationResult(final LocationResult locationResult) {
        this.FW(0, locationResult);
    }
}

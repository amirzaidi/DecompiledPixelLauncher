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
    private Handler Az;
    
    private void Fd(final int what, final Object obj) {
        if (this.Az != null) {
            final Message obtain = Message.obtain();
            obtain.what = what;
            obtain.obj = obj;
            this.Az.sendMessage(obtain);
            return;
        }
        Log.e("LocationClientHelper", "Received a data in client after calling removeLocationUpdates.");
    }
    
    public void onLocationAvailability(final LocationAvailability locationAvailability) {
        this.Fd(1, locationAvailability);
    }
    
    public void onLocationResult(final LocationResult locationResult) {
        this.Fd(0, locationResult);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import android.util.Log;
import android.os.Message;
import android.location.Location;
import android.os.Handler;
import com.google.android.gms.location.zzf$zza;

class k extends zzf$zza
{
    private Handler CB;
    
    public void onLocationChanged(final Location obj) {
        if (this.CB != null) {
            final Message obtain = Message.obtain();
            obtain.what = 1;
            obtain.obj = obj;
            this.CB.sendMessage(obtain);
            return;
        }
        Log.e("LocationClientHelper", "Received a location in client after calling removeLocationUpdates.");
    }
}

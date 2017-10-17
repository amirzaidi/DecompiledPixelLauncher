// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import android.util.Log;
import android.location.Location;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.g;
import android.os.Looper;
import android.content.Context;

public class a extends i
{
    private final h Ap;
    
    public a(final Context context, final Looper looper, final g g, final f f, final String s, final com.google.android.gms.common.internal.a a) {
        super(context, looper, g, f, s, a);
        this.Ap = new h(context, this.AK);
    }
    
    public Location ER() {
        return this.Ap.Fi();
    }
    
    public void ec() {
        final h ap = this.Ap;
        // monitorenter(ap)
        try {
            if (this.eg()) {
                try {
                    final h ap2 = this.Ap;
                    try {
                        ap2.Fk();
                        final h ap3 = this.Ap;
                        try {
                            ap3.Fj();
                        }
                        catch (Exception ex) {
                            Log.e("LocationClientImpl", "Client disconnected before listeners could be cleaned up", (Throwable)ex);
                        }
                    }
                    catch (Exception ex2) {}
                    finally {
                    }
                    // monitorexit(ap)
                }
                catch (Exception ex3) {}
            }
            super.ec();
        }
        finally {}
    }
}

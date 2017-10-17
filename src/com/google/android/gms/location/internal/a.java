// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import android.util.Log;
import android.location.Location;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.d;
import android.os.Looper;
import android.content.Context;

public class a extends i
{
    private final h BU;
    
    public a(final Context context, final Looper looper, final d d, final c c, final String s, final com.google.android.gms.common.internal.a a) {
        super(context, looper, d, c, s, a);
        this.BU = new h(context, this.Cp);
    }
    
    public Location FK() {
        return this.BU.Gb();
    }
    
    public void gJ() {
        final h bu = this.BU;
        // monitorenter(bu)
        try {
            if (this.gN()) {
                try {
                    final h bu2 = this.BU;
                    try {
                        bu2.Gd();
                        final h bu3 = this.BU;
                        try {
                            bu3.Gc();
                        }
                        catch (Exception ex) {
                            Log.e("LocationClientImpl", "Client disconnected before listeners could be cleaned up", (Throwable)ex);
                        }
                    }
                    catch (Exception ex2) {}
                    finally {
                    }
                    // monitorexit(bu)
                }
                catch (Exception ex3) {}
            }
            super.gJ();
        }
        finally {}
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common;

import android.util.Log;
import android.content.Context;

class e
{
    private static Context kB;
    
    static void nS(final Context context) {
        synchronized (e.class) {
            if (e.kB != null) {
                Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
            }
            else if (context != null) {
                e.kB = context.getApplicationContext();
            }
        }
    }
}

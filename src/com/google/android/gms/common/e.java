// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common;

import android.util.Log;
import android.content.Context;

class e
{
    private static Context nt;
    
    static void qE(final Context context) {
        synchronized (e.class) {
            if (e.nt != null) {
                Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
            }
            else if (context != null) {
                e.nt = context.getApplicationContext();
            }
        }
    }
}

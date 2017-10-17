// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.content.Context;

public class az
{
    private static az sA;
    private aW sz;
    
    static {
        az.sA = new az();
    }
    
    public az() {
        this.sz = null;
    }
    
    public static aW uR(final Context context) {
        return az.sA.uS(context);
    }
    
    public aW uS(Context applicationContext) {
        synchronized (this) {
            if (this.sz == null) {
                if (applicationContext.getApplicationContext() != null) {
                    applicationContext = applicationContext.getApplicationContext();
                }
                this.sz = new aW(applicationContext);
            }
            return this.sz;
        }
    }
}

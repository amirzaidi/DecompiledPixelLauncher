// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.stats;

import android.util.Log;
import android.os.SystemClock;
import android.support.v4.a.k;

public class f
{
    private final long jp;
    private final int jq;
    private final k jr;
    
    public f() {
        final int jq = 10;
        this.jp = 60000L;
        this.jq = jq;
        this.jr = new k(jq);
    }
    
    public f(final int jq, final long jp) {
        this.jp = jp;
        this.jq = jq;
        this.jr = new k();
    }
    
    private void mv(final long n, final long n2) {
        for (int i = this.jr.size() - 1; i >= 0; --i) {
            int n3;
            if (n2 - (long)this.jr.ahi(i) <= n) {
                n3 = 1;
            }
            else {
                n3 = 0;
            }
            if (n3 == 0) {
                this.jr.ahc(i);
            }
        }
    }
    
    public Long mt(final String s) {
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        long jp = this.jp;
        synchronized (this) {
            while (this.jr.size() >= this.jq) {
                this.mv(jp, elapsedRealtime);
                jp /= 2;
                Log.w("ConnectionTracker", new StringBuilder(94).append("The max capacity ").append(this.jq).append(" is not enough. Current durationThreshold is: ").append(jp).toString());
            }
            return (Long)this.jr.put(s, elapsedRealtime);
        }
    }
    
    public boolean mu(final String s) {
        synchronized (this) {
            return this.jr.remove(s) != null;
        }
    }
}

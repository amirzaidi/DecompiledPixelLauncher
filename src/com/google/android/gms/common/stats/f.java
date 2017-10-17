// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.stats;

import android.util.Log;
import android.os.SystemClock;
import android.support.v4.a.b;

public class f
{
    private final long mh;
    private final int mi;
    private final b mj;
    
    public f() {
        final int mi = 10;
        this.mh = 60000L;
        this.mi = mi;
        this.mj = new b(mi);
    }
    
    public f(final int mi, final long mh) {
        this.mh = mh;
        this.mi = mi;
        this.mj = new b();
    }
    
    private void pj(final long n, final long n2) {
        for (int i = this.mj.size() - 1; i >= 0; --i) {
            int n3;
            if (n2 - (long)this.mj.aia(i) <= n) {
                n3 = 1;
            }
            else {
                n3 = 0;
            }
            if (n3 == 0) {
                this.mj.ahU(i);
            }
        }
    }
    
    public Long ph(final String s) {
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        long mh = this.mh;
        synchronized (this) {
            while (this.mj.size() >= this.mi) {
                this.pj(mh, elapsedRealtime);
                mh /= 2;
                Log.w("ConnectionTracker", new StringBuilder(94).append("The max capacity ").append(this.mi).append(" is not enough. Current durationThreshold is: ").append(mh).toString());
            }
            return (Long)this.mj.put(s, elapsedRealtime);
        }
    }
    
    public boolean pi(final String s) {
        synchronized (this) {
            return this.mj.remove(s) != null;
        }
    }
}

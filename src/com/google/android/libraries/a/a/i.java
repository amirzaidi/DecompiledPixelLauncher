// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.libraries.a.a;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.io.PrintWriter;

class i
{
    private final m[] NP;
    private final String NQ;
    private int mNextIndex;
    
    public i(final String nq, final int n) {
        this.NQ = nq;
        this.NP = new m[n];
        this.mNextIndex = 0;
    }
    
    private static boolean Ec(final m m, final int n, final String s) {
        boolean b = false;
        if (m != null && m.NT == n && m.NU.equals(s)) {
            b = true;
        }
        return b;
    }
    
    private void Ee(final int n, final String s, final float n2) {
        final int n3 = (this.mNextIndex + this.NP.length - 1) % this.NP.length;
        final int n4 = (this.mNextIndex + this.NP.length - 2) % this.NP.length;
        if (Ec(this.NP[n3], n, s) && Ec(this.NP[n4], n, s)) {
            this.NP[n3].En(n, s, n2);
            this.NP[n4].NV++;
            return;
        }
        if (this.NP[this.mNextIndex] == null) {
            this.NP[this.mNextIndex] = new m(null);
        }
        this.NP[this.mNextIndex].En(n, s, n2);
        this.mNextIndex = (this.mNextIndex + 1) % this.NP.length;
    }
    
    public void Ed(final String s, final boolean b) {
        int n;
        if (!b) {
            n = 4;
        }
        else {
            n = 3;
        }
        this.Ee(n, s, 0.0f);
    }
    
    public void Ef(final String s, final int n) {
        this.Ee(2, s, n);
    }
    
    public void Eg(final String s, final float n) {
        this.Ee(1, s, n);
    }
    
    public void Eh(final String s, final PrintWriter printWriter) {
        int i = 0;
        printWriter.println(String.valueOf(this.NQ).concat(" event history:"));
        final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("  HH:mm:ss.SSSZ  ", Locale.US);
        final Date date = new Date();
        while (i < this.NP.length) {
            final m m = this.NP[(this.mNextIndex + this.NP.length - i - 1) % this.NP.length];
            if (m != null) {
                date.setTime(m.mTime);
                final StringBuilder append = new StringBuilder(s).append(simpleDateFormat.format(date)).append(m.NU);
                switch (m.NT) {
                    case 4: {
                        append.append(": false");
                        break;
                    }
                    case 3: {
                        append.append(": true");
                        break;
                    }
                    case 1: {
                        append.append(": ").append(m.NW);
                        break;
                    }
                    case 2: {
                        append.append(": ").append((int)m.NW);
                        break;
                    }
                }
                if (m.NV > 0) {
                    append.append(" & ").append(m.NV).append(" similar events");
                }
                printWriter.println(append);
            }
            ++i;
        }
    }
    
    public void Ei(final String s) {
        this.Ee(0, s, 0.0f);
    }
}

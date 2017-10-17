// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.phenotype;

import android.content.Context;

public class h
{
    private final String mf;
    private final String mg;
    private final String mh;
    
    public h(final String s) {
        this(s, "", "");
    }
    
    private h(final String mf, final String mg, final String mh) {
        this.mf = mf;
        this.mg = mg;
        this.mh = mh;
    }
    
    public h ph(final String s) {
        return new h(this.mf, this.mg, s);
    }
    
    public g pi(final String s, final boolean b) {
        final String value = String.valueOf(this.mg);
        final String value2 = String.valueOf(s);
        String concat;
        if (value2.length() == 0) {
            concat = new String(value);
        }
        else {
            concat = value.concat(value2);
        }
        final String value3 = String.valueOf(this.mh);
        final String value4 = String.valueOf(s);
        String concat2;
        if (value4.length() == 0) {
            concat2 = new String(value3);
        }
        else {
            concat2 = value3.concat(value4);
        }
        return pf(concat, null, concat2, 0, this.mf, null, b);
    }
}

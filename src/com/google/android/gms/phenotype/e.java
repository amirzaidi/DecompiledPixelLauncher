// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.phenotype;

import android.content.Context;
import com.google.android.gms.internal.i;

public class e
{
    private final String yq;
    private final String yr;
    private final String ys;
    
    public e(final String s) {
        this(s, "", "");
    }
    
    private e(final String yq, final String yr, final String ys) {
        this.yq = yq;
        this.yr = yr;
        this.ys = ys;
    }
    
    public e CQ(final String s) {
        return new e(this.yq, this.yr, s);
    }
    
    public d CR(final String s, final boolean b) {
        final String value = String.valueOf(this.yr);
        final String value2 = String.valueOf(s);
        String concat;
        if (value2.length() == 0) {
            concat = new String(value);
        }
        else {
            concat = value.concat(value2);
        }
        final String value3 = String.valueOf(this.ys);
        final String value4 = String.valueOf(s);
        String concat2;
        if (value4.length() == 0) {
            concat2 = new String(value3);
        }
        else {
            concat2 = value3.concat(value4);
        }
        return CO(concat, null, concat2, 0, this.yq, null, b);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

public abstract class FlagOp
{
    public static FlagOp NO_OP;
    
    static {
        FlagOp.NO_OP = new FlagOp$1();
    }
    
    public static FlagOp addFlag(final int n) {
        return new FlagOp$2(n);
    }
    
    public static FlagOp removeFlag(final int n) {
        return new FlagOp$3(n);
    }
    
    public int apply(final int n) {
        return n;
    }
}

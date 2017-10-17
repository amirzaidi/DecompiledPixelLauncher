// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

final class FlagOp$3 extends FlagOp
{
    final /* synthetic */ int val$flag;
    
    FlagOp$3(final int val$flag) {
        this.val$flag = val$flag;
        super(null);
    }
    
    public int apply(final int n) {
        return ~this.val$flag & n;
    }
}

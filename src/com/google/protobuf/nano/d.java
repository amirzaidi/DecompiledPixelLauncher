// 
// Decompiled by Procyon v0.5.30
// 

package com.google.protobuf.nano;

import java.nio.charset.Charset;

public final class d
{
    protected static final Charset PF;
    protected static final Charset PG;
    public static final Object PH;
    
    static {
        PF = Charset.forName("UTF-8");
        PG = Charset.forName("ISO-8859-1");
        PH = new Object();
    }
    
    public static void WM(final e e, final e e2) {
        if (e.PI != null) {
            e2.PI = e.PI.clone();
        }
    }
}

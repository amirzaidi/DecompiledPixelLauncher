// 
// Decompiled by Procyon v0.5.30
// 

package com.google.protobuf.nano;

import java.nio.charset.Charset;

public final class d
{
    protected static final Charset KY;
    protected static final Charset KZ;
    public static final Object La;
    
    static {
        KY = Charset.forName("UTF-8");
        KZ = Charset.forName("ISO-8859-1");
        La = new Object();
    }
    
    public static void SR(final e e, final e e2) {
        if (e.Lb != null) {
            e2.Lb = e.Lb.clone();
        }
    }
}

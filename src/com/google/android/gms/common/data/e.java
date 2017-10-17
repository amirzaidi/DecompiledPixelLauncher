// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.l;
import java.util.ArrayList;
import java.util.HashMap;

public class e
{
    private final HashMap ne;
    private final String[] nf;
    private final String ng;
    private boolean nh;
    private final ArrayList ni;
    private String nj;
    
    private e(final String[] array, final String ng) {
        this.nf = (String[])l.kh(array);
        this.ni = new ArrayList();
        this.ng = ng;
        this.ne = new HashMap();
        this.nh = false;
        this.nj = null;
    }
}

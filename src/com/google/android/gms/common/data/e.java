// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.l;
import java.util.ArrayList;
import java.util.HashMap;

public class e
{
    private final HashMap km;
    private final String[] kn;
    private final String ko;
    private boolean kp;
    private final ArrayList kq;
    private String kr;
    
    private e(final String[] array, final String ko) {
        this.kn = (String[])l.ht(array);
        this.kq = new ArrayList();
        this.ko = ko;
        this.km = new HashMap();
        this.kp = false;
        this.kr = null;
    }
}

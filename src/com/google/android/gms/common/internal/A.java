// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.b;
import android.content.Context;
import java.util.Iterator;
import java.util.Collection;
import java.util.HashSet;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import com.google.android.gms.internal.bX;
import android.accounts.Account;
import android.view.View;

public final class a
{
    private final View hH;
    private final Account hI;
    private final String hJ;
    private final bX hK;
    private Integer hL;
    private final Set hM;
    private final int hN;
    private final Set hO;
    private final String hP;
    private final Map hQ;
    
    public a(final Account hi, final Set set, Map empty_MAP, final int hn, final View hh, final String hj, final String hp, final bX hk) {
        this.hI = hi;
        Set<Object> hm;
        if (set != null) {
            hm = Collections.unmodifiableSet((Set<?>)set);
        }
        else {
            hm = (Set<Object>)Collections.EMPTY_SET;
        }
        this.hM = hm;
        if (empty_MAP == null) {
            empty_MAP = Collections.EMPTY_MAP;
        }
        this.hQ = empty_MAP;
        this.hH = hh;
        this.hN = hn;
        this.hJ = hj;
        this.hP = hp;
        this.hK = hk;
        final HashSet<Object> set2 = new HashSet<Object>(this.hM);
        final Iterator<Q> iterator = this.hQ.values().iterator();
        while (iterator.hasNext()) {
            set2.addAll(iterator.next().jX);
        }
        this.hO = Collections.unmodifiableSet((Set<?>)set2);
    }
    
    public static a ja(final Context context) {
        return new b(context).gp();
    }
    
    public Account getAccount() {
        return this.hI;
    }
    
    public String jb() {
        return this.hP;
    }
    
    public String jc() {
        return this.hJ;
    }
    
    public void jd(final Integer hl) {
        this.hL = hl;
    }
    
    public Map je() {
        return this.hQ;
    }
    
    public Account jf() {
        Account hi;
        if (this.hI == null) {
            hi = new Account("<<default account>>", "com.google");
        }
        else {
            hi = this.hI;
        }
        return hi;
    }
    
    public Set jg() {
        return this.hM;
    }
    
    public Integer jh() {
        return this.hL;
    }
    
    public bX ji() {
        return this.hK;
    }
    
    public Set jj() {
        return this.hO;
    }
}

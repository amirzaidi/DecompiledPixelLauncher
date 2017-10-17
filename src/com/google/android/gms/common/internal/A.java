// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.e;
import android.content.Context;
import java.util.Iterator;
import java.util.Collection;
import java.util.HashSet;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import com.google.android.gms.internal.cd;
import android.accounts.Account;
import android.view.View;

public final class a
{
    private final View eO;
    private final Account eP;
    private final String eQ;
    private final cd eR;
    private Integer eS;
    private final Set eT;
    private final int eU;
    private final Set eV;
    private final String eW;
    private final Map eX;
    
    public a(final Account ep, final Set set, Map empty_MAP, final int eu, final View eo, final String eq, final String ew, final cd er) {
        this.eP = ep;
        Set<Object> et;
        if (set != null) {
            et = Collections.unmodifiableSet((Set<?>)set);
        }
        else {
            et = (Set<Object>)Collections.EMPTY_SET;
        }
        this.eT = et;
        if (empty_MAP == null) {
            empty_MAP = Collections.EMPTY_MAP;
        }
        this.eX = empty_MAP;
        this.eO = eo;
        this.eU = eu;
        this.eQ = eq;
        this.eW = ew;
        this.eR = er;
        final HashSet<Object> set2 = new HashSet<Object>(this.eT);
        final Iterator<Q> iterator = this.eX.values().iterator();
        while (iterator.hasNext()) {
            set2.addAll(iterator.next().hf);
        }
        this.eV = Collections.unmodifiableSet((Set<?>)set2);
    }
    
    public static a gm(final Context context) {
        return new e(context).dJ();
    }
    
    public Account getAccount() {
        return this.eP;
    }
    
    public String gn() {
        return this.eW;
    }
    
    public String go() {
        return this.eQ;
    }
    
    public void gp(final Integer es) {
        this.eS = es;
    }
    
    public Map gq() {
        return this.eX;
    }
    
    public Account gr() {
        Account ep;
        if (this.eP == null) {
            ep = new Account("<<default account>>", "com.google");
        }
        else {
            ep = this.eP;
        }
        return ep;
    }
    
    public Set gs() {
        return this.eT;
    }
    
    public Integer gt() {
        return this.eS;
    }
    
    public cd gu() {
        return this.eR;
    }
    
    public Set gv() {
        return this.eV;
    }
}

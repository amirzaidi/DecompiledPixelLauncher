// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import java.util.Iterator;
import com.google.android.gms.auth.api.signin.a.b;
import java.util.List;
import java.util.Collections;
import android.text.TextUtils;
import java.util.Collection;
import java.util.Set;
import java.util.ArrayList;
import android.accounts.Account;
import java.util.Comparator;
import com.google.android.gms.common.api.Scope;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.api.k;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class GoogleSignInOptions extends AbstractSafeParcelable implements ReflectedParcelable, k
{
    public static final Parcelable$Creator CREATOR;
    public static final Scope Lg;
    public static final Scope Lh;
    private static Comparator Ll;
    public static final Scope Lp;
    public static final GoogleSignInOptions Lr;
    final int Lf;
    private Account Li;
    private final boolean Lj;
    private final boolean Lk;
    private boolean Lm;
    private String Ln;
    private final ArrayList Lo;
    private String Lq;
    
    static {
        Lp = new Scope("profile");
        Lg = new Scope("email");
        Lh = new Scope("openid");
        Lr = new a().Qw().Qv().build();
        CREATOR = (Parcelable$Creator)new c();
        GoogleSignInOptions.Ll = new e();
    }
    
    GoogleSignInOptions(final int lf, final ArrayList lo, final Account li, final boolean lm, final boolean lk, final boolean lj, final String ln, final String lq) {
        this.Lf = lf;
        this.Lo = lo;
        this.Li = li;
        this.Lm = lm;
        this.Lk = lk;
        this.Lj = lj;
        this.Ln = ln;
        this.Lq = lq;
    }
    
    private GoogleSignInOptions(final Set set, final Account account, final boolean b, final boolean b2, final boolean b3, final String s, final String s2) {
        this(2, new ArrayList(set), account, b, b2, b3, s, s2);
    }
    
    public boolean QA() {
        return this.Lk;
    }
    
    public boolean QB() {
        return this.Lm;
    }
    
    public boolean QC() {
        return this.Lj;
    }
    
    public ArrayList Qx() {
        return new ArrayList(this.Lo);
    }
    
    public String Qy() {
        return this.Lq;
    }
    
    public String Qz() {
        return this.Ln;
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (o == null) {
            return false;
        }
        try {
            final GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions)o;
            try {
                final ArrayList lo = this.Lo;
                try {
                    final int size = lo.size();
                    try {
                        final ArrayList qx = googleSignInOptions.Qx();
                        try {
                            if (size == qx.size()) {
                                final ArrayList lo2 = this.Lo;
                                try {
                                    if (!lo2.containsAll(googleSignInOptions.Qx())) {
                                        return false;
                                    }
                                    Label_0105: {
                                        if (this.Li == null) {
                                            break Label_0105;
                                        }
                                        final Account li = this.Li;
                                        try {
                                            Label_0114: {
                                                if (li.equals((Object)googleSignInOptions.getAccount())) {
                                                    break Label_0114;
                                                }
                                                Label_0103: {
                                                    return b;
                                                }
                                            }
                                            final String ln = this.Ln;
                                            try {
                                                Label_0216: {
                                                    if (TextUtils.isEmpty((CharSequence)ln)) {
                                                        break Label_0216;
                                                    }
                                                    final String ln2 = this.Ln;
                                                    try {
                                                        if (!ln2.equals(googleSignInOptions.Qz())) {
                                                            return b;
                                                        }
                                                        while (true) {
                                                            final boolean lj = this.Lj;
                                                            try {
                                                                if (lj != googleSignInOptions.QC()) {
                                                                    return b;
                                                                }
                                                                final boolean lm = this.Lm;
                                                                try {
                                                                    if (lm != googleSignInOptions.QB()) {
                                                                        return b;
                                                                    }
                                                                    final boolean lk = this.Lk;
                                                                    try {
                                                                        if (lk == googleSignInOptions.QA()) {
                                                                            b = true;
                                                                            return b;
                                                                        }
                                                                        return b;
                                                                        final String qz = googleSignInOptions.Qz();
                                                                        try {
                                                                            if (!TextUtils.isEmpty((CharSequence)qz)) {
                                                                                return b;
                                                                            }
                                                                            continue;
                                                                        }
                                                                        catch (ClassCastException ex) {
                                                                            return false;
                                                                        }
                                                                    }
                                                                    catch (ClassCastException ex2) {}
                                                                }
                                                                catch (ClassCastException ex3) {}
                                                            }
                                                            catch (ClassCastException ex4) {}
                                                        }
                                                    }
                                                    catch (ClassCastException ex5) {}
                                                }
                                            }
                                            catch (ClassCastException ex6) {}
                                        }
                                        // iftrue(Label_0103:, googleSignInOptions.getAccount() != null)
                                        catch (ClassCastException ex7) {}
                                    }
                                }
                                catch (ClassCastException ex8) {}
                            }
                            return false;
                        }
                        catch (ClassCastException ex9) {}
                    }
                    catch (ClassCastException ex10) {}
                }
                catch (ClassCastException ex11) {}
            }
            catch (ClassCastException ex12) {}
        }
        catch (ClassCastException ex13) {}
    }
    
    public Account getAccount() {
        return this.Li;
    }
    
    public int hashCode() {
        final ArrayList<String> list = (ArrayList<String>)new ArrayList<Comparable>();
        final Iterator<Scope> iterator = this.Lo.iterator();
        while (iterator.hasNext()) {
            list.add(iterator.next().gS());
        }
        Collections.sort((List<Comparable>)list);
        return new b().Qe(list).Qe(this.Li).Qe(this.Ln).Qf(this.Lj).Qf(this.Lm).Qf(this.Lk).Qg();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.QG(this, parcel, n);
    }
}

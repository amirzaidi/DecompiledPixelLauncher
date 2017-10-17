// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import java.util.Iterator;
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
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class GoogleSignInOptions extends AbstractSafeParcelable implements ReflectedParcelable, m
{
    public static final Parcelable$Creator CREATOR;
    public static final Scope JB;
    public static final Scope JC;
    private static Comparator JG;
    public static final Scope JK;
    public static final GoogleSignInOptions JM;
    final int JA;
    private Account JD;
    private final boolean JE;
    private final boolean JF;
    private boolean JH;
    private String JI;
    private final ArrayList JJ;
    private String JL;
    
    static {
        JK = new Scope("profile");
        JB = new Scope("email");
        JC = new Scope("openid");
        JM = new a().PD().PC().build();
        CREATOR = (Parcelable$Creator)new b();
        GoogleSignInOptions.JG = new e();
    }
    
    GoogleSignInOptions(final int ja, final ArrayList jj, final Account jd, final boolean jh, final boolean jf, final boolean je, final String ji, final String jl) {
        this.JA = ja;
        this.JJ = jj;
        this.JD = jd;
        this.JH = jh;
        this.JF = jf;
        this.JE = je;
        this.JI = ji;
        this.JL = jl;
    }
    
    private GoogleSignInOptions(final Set set, final Account account, final boolean b, final boolean b2, final boolean b3, final String s, final String s2) {
        this(2, new ArrayList(set), account, b, b2, b3, s, s2);
    }
    
    public ArrayList PE() {
        return new ArrayList(this.JJ);
    }
    
    public String PF() {
        return this.JL;
    }
    
    public String PG() {
        return this.JI;
    }
    
    public boolean PH() {
        return this.JF;
    }
    
    public boolean PI() {
        return this.JH;
    }
    
    public boolean PJ() {
        return this.JE;
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (o == null) {
            return false;
        }
        try {
            final GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions)o;
            try {
                final ArrayList jj = this.JJ;
                try {
                    final int size = jj.size();
                    try {
                        final ArrayList pe = googleSignInOptions.PE();
                        try {
                            if (size == pe.size()) {
                                final ArrayList jj2 = this.JJ;
                                try {
                                    if (!jj2.containsAll(googleSignInOptions.PE())) {
                                        return false;
                                    }
                                    Label_0105: {
                                        if (this.JD == null) {
                                            break Label_0105;
                                        }
                                        final Account jd = this.JD;
                                        try {
                                            Label_0114: {
                                                if (jd.equals((Object)googleSignInOptions.getAccount())) {
                                                    break Label_0114;
                                                }
                                                Label_0103: {
                                                    return b;
                                                }
                                            }
                                            final String ji = this.JI;
                                            try {
                                                Label_0216: {
                                                    if (TextUtils.isEmpty((CharSequence)ji)) {
                                                        break Label_0216;
                                                    }
                                                    final String ji2 = this.JI;
                                                    try {
                                                        if (!ji2.equals(googleSignInOptions.PG())) {
                                                            return b;
                                                        }
                                                        while (true) {
                                                            final boolean je = this.JE;
                                                            try {
                                                                if (je != googleSignInOptions.PJ()) {
                                                                    return b;
                                                                }
                                                                final boolean jh = this.JH;
                                                                try {
                                                                    if (jh != googleSignInOptions.PI()) {
                                                                        return b;
                                                                    }
                                                                    final boolean jf = this.JF;
                                                                    try {
                                                                        if (jf == googleSignInOptions.PH()) {
                                                                            b = true;
                                                                            return b;
                                                                        }
                                                                        return b;
                                                                        final String pg = googleSignInOptions.PG();
                                                                        try {
                                                                            if (!TextUtils.isEmpty((CharSequence)pg)) {
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
        return this.JD;
    }
    
    public int hashCode() {
        final ArrayList<String> list = (ArrayList<String>)new ArrayList<Comparable>();
        final Iterator<Scope> iterator = this.JJ.iterator();
        while (iterator.hasNext()) {
            list.add(iterator.next().el());
        }
        Collections.sort((List<Comparable>)list);
        return new com.google.android.gms.auth.api.signin.a.b().Pl(list).Pl(this.JD).Pl(this.JI).Pm(this.JE).Pm(this.JH).Pm(this.JF).Pn();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.PM(this, parcel, n);
    }
}

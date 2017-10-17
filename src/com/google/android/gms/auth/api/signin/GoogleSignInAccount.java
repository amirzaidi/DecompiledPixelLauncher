// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import java.util.Iterator;
import org.json.JSONException;
import java.util.Collections;
import org.json.JSONArray;
import com.google.android.gms.common.api.Scope;
import java.util.HashSet;
import org.json.JSONObject;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import com.google.android.gms.common.internal.l;
import java.util.Set;
import com.google.android.gms.common.a.m;
import android.net.Uri;
import java.util.List;
import java.util.Comparator;
import com.google.android.gms.common.a.a;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable
{
    public static final Parcelable$Creator CREATOR;
    public static a Jl;
    private static Comparator Jp;
    final int Jf;
    private String Jg;
    private String Jh;
    private String Ji;
    private String Jj;
    private String Jk;
    private long Jm;
    private String Jn;
    private String Jo;
    List Jq;
    private String Jr;
    private Uri Js;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
        GoogleSignInAccount.Jl = m.jR();
        GoogleSignInAccount.Jp = new c();
    }
    
    GoogleSignInAccount(final int jf, final String jh, final String ji, final String jj, final String jr, final Uri js, final String jg, final long jm, final String jk, final List jq, final String jo, final String jn) {
        this.Jf = jf;
        this.Jh = jh;
        this.Ji = ji;
        this.Jj = jj;
        this.Jr = jr;
        this.Js = js;
        this.Jg = jg;
        this.Jm = jm;
        this.Jk = jk;
        this.Jq = jq;
        this.Jo = jo;
        this.Jn = jn;
    }
    
    public static GoogleSignInAccount Ps(final String s, final String s2, final String s3, final String s4, final String s5, final String s6, final Uri uri, Long value, final String s7, final Set set) {
        if (value == null) {
            value = GoogleSignInAccount.Jl.js() / 1000L;
        }
        return new GoogleSignInAccount(3, s, s2, s3, s4, uri, null, value, l.hr(s7), new ArrayList((Collection)l.ht(set)), s5, s6);
    }
    
    public static GoogleSignInAccount Pu(final String s) {
        int i = 0;
        if (!TextUtils.isEmpty((CharSequence)s)) {
            final JSONObject jsonObject = new JSONObject(s);
            final String optString = jsonObject.optString("photoUrl", (String)null);
            Uri parse;
            if (TextUtils.isEmpty((CharSequence)optString)) {
                parse = null;
            }
            else {
                parse = Uri.parse(optString);
            }
            final long long1 = Long.parseLong(jsonObject.getString("expirationTime"));
            final HashSet<Scope> set = new HashSet<Scope>();
            for (JSONArray jsonArray = jsonObject.getJSONArray("grantedScopes"); i < jsonArray.length(); ++i) {
                set.add(new Scope(jsonArray.getString(i)));
            }
            return Ps(jsonObject.optString("id"), jsonObject.optString("tokenId", (String)null), jsonObject.optString("email", (String)null), jsonObject.optString("displayName", (String)null), jsonObject.optString("givenName", (String)null), jsonObject.optString("familyName", (String)null), parse, long1, jsonObject.getString("obfuscatedIdentifier"), set).Py(jsonObject.optString("serverAuthCode", (String)null));
        }
        return null;
    }
    
    private JSONObject Px() {
        final JSONObject jsonObject = new JSONObject();
    Label_0335_Outer:
        while (true) {
            JSONArray jsonArray = null;
            Scope scope = null;
            try {
                while (true) {
                Label_0310_Outer:
                    while (true) {
                        List jq;
                        List jq2;
                        Iterator<Scope> iterator;
                        Uri pt;
                        Scope next;
                        Label_0071:Label_0230_Outer:Label_0250_Outer:Label_0290_Outer:
                        while (true) {
                            Label_0062:Label_0270_Outer:
                            while (true) {
                                while (true) {
                                Label_0044:
                                    while (true) {
                                    Label_0035:
                                        while (true) {
                                        Label_0026:
                                            while (true) {
                                                Label_0017: {
                                                    if (this.getId() == null) {
                                                        break Label_0017;
                                                    }
                                                    Label_0178: {
                                                        break Label_0178;
                                                        while (true) {
                                                            jsonObject.put("expirationTime", this.Jm);
                                                            jsonObject.put("obfuscatedIdentifier", (Object)this.Pv());
                                                            try {
                                                                jsonArray = new JSONArray();
                                                                jq = this.Jq;
                                                                try {
                                                                    Collections.sort((List<Object>)jq, GoogleSignInAccount.Jp);
                                                                    jq2 = this.Jq;
                                                                    try {
                                                                        iterator = jq2.iterator();
                                                                        try {
                                                                            if (!iterator.hasNext()) {
                                                                                jsonObject.put("grantedScopes", (Object)jsonArray);
                                                                                return jsonObject;
                                                                            }
                                                                            Label_0355: {
                                                                                break Label_0355;
                                                                                pt = this.Pt();
                                                                                try {
                                                                                    jsonObject.put("photoUrl", (Object)pt.toString());
                                                                                    break Label_0071;
                                                                                    jsonObject.put("serverAuthCode", (Object)this.Pp());
                                                                                    continue Label_0310_Outer;
                                                                                    next = iterator.next();
                                                                                    try {
                                                                                        scope = next;
                                                                                    }
                                                                                    catch (JSONException ex) {}
                                                                                }
                                                                                catch (JSONException ex2) {}
                                                                            }
                                                                            jsonObject.put("tokenId", (Object)this.Pw());
                                                                            break Label_0026;
                                                                            jsonObject.put("id", (Object)this.getId());
                                                                            break;
                                                                            jsonObject.put("email", (Object)this.Pr());
                                                                            break Label_0035;
                                                                            jsonObject.put("displayName", (Object)this.PB());
                                                                            break Label_0044;
                                                                            jsonObject.put("familyName", (Object)this.PA());
                                                                            break Label_0062;
                                                                            jsonObject.put("givenName", (Object)this.Po());
                                                                        }
                                                                        catch (JSONException ex3) {}
                                                                    }
                                                                    catch (JSONException ex4) {}
                                                                }
                                                                catch (JSONException ex5) {}
                                                            }
                                                            catch (JSONException ex6) {}
                                                        }
                                                    }
                                                }
                                                if (this.Pw() != null) {
                                                    continue Label_0230_Outer;
                                                }
                                                break;
                                            }
                                            if (this.Pr() != null) {
                                                continue Label_0250_Outer;
                                            }
                                            break;
                                        }
                                        if (this.PB() != null) {
                                            continue Label_0290_Outer;
                                        }
                                        break;
                                    }
                                    if (this.Po() != null) {
                                        continue;
                                    }
                                    break;
                                }
                                if (this.PA() != null) {
                                    continue Label_0270_Outer;
                                }
                                break;
                            }
                            if (this.Pt() != null) {
                                continue Label_0335_Outer;
                            }
                            break;
                        }
                        if (this.Pp() == null) {
                            continue Label_0310_Outer;
                        }
                        break;
                    }
                    continue;
                }
            }
            catch (JSONException ex7) {}
            jsonArray.put((Object)scope.el());
            continue;
        }
    }
    
    public String PA() {
        return this.Jn;
    }
    
    public String PB() {
        return this.Jr;
    }
    
    public String Po() {
        return this.Jo;
    }
    
    public String Pp() {
        return this.Jg;
    }
    
    public long Pq() {
        return this.Jm;
    }
    
    public String Pr() {
        return this.Jj;
    }
    
    public Uri Pt() {
        return this.Js;
    }
    
    public String Pv() {
        return this.Jk;
    }
    
    public String Pw() {
        return this.Ji;
    }
    
    public GoogleSignInAccount Py(final String jg) {
        this.Jg = jg;
        return this;
    }
    
    public String Pz() {
        return this.Px().toString();
    }
    
    public boolean equals(final Object o) {
        return o instanceof GoogleSignInAccount && ((GoogleSignInAccount)o).Pz().equals(this.Pz());
    }
    
    public String getId() {
        return this.Jh;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.PQ(this, parcel, n);
    }
}

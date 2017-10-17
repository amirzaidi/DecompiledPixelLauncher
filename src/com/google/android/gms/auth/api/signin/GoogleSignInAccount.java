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
    public static a KQ;
    private static Comparator KU;
    final int KK;
    private String KL;
    private String KM;
    private String KN;
    private String KO;
    private String KP;
    private long KR;
    private String KS;
    private String KT;
    List KV;
    private String KW;
    private Uri KX;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
        GoogleSignInAccount.KQ = m.mF();
        GoogleSignInAccount.KU = new b();
    }
    
    GoogleSignInAccount(final int kk, final String km, final String kn, final String ko, final String kw, final Uri kx, final String kl, final long kr, final String kp, final List kv, final String kt, final String ks) {
        this.KK = kk;
        this.KM = km;
        this.KN = kn;
        this.KO = ko;
        this.KW = kw;
        this.KX = kx;
        this.KL = kl;
        this.KR = kr;
        this.KP = kp;
        this.KV = kv;
        this.KT = kt;
        this.KS = ks;
    }
    
    public static GoogleSignInAccount Ql(final String s, final String s2, final String s3, final String s4, final String s5, final String s6, final Uri uri, Long value, final String s7, final Set set) {
        if (value == null) {
            value = GoogleSignInAccount.KQ.mg() / 1000L;
        }
        return new GoogleSignInAccount(3, s, s2, s3, s4, uri, null, value, l.kf(s7), new ArrayList((Collection)l.kh(set)), s5, s6);
    }
    
    public static GoogleSignInAccount Qn(final String s) {
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
            return Ql(jsonObject.optString("id"), jsonObject.optString("tokenId", (String)null), jsonObject.optString("email", (String)null), jsonObject.optString("displayName", (String)null), jsonObject.optString("givenName", (String)null), jsonObject.optString("familyName", (String)null), parse, long1, jsonObject.getString("obfuscatedIdentifier"), set).Qr(jsonObject.optString("serverAuthCode", (String)null));
        }
        return null;
    }
    
    private JSONObject Qq() {
        final JSONObject jsonObject = new JSONObject();
    Label_0335_Outer:
        while (true) {
            JSONArray jsonArray = null;
            Scope scope = null;
            try {
                while (true) {
                Label_0310_Outer:
                    while (true) {
                        List kv;
                        List kv2;
                        Iterator<Scope> iterator;
                        Uri qm;
                        Scope next;
                        Label_0071:Label_0290_Outer:
                        while (true) {
                            Label_0062:Label_0250_Outer:Label_0270_Outer:
                            while (true) {
                            Label_0053:
                                while (true) {
                                Label_0044:
                                    while (true) {
                                    Label_0035:
                                        while (true) {
                                            while (true) {
                                                Label_0017: {
                                                    if (this.getId() == null) {
                                                        break Label_0017;
                                                    }
                                                    Label_0178: {
                                                        break Label_0178;
                                                        while (true) {
                                                            jsonObject.put("expirationTime", this.KR);
                                                            jsonObject.put("obfuscatedIdentifier", (Object)this.Qo());
                                                            try {
                                                                jsonArray = new JSONArray();
                                                                kv = this.KV;
                                                                try {
                                                                    Collections.sort((List<Object>)kv, GoogleSignInAccount.KU);
                                                                    kv2 = this.KV;
                                                                    try {
                                                                        iterator = kv2.iterator();
                                                                        try {
                                                                            if (!iterator.hasNext()) {
                                                                                jsonObject.put("grantedScopes", (Object)jsonArray);
                                                                                return jsonObject;
                                                                            }
                                                                            Label_0355: {
                                                                                break Label_0355;
                                                                                qm = this.Qm();
                                                                                try {
                                                                                    jsonObject.put("photoUrl", (Object)qm.toString());
                                                                                    break Label_0071;
                                                                                    jsonObject.put("serverAuthCode", (Object)this.Qi());
                                                                                    continue Label_0310_Outer;
                                                                                    next = iterator.next();
                                                                                    try {
                                                                                        scope = next;
                                                                                    }
                                                                                    catch (JSONException ex) {}
                                                                                }
                                                                                catch (JSONException ex2) {}
                                                                            }
                                                                            jsonObject.put("email", (Object)this.Qk());
                                                                            break Label_0035;
                                                                            jsonObject.put("familyName", (Object)this.Qt());
                                                                            break Label_0062;
                                                                            jsonObject.put("displayName", (Object)this.Qu());
                                                                            break Label_0044;
                                                                            jsonObject.put("givenName", (Object)this.Qh());
                                                                            break Label_0053;
                                                                            jsonObject.put("id", (Object)this.getId());
                                                                            break;
                                                                            jsonObject.put("tokenId", (Object)this.Qp());
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
                                                if (this.Qp() != null) {
                                                    continue;
                                                }
                                                break;
                                            }
                                            if (this.Qk() != null) {
                                                continue Label_0290_Outer;
                                            }
                                            break;
                                        }
                                        if (this.Qu() != null) {
                                            continue Label_0270_Outer;
                                        }
                                        break;
                                    }
                                    if (this.Qh() != null) {
                                        continue;
                                    }
                                    break;
                                }
                                if (this.Qt() != null) {
                                    continue Label_0250_Outer;
                                }
                                break;
                            }
                            if (this.Qm() != null) {
                                continue Label_0335_Outer;
                            }
                            break;
                        }
                        if (this.Qi() == null) {
                            continue Label_0310_Outer;
                        }
                        break;
                    }
                    continue;
                }
            }
            catch (JSONException ex7) {}
            jsonArray.put((Object)scope.gS());
            continue;
        }
    }
    
    public String Qh() {
        return this.KT;
    }
    
    public String Qi() {
        return this.KL;
    }
    
    public long Qj() {
        return this.KR;
    }
    
    public String Qk() {
        return this.KO;
    }
    
    public Uri Qm() {
        return this.KX;
    }
    
    public String Qo() {
        return this.KP;
    }
    
    public String Qp() {
        return this.KN;
    }
    
    public GoogleSignInAccount Qr(final String kl) {
        this.KL = kl;
        return this;
    }
    
    public String Qs() {
        return this.Qq().toString();
    }
    
    public String Qt() {
        return this.KS;
    }
    
    public String Qu() {
        return this.KW;
    }
    
    public boolean equals(final Object o) {
        return o instanceof GoogleSignInAccount && ((GoogleSignInAccount)o).Qs().equals(this.Qs());
    }
    
    public String getId() {
        return this.KM;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.QJ(this, parcel, n);
    }
}

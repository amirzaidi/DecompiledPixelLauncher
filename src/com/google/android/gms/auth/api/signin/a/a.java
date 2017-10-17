// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.auth.api.signin.a;

import org.json.JSONException;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.l;
import android.content.Context;
import java.util.concurrent.locks.ReentrantLock;
import android.content.SharedPreferences;
import java.util.concurrent.locks.Lock;

public class a
{
    private static a KE;
    private static final Lock KG;
    private final Lock KF;
    private final SharedPreferences KH;
    
    static {
        KG = new ReentrantLock();
    }
    
    a(final Context context) {
        this.KF = new ReentrantLock();
        this.KH = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }
    
    public static a Qa(final Context context) {
        l.kh(context);
        a.KG.lock();
        try {
            if (a.KE == null) {
                a.KE = new a(context.getApplicationContext());
            }
            return a.KE;
        }
        finally {
            a.KG.unlock();
        }
    }
    
    private String Qb(final String s, final String s2) {
        final String value = String.valueOf(":");
        return new StringBuilder(String.valueOf(s).length() + 0 + String.valueOf(value).length() + String.valueOf(s2).length()).append(s).append(value).append(s2).toString();
    }
    
    public GoogleSignInAccount PZ() {
        return this.Qd(this.Qc("defaultGoogleSignInAccount"));
    }
    
    protected String Qc(final String s) {
        this.KF.lock();
        try {
            return this.KH.getString(s, (String)null);
        }
        finally {
            this.KF.unlock();
        }
    }
    
    GoogleSignInAccount Qd(final String s) {
        GoogleSignInAccount qn = null;
        if (!TextUtils.isEmpty((CharSequence)s)) {
            final String qc = this.Qc(this.Qb("googleSignInAccount", s));
            if (qc != null) {
                try {
                    qn = GoogleSignInAccount.Qn(qc);
                }
                catch (JSONException ex) {
                    return null;
                }
            }
            return qn;
        }
        return null;
    }
}

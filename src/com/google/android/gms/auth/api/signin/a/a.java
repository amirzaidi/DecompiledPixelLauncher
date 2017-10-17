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
    private static a IZ;
    private static final Lock Jb;
    private final Lock Ja;
    private final SharedPreferences Jc;
    
    static {
        Jb = new ReentrantLock();
    }
    
    a(final Context context) {
        this.Ja = new ReentrantLock();
        this.Jc = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }
    
    public static a Ph(final Context context) {
        l.ht(context);
        a.Jb.lock();
        try {
            if (a.IZ == null) {
                a.IZ = new a(context.getApplicationContext());
            }
            return a.IZ;
        }
        finally {
            a.Jb.unlock();
        }
    }
    
    private String Pi(final String s, final String s2) {
        final String value = String.valueOf(":");
        return new StringBuilder(String.valueOf(s).length() + 0 + String.valueOf(value).length() + String.valueOf(s2).length()).append(s).append(value).append(s2).toString();
    }
    
    public GoogleSignInAccount Pg() {
        return this.Pk(this.Pj("defaultGoogleSignInAccount"));
    }
    
    protected String Pj(final String s) {
        this.Ja.lock();
        try {
            return this.Jc.getString(s, (String)null);
        }
        finally {
            this.Ja.unlock();
        }
    }
    
    GoogleSignInAccount Pk(final String s) {
        GoogleSignInAccount pu = null;
        if (!TextUtils.isEmpty((CharSequence)s)) {
            final String pj = this.Pj(this.Pi("googleSignInAccount", s));
            if (pj != null) {
                try {
                    pu = GoogleSignInAccount.Pu(pj);
                }
                catch (JSONException ex) {
                    return null;
                }
            }
            return pu;
        }
        return null;
    }
}

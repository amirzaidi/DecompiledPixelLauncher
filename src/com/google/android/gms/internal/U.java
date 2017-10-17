// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.accounts.Account;
import android.util.Log;

public class u
{
    public static String sy(final Integer n) {
        if (n != null) {
            String s;
            if (!Log.isLoggable("GCoreUlr", 2)) {
                s = new StringBuilder(15).append("tag#").append(n % 20).toString();
            }
            else {
                s = String.valueOf(n);
            }
            return s;
        }
        return "(null)";
    }
    
    public static String sz(final Account account) {
        if (account != null) {
            String s;
            if (!Log.isLoggable("GCoreUlr", 2)) {
                s = new StringBuilder(20).append("account#").append(account.name.hashCode() % 20).append("#").toString();
            }
            else {
                s = account.name;
            }
            return s;
        }
        return "null";
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.content.Context;
import com.google.android.gms.common.k;
import android.os.RemoteException;
import android.util.Log;
import android.os.Binder;
import android.accounts.Account;

public class zza extends zzq$zza
{
    int zzajy;
    
    public static Account zza(final zzq zzq) {
        final Account account = null;
        if (zzq != null) {
            final long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                zzq.getAccount();
            }
            catch (RemoteException ex) {
                Log.w("AccountAccessor", "Remote account accessor probably died");
            }
            finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return account;
    }
    
    public boolean equals(final Object o) {
        if (this == o) {
            return true;
        }
        if (o instanceof zza) {
            final zza zza = (zza)o;
            return null.equals((Object)null);
        }
        return false;
    }
    
    public Account getAccount() {
        final int callingUid = Binder.getCallingUid();
        if (callingUid == this.zzajy) {
            return null;
        }
        if (!k.qS(null, callingUid)) {
            throw new SecurityException("Caller is not GooglePlayServices");
        }
        this.zzajy = callingUid;
        return null;
    }
}

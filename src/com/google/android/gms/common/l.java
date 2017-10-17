// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common;

import com.google.android.gms.dynamic.zzd;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.common.internal.zzs;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import android.util.Log;
import com.google.android.gms.common.a.d;
import com.google.android.gms.common.internal.zzs$zza;

abstract class l extends zzs$zza
{
    private int kQ;
    
    protected l(byte[] copyOfRange) {
        final int n = 25;
        boolean b = false;
        if (copyOfRange.length != n) {
            final int length = copyOfRange.length;
            final String value = String.valueOf(d.jy(copyOfRange, 0, copyOfRange.length, false));
            Log.wtf("GoogleCertificates", new StringBuilder(String.valueOf(value).length() + 51).append("Cert hash data has incorrect length (").append(length).append("):\n").append(value).toString(), (Throwable)new Exception());
            copyOfRange = Arrays.copyOfRange(copyOfRange, 0, n);
            if (copyOfRange.length == n) {
                b = true;
            }
            com.google.android.gms.common.internal.l.hq(b, new StringBuilder(55).append("cert hash data has incorrect length. length=").append(copyOfRange.length).toString());
        }
        this.kQ = Arrays.hashCode(copyOfRange);
    }
    
    protected static byte[] ot(final String s) {
        final String s2 = "ISO-8859-1";
        try {
            return s.getBytes(s2);
        }
        catch (UnsupportedEncodingException ex) {
            throw new AssertionError((Object)ex);
        }
    }
    
    public boolean equals(final Object o) {
        if (o == null || !(o instanceof zzs)) {
            return false;
        }
        try {
            final zzs zzs = (zzs)o;
            try {
                final int zzarg = zzs.zzarg();
                try {
                    if (zzarg != this.hashCode()) {
                        return false;
                    }
                    final zzd zzarf = zzs.zzarf();
                    if (zzarf == null) {
                        return false;
                    }
                    final Object zzag = zze.zzag(zzarf);
                    try {
                        final byte[] array = (byte[])zzag;
                        try {
                            return Arrays.equals(this.nR(), array);
                        }
                        catch (RemoteException ex) {
                            Log.e("GoogleCertificates", "iCertData failed to retrive data from remote");
                            return false;
                        }
                    }
                    catch (RemoteException ex2) {}
                }
                catch (RemoteException ex3) {}
            }
            catch (RemoteException ex4) {}
        }
        catch (RemoteException ex5) {}
    }
    
    public int hashCode() {
        return this.kQ;
    }
    
    abstract byte[] nR();
    
    public zzd zzarf() {
        return zze.zzal(this.nR());
    }
    
    public int zzarg() {
        return this.hashCode();
    }
}

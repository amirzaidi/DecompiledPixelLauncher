// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import com.google.android.gms.internal.I;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class ContextManagerClientInfo extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final int IN;
    private final int IO;
    private final String IP;
    private I IQ;
    private final int IR;
    private final String IS;
    private final int IT;
    private final String IU;
    private final String IV;
    private final int IW;
    private final String mPackageName;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    ContextManagerClientInfo(final int it, final String ip, final String mPackageName, final int ir, final String iv, final int io, final int iw, final String is, final String iu, final int in) {
        this.IT = it;
        this.IP = ip;
        this.mPackageName = mPackageName;
        this.IR = ir;
        this.IV = iv;
        this.IO = io;
        this.IW = iw;
        this.IS = is;
        this.IU = iu;
        this.IN = in;
    }
    
    public String Nn() {
        switch (this.IW) {
            default: {
                return "unknownPartyType";
            }
            case 0: {
                return "0P";
            }
            case 1: {
                return "1P";
            }
            case 3: {
                return "3P";
            }
        }
    }
    
    int No() {
        return this.IW;
    }
    
    public String Np() {
        return this.IS;
    }
    
    public int Nq() {
        return this.IN;
    }
    
    public String Nr() {
        return this.IU;
    }
    
    public I Ns() {
        if (this.IP != null) {
            if (this.IQ == null) {
                this.IQ = new I(this.IP);
            }
            return this.IQ;
        }
        return null;
    }
    
    public String Nt() {
        return this.IV;
    }
    
    public int Nu() {
        return this.IO;
    }
    
    public String Nv() {
        return this.IP;
    }
    
    int Nw() {
        return this.IT;
    }
    
    public int Nx() {
        return this.IR;
    }
    
    public String getPackageName() {
        return this.mPackageName;
    }
    
    public String toString() {
        final String value = String.valueOf(this.Ns());
        final String value2 = String.valueOf(this.getPackageName());
        final int nx = this.Nx();
        final String value3 = String.valueOf(this.Nt());
        final int nu = this.Nu();
        final String value4 = String.valueOf(this.Nn());
        final String value5 = String.valueOf(this.Np());
        final String value6 = String.valueOf(this.Nr());
        return new StringBuilder(String.valueOf(value).length() + 100 + String.valueOf(value2).length() + String.valueOf(value3).length() + String.valueOf(value4).length() + String.valueOf(value5).length() + String.valueOf(value6).length()).append("(account=").append(value).append(", ").append(value2).append("(").append(nx).append("):").append(value3).append(", version=").append(nu).append(", ").append(value4).append(", thirdPartyPackageName = ").append(value5).append(" ,  thirdPartyModuleId = ").append(value6).append(")").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.MZ(this, parcel, n);
    }
}

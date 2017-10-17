// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import com.google.android.gms.internal.O;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class ContextManagerClientInfo extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final int Hi;
    private final int Hj;
    private final String Hk;
    private O Hl;
    private final int Hm;
    private final String Hn;
    private final int Ho;
    private final String Hp;
    private final String Hq;
    private final int Hr;
    private final String mPackageName;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    ContextManagerClientInfo(final int ho, final String hk, final String mPackageName, final int hm, final String hq, final int hj, final int hr, final String hn, final String hp, final int hi) {
        this.Ho = ho;
        this.Hk = hk;
        this.mPackageName = mPackageName;
        this.Hm = hm;
        this.Hq = hq;
        this.Hj = hj;
        this.Hr = hr;
        this.Hn = hn;
        this.Hp = hp;
        this.Hi = hi;
    }
    
    public String MA() {
        return this.Hq;
    }
    
    public int MB() {
        return this.Hj;
    }
    
    public String MC() {
        return this.Hk;
    }
    
    int MD() {
        return this.Ho;
    }
    
    public int ME() {
        return this.Hm;
    }
    
    public String Mu() {
        switch (this.Hr) {
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
    
    int Mv() {
        return this.Hr;
    }
    
    public String Mw() {
        return this.Hn;
    }
    
    public int Mx() {
        return this.Hi;
    }
    
    public String My() {
        return this.Hp;
    }
    
    public O Mz() {
        if (this.Hk != null) {
            if (this.Hl == null) {
                this.Hl = new O(this.Hk);
            }
            return this.Hl;
        }
        return null;
    }
    
    public String getPackageName() {
        return this.mPackageName;
    }
    
    public String toString() {
        final String value = String.valueOf(this.Mz());
        final String value2 = String.valueOf(this.getPackageName());
        final int me = this.ME();
        final String value3 = String.valueOf(this.MA());
        final int mb = this.MB();
        final String value4 = String.valueOf(this.Mu());
        final String value5 = String.valueOf(this.Mw());
        final String value6 = String.valueOf(this.My());
        return new StringBuilder(String.valueOf(value).length() + 100 + String.valueOf(value2).length() + String.valueOf(value3).length() + String.valueOf(value4).length() + String.valueOf(value5).length() + String.valueOf(value6).length()).append("(account=").append(value).append(", ").append(value2).append("(").append(me).append("):").append(value3).append(", version=").append(mb).append(", ").append(value4).append(", thirdPartyPackageName = ").append(value5).append(" ,  thirdPartyModuleId = ").append(value6).append(")").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.Mg(this, parcel, n);
    }
}

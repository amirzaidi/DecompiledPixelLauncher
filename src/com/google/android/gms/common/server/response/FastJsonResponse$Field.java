// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.google.android.gms.common.internal.l;
import java.util.Map;
import com.google.android.gms.common.server.converter.ConverterWrapper;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class FastJsonResponse$Field extends AbstractSafeParcelable
{
    public static final f CREATOR;
    protected final int hF;
    protected final boolean hG;
    protected final String hH;
    protected final boolean hI;
    protected final int hJ;
    protected final int hK;
    private FieldMappingDictionary hL;
    private final int hM;
    protected final Class hN;
    protected final String hO;
    private e hP;
    
    static {
        CREATOR = new f();
    }
    
    FastJsonResponse$Field(final int hm, final int hf, final boolean hi, final int hj, final boolean hg, final String hh, final int hk, final String ho, final ConverterWrapper converterWrapper) {
        this.hM = hm;
        this.hF = hf;
        this.hI = hi;
        this.hJ = hj;
        this.hG = hg;
        this.hH = hh;
        this.hK = hk;
        if (ho != null) {
            this.hN = SafeParcelResponse.class;
            this.hO = ho;
        }
        else {
            this.hN = null;
            this.hO = null;
        }
        if (converterWrapper != null) {
            this.hP = converterWrapper.lr();
        }
        else {
            this.hP = null;
        }
    }
    
    public int kf() {
        return this.hJ;
    }
    
    String kg() {
        if (this.hO != null) {
            return this.hO;
        }
        return null;
    }
    
    public boolean kh() {
        return this.hG;
    }
    
    public int ki() {
        return this.hM;
    }
    
    public int kj() {
        return this.hK;
    }
    
    ConverterWrapper kk() {
        if (this.hP != null) {
            return ConverterWrapper.lp(this.hP);
        }
        return null;
    }
    
    public Object kl(final Object o) {
        return this.hP.kP(o);
    }
    
    public void km(final FieldMappingDictionary hl) {
        this.hL = hl;
    }
    
    public String kn() {
        return this.hH;
    }
    
    public boolean ko() {
        return this.hI;
    }
    
    public Map kp() {
        l.ht(this.hO);
        l.ht(this.hL);
        return this.hL.kV(this.hO);
    }
    
    public boolean kq() {
        return this.hP != null;
    }
    
    public Class ks() {
        return this.hN;
    }
    
    public int kt() {
        return this.hF;
    }
    
    public String toString() {
        final char c = '\n';
        final StringBuilder sb = new StringBuilder();
        sb.append("Field\n");
        sb.append("            versionCode=").append(this.hM).append(c);
        sb.append("                 typeIn=").append(this.hF).append(c);
        sb.append("            typeInArray=").append(this.hI).append(c);
        sb.append("                typeOut=").append(this.hJ).append(c);
        sb.append("           typeOutArray=").append(this.hG).append(c);
        sb.append("        outputFieldName=").append(this.hH).append(c);
        sb.append("      safeParcelFieldId=").append(this.hK).append(c);
        sb.append("       concreteTypeName=").append(this.kg()).append(c);
        if (this.ks() != null) {
            sb.append("     concreteType.class=").append(this.ks().getCanonicalName()).append(c);
        }
        final StringBuilder append = sb.append("          converterName=");
        String canonicalName;
        if (this.hP != null) {
            canonicalName = this.hP.getClass().getCanonicalName();
        }
        else {
            canonicalName = "null";
        }
        append.append(canonicalName).append(c);
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final f creator = FastJsonResponse$Field.CREATOR;
        f.kQ(this, parcel, n);
    }
}

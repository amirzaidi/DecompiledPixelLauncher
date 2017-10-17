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
    protected final boolean kA;
    protected final int kB;
    protected final int kC;
    private FieldMappingDictionary kD;
    private final int kE;
    protected final Class kF;
    protected final String kG;
    private e kH;
    protected final int kx;
    protected final boolean ky;
    protected final String kz;
    
    static {
        CREATOR = new f();
    }
    
    FastJsonResponse$Field(final int ke, final int kx, final boolean ka, final int kb, final boolean ky, final String kz, final int kc, final String kg, final ConverterWrapper converterWrapper) {
        this.kE = ke;
        this.kx = kx;
        this.kA = ka;
        this.kB = kb;
        this.ky = ky;
        this.kz = kz;
        this.kC = kc;
        if (kg != null) {
            this.kF = SafeParcelResponse.class;
            this.kG = kg;
        }
        else {
            this.kF = null;
            this.kG = null;
        }
        if (converterWrapper != null) {
            this.kH = converterWrapper.of();
        }
        else {
            this.kH = null;
        }
    }
    
    public int mT() {
        return this.kB;
    }
    
    String mU() {
        if (this.kG != null) {
            return this.kG;
        }
        return null;
    }
    
    public boolean mV() {
        return this.ky;
    }
    
    public int mW() {
        return this.kE;
    }
    
    public int mX() {
        return this.kC;
    }
    
    ConverterWrapper mY() {
        if (this.kH != null) {
            return ConverterWrapper.od(this.kH);
        }
        return null;
    }
    
    public Object mZ(final Object o) {
        return this.kH.nD(o);
    }
    
    public void na(final FieldMappingDictionary kd) {
        this.kD = kd;
    }
    
    public String nb() {
        return this.kz;
    }
    
    public boolean nc() {
        return this.kA;
    }
    
    public Map nd() {
        l.kh(this.kG);
        l.kh(this.kD);
        return this.kD.nI(this.kG);
    }
    
    public boolean ne() {
        return this.kH != null;
    }
    
    public Class ng() {
        return this.kF;
    }
    
    public int nh() {
        return this.kx;
    }
    
    public String toString() {
        final char c = '\n';
        final StringBuilder sb = new StringBuilder();
        sb.append("Field\n");
        sb.append("            versionCode=").append(this.kE).append(c);
        sb.append("                 typeIn=").append(this.kx).append(c);
        sb.append("            typeInArray=").append(this.kA).append(c);
        sb.append("                typeOut=").append(this.kB).append(c);
        sb.append("           typeOutArray=").append(this.ky).append(c);
        sb.append("        outputFieldName=").append(this.kz).append(c);
        sb.append("      safeParcelFieldId=").append(this.kC).append(c);
        sb.append("       concreteTypeName=").append(this.mU()).append(c);
        if (this.ng() != null) {
            sb.append("     concreteType.class=").append(this.ng().getCanonicalName()).append(c);
        }
        final StringBuilder append = sb.append("          converterName=");
        String canonicalName;
        if (this.kH != null) {
            canonicalName = this.kH.getClass().getCanonicalName();
        }
        else {
            canonicalName = "null";
        }
        append.append(canonicalName).append(c);
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final f creator = FastJsonResponse$Field.CREATOR;
        f.nK(this, parcel, n);
    }
}

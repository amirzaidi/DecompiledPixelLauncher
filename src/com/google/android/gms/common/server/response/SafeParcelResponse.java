// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.server.response;

import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Set;
import android.os.Bundle;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import java.util.HashMap;
import com.google.android.gms.common.a.e;
import com.google.android.gms.common.a.h;
import java.util.Iterator;
import android.util.SparseArray;
import java.util.Map;
import java.util.ArrayList;
import com.google.android.gms.common.internal.l;
import android.os.Parcel;

public class SafeParcelResponse extends FastSafeParcelableJsonResponse
{
    public static final b CREATOR;
    private final int hT;
    private int hU;
    private final Parcel hV;
    private final FieldMappingDictionary hW;
    private final int hX;
    private int hY;
    private final String hZ;
    
    static {
        CREATOR = new b();
    }
    
    SafeParcelResponse(final int hx, final Parcel parcel, final FieldMappingDictionary hw) {
        final int n = 2;
        this.hX = hx;
        this.hV = (Parcel)l.ht(parcel);
        this.hT = n;
        this.hW = hw;
        if (this.hW != null) {
            this.hZ = this.hW.kW();
        }
        else {
            this.hZ = null;
        }
        this.hU = n;
    }
    
    private void kD(final StringBuilder sb, final FastJsonResponse$Field fastJsonResponse$Field, final ArrayList list) {
        int i = 0;
        sb.append("[");
        while (i < list.size()) {
            if (i != 0) {
                sb.append(",");
            }
            this.kI(sb, fastJsonResponse$Field.kt(), list.get(i));
            ++i;
        }
        sb.append("]");
    }
    
    private void kF(final StringBuilder sb, final String s, final FastJsonResponse$Field fastJsonResponse$Field, final Parcel parcel, final int n) {
        sb.append("\"").append(s).append("\":");
        if (!fastJsonResponse$Field.kq()) {
            this.kz(sb, fastJsonResponse$Field, parcel, n);
        }
        else {
            this.kJ(sb, fastJsonResponse$Field, parcel, n);
        }
    }
    
    private void kG(final StringBuilder sb, final FastJsonResponse$Field fastJsonResponse$Field, final Object o) {
        if (!fastJsonResponse$Field.ko()) {
            this.kI(sb, fastJsonResponse$Field.kt(), o);
        }
        else {
            this.kD(sb, fastJsonResponse$Field, (ArrayList)o);
        }
    }
    
    private static SparseArray kH(final Map map) {
        final SparseArray sparseArray = new SparseArray();
        for (final Map.Entry<K, FastJsonResponse$Field> entry : map.entrySet()) {
            sparseArray.put(entry.getValue().kj(), (Object)entry);
        }
        return sparseArray;
    }
    
    private void kI(final StringBuilder sb, final int n, final Object o) {
        switch (n) {
            default: {
                throw new IllegalArgumentException(new StringBuilder(26).append("Unknown type = ").append(n).toString());
            }
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6: {
                sb.append(o);
                break;
            }
            case 7: {
                sb.append("\"").append(h.jF(o.toString())).append("\"");
                break;
            }
            case 8: {
                sb.append("\"").append(e.jz((byte[])o)).append("\"");
                break;
            }
            case 9: {
                sb.append("\"").append(e.jA((byte[])o));
                sb.append("\"");
                break;
            }
            case 10: {
                com.google.android.gms.common.a.b.ju(sb, (HashMap)o);
                break;
            }
            case 11: {
                throw new IllegalArgumentException("Method does not accept concrete type.");
            }
        }
    }
    
    private void kJ(final StringBuilder sb, final FastJsonResponse$Field fastJsonResponse$Field, final Parcel parcel, final int n) {
        switch (fastJsonResponse$Field.kf()) {
            default: {
                throw new IllegalArgumentException(new StringBuilder(36).append("Unknown field out type = ").append(fastJsonResponse$Field.kf()).toString());
            }
            case 0: {
                this.kG(sb, fastJsonResponse$Field, this.lb(fastJsonResponse$Field, com.google.android.gms.common.internal.safeparcel.b.fN(parcel, n)));
                break;
            }
            case 1: {
                this.kG(sb, fastJsonResponse$Field, this.lb(fastJsonResponse$Field, com.google.android.gms.common.internal.safeparcel.b.fF(parcel, n)));
                break;
            }
            case 2: {
                this.kG(sb, fastJsonResponse$Field, this.lb(fastJsonResponse$Field, com.google.android.gms.common.internal.safeparcel.b.fL(parcel, n)));
                break;
            }
            case 3: {
                this.kG(sb, fastJsonResponse$Field, this.lb(fastJsonResponse$Field, com.google.android.gms.common.internal.safeparcel.b.gj(parcel, n)));
                break;
            }
            case 4: {
                this.kG(sb, fastJsonResponse$Field, this.lb(fastJsonResponse$Field, com.google.android.gms.common.internal.safeparcel.b.gb(parcel, n)));
                break;
            }
            case 5: {
                this.kG(sb, fastJsonResponse$Field, this.lb(fastJsonResponse$Field, com.google.android.gms.common.internal.safeparcel.b.gi(parcel, n)));
                break;
            }
            case 6: {
                this.kG(sb, fastJsonResponse$Field, this.lb(fastJsonResponse$Field, com.google.android.gms.common.internal.safeparcel.b.fX(parcel, n)));
                break;
            }
            case 7: {
                this.kG(sb, fastJsonResponse$Field, this.lb(fastJsonResponse$Field, com.google.android.gms.common.internal.safeparcel.b.fQ(parcel, n)));
                break;
            }
            case 8:
            case 9: {
                this.kG(sb, fastJsonResponse$Field, this.lb(fastJsonResponse$Field, com.google.android.gms.common.internal.safeparcel.b.gf(parcel, n)));
                break;
            }
            case 10: {
                this.kG(sb, fastJsonResponse$Field, this.lb(fastJsonResponse$Field, ky(com.google.android.gms.common.internal.safeparcel.b.fP(parcel, n))));
                break;
            }
            case 11: {
                throw new IllegalArgumentException("Method does not accept concrete type.");
            }
        }
    }
    
    private void kx(final StringBuilder sb, final Map map, final Parcel parcel) {
        final SparseArray kh = kH(map);
        sb.append('{');
        final int fj = com.google.android.gms.common.internal.safeparcel.b.fJ(parcel);
        boolean b = false;
        while (parcel.dataPosition() < fj) {
            final int fs = com.google.android.gms.common.internal.safeparcel.b.fS(parcel);
            final Map.Entry entry = (Map.Entry)kh.get(com.google.android.gms.common.internal.safeparcel.b.ga(fs));
            if (entry != null) {
                if (b) {
                    sb.append(",");
                }
                this.kF(sb, entry.getKey(), entry.getValue(), parcel, fs);
                b = true;
            }
        }
        if (parcel.dataPosition() == fj) {
            sb.append('}');
            return;
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public static HashMap ky(final Bundle bundle) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        for (final String s : bundle.keySet()) {
            hashMap.put(s, bundle.getString(s));
        }
        return hashMap;
    }
    
    private void kz(final StringBuilder sb, final FastJsonResponse$Field fastJsonResponse$Field, final Parcel parcel, final int n) {
        if (!fastJsonResponse$Field.kh()) {
            switch (fastJsonResponse$Field.kf()) {
                default: {
                    throw new IllegalStateException("Unknown field type out");
                }
                case 0: {
                    sb.append(com.google.android.gms.common.internal.safeparcel.b.fN(parcel, n));
                    break;
                }
                case 1: {
                    sb.append(com.google.android.gms.common.internal.safeparcel.b.fF(parcel, n));
                    break;
                }
                case 2: {
                    sb.append(com.google.android.gms.common.internal.safeparcel.b.fL(parcel, n));
                    break;
                }
                case 3: {
                    sb.append(com.google.android.gms.common.internal.safeparcel.b.gj(parcel, n));
                    break;
                }
                case 4: {
                    sb.append(com.google.android.gms.common.internal.safeparcel.b.gb(parcel, n));
                    break;
                }
                case 5: {
                    sb.append(com.google.android.gms.common.internal.safeparcel.b.gi(parcel, n));
                    break;
                }
                case 6: {
                    sb.append(com.google.android.gms.common.internal.safeparcel.b.fX(parcel, n));
                    break;
                }
                case 7: {
                    sb.append("\"").append(h.jF(com.google.android.gms.common.internal.safeparcel.b.fQ(parcel, n))).append("\"");
                    break;
                }
                case 8: {
                    sb.append("\"").append(e.jz(com.google.android.gms.common.internal.safeparcel.b.gf(parcel, n))).append("\"");
                    break;
                }
                case 9: {
                    sb.append("\"").append(e.jA(com.google.android.gms.common.internal.safeparcel.b.gf(parcel, n)));
                    sb.append("\"");
                    break;
                }
                case 10: {
                    final Bundle fp = com.google.android.gms.common.internal.safeparcel.b.fP(parcel, n);
                    final Set keySet = fp.keySet();
                    keySet.size();
                    sb.append("{");
                    final boolean b = true;
                    final Iterator<String> iterator = keySet.iterator();
                    int n2 = b ? 1 : 0;
                    while (iterator.hasNext()) {
                        final String s = iterator.next();
                        if (n2 == 0) {
                            sb.append(",");
                        }
                        sb.append("\"").append(s).append("\"");
                        sb.append(":");
                        sb.append("\"").append(h.jF(fp.getString(s))).append("\"");
                        n2 = 0;
                    }
                    sb.append("}");
                    break;
                }
                case 11: {
                    final Parcel fx = com.google.android.gms.common.internal.safeparcel.b.fx(parcel, n);
                    fx.setDataPosition(0);
                    this.kx(sb, fastJsonResponse$Field.kp(), fx);
                    break;
                }
            }
        }
        else {
            sb.append("[");
            switch (fastJsonResponse$Field.kf()) {
                default: {
                    throw new IllegalStateException("Unknown field type out.");
                }
                case 0: {
                    com.google.android.gms.common.a.l.jM(sb, com.google.android.gms.common.internal.safeparcel.b.fK(parcel, n));
                    break;
                }
                case 1: {
                    com.google.android.gms.common.a.l.jK(sb, com.google.android.gms.common.internal.safeparcel.b.gc(parcel, n));
                    break;
                }
                case 2: {
                    com.google.android.gms.common.a.l.jN(sb, com.google.android.gms.common.internal.safeparcel.b.fT(parcel, n));
                    break;
                }
                case 3: {
                    com.google.android.gms.common.a.l.jQ(sb, com.google.android.gms.common.internal.safeparcel.b.fC(parcel, n));
                    break;
                }
                case 4: {
                    com.google.android.gms.common.a.l.jP(sb, com.google.android.gms.common.internal.safeparcel.b.gg(parcel, n));
                    break;
                }
                case 5: {
                    com.google.android.gms.common.a.l.jK(sb, com.google.android.gms.common.internal.safeparcel.b.fV(parcel, n));
                    break;
                }
                case 6: {
                    com.google.android.gms.common.a.l.jO(sb, com.google.android.gms.common.internal.safeparcel.b.gd(parcel, n));
                    break;
                }
                case 7: {
                    com.google.android.gms.common.a.l.jL(sb, com.google.android.gms.common.internal.safeparcel.b.fU(parcel, n));
                    break;
                }
                case 8:
                case 9:
                case 10: {
                    throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                }
                case 11: {
                    final Parcel[] fz = com.google.android.gms.common.internal.safeparcel.b.fz(parcel, n);
                    for (int length = fz.length, i = 0; i < length; ++i) {
                        if (i > 0) {
                            sb.append(",");
                        }
                        fz[i].setDataPosition(0);
                        this.kx(sb, fastJsonResponse$Field.kp(), fz[i]);
                    }
                    break;
                }
            }
            sb.append("]");
        }
    }
    
    FieldMappingDictionary kA() {
        switch (this.hT) {
            default: {
                throw new IllegalStateException(new StringBuilder(34).append("Invalid creation type: ").append(this.hT).toString());
            }
            case 0: {
                return null;
            }
            case 1: {
                return this.hW;
            }
            case 2: {
                return this.hW;
            }
        }
    }
    
    public Map kB() {
        if (this.hW != null) {
            return this.hW.kV(this.hZ);
        }
        return null;
    }
    
    public int kC() {
        return this.hX;
    }
    
    public Parcel kE() {
        final int hu = 2;
        switch (this.hU) {
            default: {
                return this.hV;
            }
            case 0: {
                this.hY = a.eY(this.hV);
                a.fe(this.hV, this.hY);
                break;
            }
            case 1: {
                a.fe(this.hV, this.hY);
                break;
            }
        }
        this.hU = hu;
        return this.hV;
    }
    
    public boolean kd(final String s) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }
    
    public Object ke(final String s) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }
    
    public String toString() {
        l.ho(this.hW, "Cannot convert to JSON on client side.");
        final Parcel ke = this.kE();
        ke.setDataPosition(0);
        final StringBuilder sb = new StringBuilder(100);
        this.kx(sb, this.hW.kV(this.hZ), ke);
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final b creator = SafeParcelResponse.CREATOR;
        b.kM(this, parcel, n);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.server.response;

import com.google.android.gms.common.internal.safeparcel.a;
import java.util.ArrayList;
import java.util.Set;
import com.google.android.gms.common.a.e;
import com.google.android.gms.common.a.h;
import java.util.Iterator;
import java.util.HashMap;
import android.os.Bundle;
import android.util.SparseArray;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import java.util.Map;
import com.google.android.gms.common.internal.l;
import android.os.Parcel;

public class SafeParcelResponse extends FastSafeParcelableJsonResponse
{
    public static final b CREATOR;
    private final int kL;
    private int kM;
    private final Parcel kN;
    private final FieldMappingDictionary kO;
    private final int kP;
    private int kQ;
    private final String kR;
    
    static {
        CREATOR = new b();
    }
    
    SafeParcelResponse(final int kp, final Parcel parcel, final FieldMappingDictionary ko) {
        final int n = 2;
        this.kP = kp;
        this.kN = (Parcel)l.kh(parcel);
        this.kL = n;
        this.kO = ko;
        if (this.kO != null) {
            this.kR = this.kO.nJ();
        }
        else {
            this.kR = null;
        }
        this.kM = n;
    }
    
    private void nl(final StringBuilder sb, final Map map, final Parcel parcel) {
        final SparseArray nv = nv(map);
        sb.append('{');
        final int ix = com.google.android.gms.common.internal.safeparcel.b.ix(parcel);
        boolean b = false;
        while (parcel.dataPosition() < ix) {
            final int ig = com.google.android.gms.common.internal.safeparcel.b.iG(parcel);
            final Map.Entry entry = (Map.Entry)nv.get(com.google.android.gms.common.internal.safeparcel.b.iO(ig));
            if (entry != null) {
                if (b) {
                    sb.append(",");
                }
                this.nt(sb, entry.getKey(), entry.getValue(), parcel, ig);
                b = true;
            }
        }
        if (parcel.dataPosition() == ix) {
            sb.append('}');
            return;
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public static HashMap nm(final Bundle bundle) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        for (final String s : bundle.keySet()) {
            hashMap.put(s, bundle.getString(s));
        }
        return hashMap;
    }
    
    private void nn(final StringBuilder sb, final FastJsonResponse$Field fastJsonResponse$Field, final Parcel parcel, final int n) {
        if (!fastJsonResponse$Field.mV()) {
            switch (fastJsonResponse$Field.mT()) {
                default: {
                    throw new IllegalStateException("Unknown field type out");
                }
                case 0: {
                    sb.append(com.google.android.gms.common.internal.safeparcel.b.iB(parcel, n));
                    break;
                }
                case 1: {
                    sb.append(com.google.android.gms.common.internal.safeparcel.b.it(parcel, n));
                    break;
                }
                case 2: {
                    sb.append(com.google.android.gms.common.internal.safeparcel.b.iz(parcel, n));
                    break;
                }
                case 3: {
                    sb.append(com.google.android.gms.common.internal.safeparcel.b.iX(parcel, n));
                    break;
                }
                case 4: {
                    sb.append(com.google.android.gms.common.internal.safeparcel.b.iP(parcel, n));
                    break;
                }
                case 5: {
                    sb.append(com.google.android.gms.common.internal.safeparcel.b.iW(parcel, n));
                    break;
                }
                case 6: {
                    sb.append(com.google.android.gms.common.internal.safeparcel.b.iL(parcel, n));
                    break;
                }
                case 7: {
                    sb.append("\"").append(h.mt(com.google.android.gms.common.internal.safeparcel.b.iE(parcel, n))).append("\"");
                    break;
                }
                case 8: {
                    sb.append("\"").append(e.mn(com.google.android.gms.common.internal.safeparcel.b.iT(parcel, n))).append("\"");
                    break;
                }
                case 9: {
                    sb.append("\"").append(e.mo(com.google.android.gms.common.internal.safeparcel.b.iT(parcel, n)));
                    sb.append("\"");
                    break;
                }
                case 10: {
                    final Bundle id = com.google.android.gms.common.internal.safeparcel.b.iD(parcel, n);
                    final Set keySet = id.keySet();
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
                        sb.append("\"").append(h.mt(id.getString(s))).append("\"");
                        n2 = 0;
                    }
                    sb.append("}");
                    break;
                }
                case 11: {
                    final Parcel il = com.google.android.gms.common.internal.safeparcel.b.il(parcel, n);
                    il.setDataPosition(0);
                    this.nl(sb, fastJsonResponse$Field.nd(), il);
                    break;
                }
            }
        }
        else {
            sb.append("[");
            switch (fastJsonResponse$Field.mT()) {
                default: {
                    throw new IllegalStateException("Unknown field type out.");
                }
                case 0: {
                    com.google.android.gms.common.a.l.mA(sb, com.google.android.gms.common.internal.safeparcel.b.iy(parcel, n));
                    break;
                }
                case 1: {
                    com.google.android.gms.common.a.l.my(sb, com.google.android.gms.common.internal.safeparcel.b.iQ(parcel, n));
                    break;
                }
                case 2: {
                    com.google.android.gms.common.a.l.mB(sb, com.google.android.gms.common.internal.safeparcel.b.iH(parcel, n));
                    break;
                }
                case 3: {
                    com.google.android.gms.common.a.l.mE(sb, com.google.android.gms.common.internal.safeparcel.b.iq(parcel, n));
                    break;
                }
                case 4: {
                    com.google.android.gms.common.a.l.mD(sb, com.google.android.gms.common.internal.safeparcel.b.iU(parcel, n));
                    break;
                }
                case 5: {
                    com.google.android.gms.common.a.l.my(sb, com.google.android.gms.common.internal.safeparcel.b.iJ(parcel, n));
                    break;
                }
                case 6: {
                    com.google.android.gms.common.a.l.mC(sb, com.google.android.gms.common.internal.safeparcel.b.iR(parcel, n));
                    break;
                }
                case 7: {
                    com.google.android.gms.common.a.l.mz(sb, com.google.android.gms.common.internal.safeparcel.b.iI(parcel, n));
                    break;
                }
                case 8:
                case 9:
                case 10: {
                    throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                }
                case 11: {
                    final Parcel[] in = com.google.android.gms.common.internal.safeparcel.b.in(parcel, n);
                    for (int length = in.length, i = 0; i < length; ++i) {
                        if (i > 0) {
                            sb.append(",");
                        }
                        in[i].setDataPosition(0);
                        this.nl(sb, fastJsonResponse$Field.nd(), in[i]);
                    }
                    break;
                }
            }
            sb.append("]");
        }
    }
    
    private void nr(final StringBuilder sb, final FastJsonResponse$Field fastJsonResponse$Field, final ArrayList list) {
        int i = 0;
        sb.append("[");
        while (i < list.size()) {
            if (i != 0) {
                sb.append(",");
            }
            this.nw(sb, fastJsonResponse$Field.nh(), list.get(i));
            ++i;
        }
        sb.append("]");
    }
    
    private void nt(final StringBuilder sb, final String s, final FastJsonResponse$Field fastJsonResponse$Field, final Parcel parcel, final int n) {
        sb.append("\"").append(s).append("\":");
        if (!fastJsonResponse$Field.ne()) {
            this.nn(sb, fastJsonResponse$Field, parcel, n);
        }
        else {
            this.nx(sb, fastJsonResponse$Field, parcel, n);
        }
    }
    
    private void nu(final StringBuilder sb, final FastJsonResponse$Field fastJsonResponse$Field, final Object o) {
        if (!fastJsonResponse$Field.nc()) {
            this.nw(sb, fastJsonResponse$Field.nh(), o);
        }
        else {
            this.nr(sb, fastJsonResponse$Field, (ArrayList)o);
        }
    }
    
    private static SparseArray nv(final Map map) {
        final SparseArray sparseArray = new SparseArray();
        for (final Map.Entry<K, FastJsonResponse$Field> entry : map.entrySet()) {
            sparseArray.put(entry.getValue().mX(), (Object)entry);
        }
        return sparseArray;
    }
    
    private void nw(final StringBuilder sb, final int n, final Object o) {
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
                sb.append("\"").append(h.mt(o.toString())).append("\"");
                break;
            }
            case 8: {
                sb.append("\"").append(e.mn((byte[])o)).append("\"");
                break;
            }
            case 9: {
                sb.append("\"").append(e.mo((byte[])o));
                sb.append("\"");
                break;
            }
            case 10: {
                com.google.android.gms.common.a.b.mi(sb, (HashMap)o);
                break;
            }
            case 11: {
                throw new IllegalArgumentException("Method does not accept concrete type.");
            }
        }
    }
    
    private void nx(final StringBuilder sb, final FastJsonResponse$Field fastJsonResponse$Field, final Parcel parcel, final int n) {
        switch (fastJsonResponse$Field.mT()) {
            default: {
                throw new IllegalArgumentException(new StringBuilder(36).append("Unknown field out type = ").append(fastJsonResponse$Field.mT()).toString());
            }
            case 0: {
                this.nu(sb, fastJsonResponse$Field, this.nP(fastJsonResponse$Field, com.google.android.gms.common.internal.safeparcel.b.iB(parcel, n)));
                break;
            }
            case 1: {
                this.nu(sb, fastJsonResponse$Field, this.nP(fastJsonResponse$Field, com.google.android.gms.common.internal.safeparcel.b.it(parcel, n)));
                break;
            }
            case 2: {
                this.nu(sb, fastJsonResponse$Field, this.nP(fastJsonResponse$Field, com.google.android.gms.common.internal.safeparcel.b.iz(parcel, n)));
                break;
            }
            case 3: {
                this.nu(sb, fastJsonResponse$Field, this.nP(fastJsonResponse$Field, com.google.android.gms.common.internal.safeparcel.b.iX(parcel, n)));
                break;
            }
            case 4: {
                this.nu(sb, fastJsonResponse$Field, this.nP(fastJsonResponse$Field, com.google.android.gms.common.internal.safeparcel.b.iP(parcel, n)));
                break;
            }
            case 5: {
                this.nu(sb, fastJsonResponse$Field, this.nP(fastJsonResponse$Field, com.google.android.gms.common.internal.safeparcel.b.iW(parcel, n)));
                break;
            }
            case 6: {
                this.nu(sb, fastJsonResponse$Field, this.nP(fastJsonResponse$Field, com.google.android.gms.common.internal.safeparcel.b.iL(parcel, n)));
                break;
            }
            case 7: {
                this.nu(sb, fastJsonResponse$Field, this.nP(fastJsonResponse$Field, com.google.android.gms.common.internal.safeparcel.b.iE(parcel, n)));
                break;
            }
            case 8:
            case 9: {
                this.nu(sb, fastJsonResponse$Field, this.nP(fastJsonResponse$Field, com.google.android.gms.common.internal.safeparcel.b.iT(parcel, n)));
                break;
            }
            case 10: {
                this.nu(sb, fastJsonResponse$Field, this.nP(fastJsonResponse$Field, nm(com.google.android.gms.common.internal.safeparcel.b.iD(parcel, n))));
                break;
            }
            case 11: {
                throw new IllegalArgumentException("Method does not accept concrete type.");
            }
        }
    }
    
    public boolean mR(final String s) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }
    
    public Object mS(final String s) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }
    
    FieldMappingDictionary no() {
        switch (this.kL) {
            default: {
                throw new IllegalStateException(new StringBuilder(34).append("Invalid creation type: ").append(this.kL).toString());
            }
            case 0: {
                return null;
            }
            case 1: {
                return this.kO;
            }
            case 2: {
                return this.kO;
            }
        }
    }
    
    public Map np() {
        if (this.kO != null) {
            return this.kO.nI(this.kR);
        }
        return null;
    }
    
    public int nq() {
        return this.kP;
    }
    
    public Parcel ns() {
        final int km = 2;
        switch (this.kM) {
            default: {
                return this.kN;
            }
            case 0: {
                this.kQ = a.hM(this.kN);
                a.hS(this.kN, this.kQ);
                break;
            }
            case 1: {
                a.hS(this.kN, this.kQ);
                break;
            }
        }
        this.kM = km;
        return this.kN;
    }
    
    public String toString() {
        l.kc(this.kO, "Cannot convert to JSON on client side.");
        final Parcel ns = this.ns();
        ns.setDataPosition(0);
        final StringBuilder sb = new StringBuilder(100);
        this.nl(sb, this.kO.nI(this.kR), ns);
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final b creator = SafeParcelResponse.CREATOR;
        b.nA(this, parcel, n);
    }
}

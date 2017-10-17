// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class c implements Parcelable$Creator
{
    static void MZ(final ContextManagerClientInfo contextManagerClientInfo, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, contextManagerClientInfo.Nw());
        a.ic(parcel, 2, contextManagerClientInfo.Nv(), false);
        a.ic(parcel, 3, contextManagerClientInfo.getPackageName(), false);
        a.hX(parcel, 4, contextManagerClientInfo.Nx());
        a.ic(parcel, 5, contextManagerClientInfo.Nt(), false);
        a.hX(parcel, 6, contextManagerClientInfo.Nu());
        a.hX(parcel, 7, contextManagerClientInfo.No());
        a.ic(parcel, 8, contextManagerClientInfo.Np(), false);
        a.ic(parcel, 9, contextManagerClientInfo.Nr(), false);
        a.hX(parcel, 10, contextManagerClientInfo.Nq());
        a.hS(parcel, hm);
    }
    
    public ContextManagerClientInfo MX(final Parcel parcel) {
        String ie = null;
        int ib = 0;
        final int ix = b.ix(parcel);
        String ie2 = null;
        int ib2 = 0;
        int ib3 = 0;
        String ie3 = null;
        int ib4 = 0;
        String ie4 = null;
        String ie5 = null;
        int ib5 = 0;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib5 = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    ie5 = b.iE(parcel, ig);
                    continue;
                }
                case 3: {
                    ie4 = b.iE(parcel, ig);
                    continue;
                }
                case 4: {
                    ib4 = b.iB(parcel, ig);
                    continue;
                }
                case 5: {
                    ie3 = b.iE(parcel, ig);
                    continue;
                }
                case 6: {
                    ib3 = b.iB(parcel, ig);
                    continue;
                }
                case 7: {
                    ib2 = b.iB(parcel, ig);
                    continue;
                }
                case 8: {
                    ie2 = b.iE(parcel, ig);
                    continue;
                }
                case 9: {
                    ie = b.iE(parcel, ig);
                    continue;
                }
                case 10: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new ContextManagerClientInfo(ib5, ie5, ie4, ib4, ie3, ib3, ib2, ie2, ie, ib);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public ContextManagerClientInfo[] MY(final int n) {
        return new ContextManagerClientInfo[n];
    }
}

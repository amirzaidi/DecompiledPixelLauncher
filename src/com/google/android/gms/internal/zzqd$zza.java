// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.playlog.internal.PlayLoggerContext;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcelable$Creator;
import com.google.android.gms.clearcut.LogEventParcelable;
import android.os.Parcel;
import android.os.IInterface;
import android.os.IBinder;
import android.os.Binder;

public abstract class zzqd$zza extends Binder implements zzqd
{
    public static zzqd zzgo(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
        if (queryLocalInterface != null && queryLocalInterface instanceof zzqd) {
            return (zzqd)queryLocalInterface;
        }
        return new ap(binder);
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        final boolean b = true;
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
                return b;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
                final zzqc zzgn = zzqc$zza.zzgn(parcel.readStrongBinder());
                LogEventParcelable logEventParcelable;
                if (parcel.readInt() == 0) {
                    logEventParcelable = null;
                }
                else {
                    logEventParcelable = (LogEventParcelable)LogEventParcelable.CREATOR.createFromParcel(parcel);
                }
                this.zza(zzgn, logEventParcelable);
                return b;
            }
        }
    }
}

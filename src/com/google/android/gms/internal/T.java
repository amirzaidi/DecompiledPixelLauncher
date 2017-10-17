// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.phenotype.Flag;
import com.google.android.gms.phenotype.ExperimentTokens;
import com.google.android.gms.phenotype.DogfoodsToken;
import android.os.Parcel;
import com.google.android.gms.phenotype.Configurations;
import com.google.android.gms.common.api.Status;
import android.os.IBinder;

class t implements zzza
{
    private IBinder oR;
    
    t(final IBinder or) {
        this.oR = or;
    }
    
    public IBinder asBinder() {
        return this.oR;
    }
    
    public void zza(final Status status, final Configurations configurations) {
        while (true) {
            final Parcel obtain = Parcel.obtain();
            final String s = "com.google.android.gms.phenotype.internal.IPhenotypeCallbacks";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (status == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    }
                    if (configurations == null) {
                        obtain.writeInt(0);
                        this.oR.transact(4, obtain, (Parcel)null, 1);
                        return;
                    }
                }
                finally {
                    obtain.recycle();
                }
                obtain.writeInt(1);
                configurations.writeToParcel(obtain, 0);
                continue;
            }
        }
    }
    
    public void zza(final Status status, final DogfoodsToken dogfoodsToken) {
        while (true) {
            final Parcel obtain = Parcel.obtain();
            final String s = "com.google.android.gms.phenotype.internal.IPhenotypeCallbacks";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (status == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    }
                    if (dogfoodsToken == null) {
                        obtain.writeInt(0);
                        this.oR.transact(7, obtain, (Parcel)null, 1);
                        return;
                    }
                }
                finally {
                    obtain.recycle();
                }
                obtain.writeInt(1);
                dogfoodsToken.writeToParcel(obtain, 0);
                continue;
            }
        }
    }
    
    public void zza(final Status status, final ExperimentTokens experimentTokens) {
        while (true) {
            final Parcel obtain = Parcel.obtain();
            final String s = "com.google.android.gms.phenotype.internal.IPhenotypeCallbacks";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (status == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    }
                    if (experimentTokens == null) {
                        obtain.writeInt(0);
                        this.oR.transact(6, obtain, (Parcel)null, 1);
                        return;
                    }
                }
                finally {
                    obtain.recycle();
                }
                obtain.writeInt(1);
                experimentTokens.writeToParcel(obtain, 0);
                continue;
            }
        }
    }
    
    public void zza(final Status status, final Flag flag) {
        while (true) {
            final Parcel obtain = Parcel.obtain();
            final String s = "com.google.android.gms.phenotype.internal.IPhenotypeCallbacks";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (status == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    }
                    if (flag == null) {
                        obtain.writeInt(0);
                        this.oR.transact(9, obtain, (Parcel)null, 1);
                        return;
                    }
                }
                finally {
                    obtain.recycle();
                }
                obtain.writeInt(1);
                flag.writeToParcel(obtain, 0);
                continue;
            }
        }
    }
    
    public void zzb(final Status status, final Configurations configurations) {
        while (true) {
            final Parcel obtain = Parcel.obtain();
            final String s = "com.google.android.gms.phenotype.internal.IPhenotypeCallbacks";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (status == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    }
                    if (configurations == null) {
                        obtain.writeInt(0);
                        this.oR.transact(10, obtain, (Parcel)null, 1);
                        return;
                    }
                }
                finally {
                    obtain.recycle();
                }
                obtain.writeInt(1);
                configurations.writeToParcel(obtain, 0);
                continue;
            }
        }
    }
    
    public void zzgo(final Status status) {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.gms.phenotype.internal.IPhenotypeCallbacks";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (status == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                status.writeToParcel(obtain, 0);
            }
            this.oR.transact(1, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void zzgp(final Status status) {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.gms.phenotype.internal.IPhenotypeCallbacks";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (status == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                status.writeToParcel(obtain, 0);
            }
            this.oR.transact(2, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void zzgq(final Status status) {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.gms.phenotype.internal.IPhenotypeCallbacks";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (status == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                status.writeToParcel(obtain, 0);
            }
            this.oR.transact(3, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void zzgr(final Status status) {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.gms.phenotype.internal.IPhenotypeCallbacks";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (status == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                status.writeToParcel(obtain, 0);
            }
            this.oR.transact(5, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void zzgs(final Status status) {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.gms.phenotype.internal.IPhenotypeCallbacks";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (status == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                status.writeToParcel(obtain, 0);
            }
            this.oR.transact(8, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void zzgt(final Status status) {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.gms.phenotype.internal.IPhenotypeCallbacks";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (status == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                status.writeToParcel(obtain, 0);
            }
            this.oR.transact(11, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
}

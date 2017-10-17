// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.phenotype.Flag;
import com.google.android.gms.phenotype.DogfoodsToken;
import com.google.android.gms.phenotype.ExperimentTokens;
import com.google.android.gms.phenotype.Configurations;
import com.google.android.gms.common.api.Status;
import android.os.Parcel;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Binder;

public abstract class zzza$zza extends Binder implements zzza
{
    public zzza$zza() {
        this.attachInterface((IInterface)this, "com.google.android.gms.phenotype.internal.IPhenotypeCallbacks");
    }
    
    public static zzza zzpd(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.phenotype.internal.IPhenotypeCallbacks");
        if (queryLocalInterface != null && queryLocalInterface instanceof zzza) {
            return (zzza)queryLocalInterface;
        }
        return new t(binder);
    }
    
    public IBinder asBinder() {
        return (IBinder)this;
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        final boolean b = true;
        AbstractSafeParcelable abstractSafeParcelable = null;
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.phenotype.internal.IPhenotypeCallbacks");
                return b;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeCallbacks");
                Status status;
                if (parcel.readInt() == 0) {
                    status = null;
                }
                else {
                    status = (Status)Status.CREATOR.createFromParcel(parcel);
                }
                this.zzgo(status);
                return b;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeCallbacks");
                if (parcel.readInt() != 0) {
                    abstractSafeParcelable = (Status)Status.CREATOR.createFromParcel(parcel);
                }
                this.zzgp((Status)abstractSafeParcelable);
                return b;
            }
            case 3: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeCallbacks");
                if (parcel.readInt() != 0) {
                    abstractSafeParcelable = (Status)Status.CREATOR.createFromParcel(parcel);
                }
                this.zzgq((Status)abstractSafeParcelable);
                return b;
            }
            case 4: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeCallbacks");
                Status status2;
                if (parcel.readInt() == 0) {
                    status2 = null;
                }
                else {
                    status2 = (Status)Status.CREATOR.createFromParcel(parcel);
                }
                if (parcel.readInt() != 0) {
                    abstractSafeParcelable = (Configurations)Configurations.CREATOR.createFromParcel(parcel);
                }
                this.zza(status2, (Configurations)abstractSafeParcelable);
                return b;
            }
            case 5: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeCallbacks");
                if (parcel.readInt() != 0) {
                    abstractSafeParcelable = (Status)Status.CREATOR.createFromParcel(parcel);
                }
                this.zzgr((Status)abstractSafeParcelable);
                return b;
            }
            case 6: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeCallbacks");
                Status status3;
                if (parcel.readInt() == 0) {
                    status3 = null;
                }
                else {
                    status3 = (Status)Status.CREATOR.createFromParcel(parcel);
                }
                if (parcel.readInt() != 0) {
                    abstractSafeParcelable = (ExperimentTokens)ExperimentTokens.CREATOR.createFromParcel(parcel);
                }
                this.zza(status3, (ExperimentTokens)abstractSafeParcelable);
                return b;
            }
            case 7: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeCallbacks");
                Status status4;
                if (parcel.readInt() == 0) {
                    status4 = null;
                }
                else {
                    status4 = (Status)Status.CREATOR.createFromParcel(parcel);
                }
                if (parcel.readInt() != 0) {
                    abstractSafeParcelable = (DogfoodsToken)DogfoodsToken.CREATOR.createFromParcel(parcel);
                }
                this.zza(status4, (DogfoodsToken)abstractSafeParcelable);
                return b;
            }
            case 8: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeCallbacks");
                if (parcel.readInt() != 0) {
                    abstractSafeParcelable = (Status)Status.CREATOR.createFromParcel(parcel);
                }
                this.zzgs((Status)abstractSafeParcelable);
                return b;
            }
            case 9: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeCallbacks");
                Status status5;
                if (parcel.readInt() == 0) {
                    status5 = null;
                }
                else {
                    status5 = (Status)Status.CREATOR.createFromParcel(parcel);
                }
                if (parcel.readInt() != 0) {
                    abstractSafeParcelable = (Flag)Flag.CREATOR.createFromParcel(parcel);
                }
                this.zza(status5, (Flag)abstractSafeParcelable);
                return b;
            }
            case 10: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeCallbacks");
                Status status6;
                if (parcel.readInt() == 0) {
                    status6 = null;
                }
                else {
                    status6 = (Status)Status.CREATOR.createFromParcel(parcel);
                }
                if (parcel.readInt() != 0) {
                    abstractSafeParcelable = (Configurations)Configurations.CREATOR.createFromParcel(parcel);
                }
                this.zzb(status6, (Configurations)abstractSafeParcelable);
                return b;
            }
            case 11: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeCallbacks");
                if (parcel.readInt() != 0) {
                    abstractSafeParcelable = (Status)Status.CREATOR.createFromParcel(parcel);
                }
                this.zzgt((Status)abstractSafeParcelable);
                return b;
            }
        }
    }
}

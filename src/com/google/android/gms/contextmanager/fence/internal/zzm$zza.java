// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.fence.internal;

import android.os.Parcel;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Binder;

public abstract class zzm$zza extends Binder implements zzm
{
    public zzm$zza() {
        this.attachInterface((IInterface)this, "com.google.android.gms.contextmanager.fence.internal.IContextFenceListener");
    }
    
    public static zzm zzhn(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.contextmanager.fence.internal.IContextFenceListener");
        if (queryLocalInterface != null && queryLocalInterface instanceof zzm) {
            return (zzm)queryLocalInterface;
        }
        return new i(binder);
    }
    
    public IBinder asBinder() {
        return (IBinder)this;
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        final boolean b = true;
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.contextmanager.fence.internal.IContextFenceListener");
                return b;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.contextmanager.fence.internal.IContextFenceListener");
                FenceTriggerInfoImpl fenceTriggerInfoImpl;
                if (parcel.readInt() == 0) {
                    fenceTriggerInfoImpl = null;
                }
                else {
                    fenceTriggerInfoImpl = (FenceTriggerInfoImpl)FenceTriggerInfoImpl.CREATOR.createFromParcel(parcel);
                }
                this.zza(fenceTriggerInfoImpl);
                parcel2.writeNoException();
                return b;
            }
        }
    }
}

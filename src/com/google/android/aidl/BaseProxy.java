// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.aidl;

import android.os.Parcel;
import android.os.IBinder;
import android.os.IInterface;

public abstract class BaseProxy implements IInterface
{
    private final String mDescriptor;
    private final IBinder mRemote;
    
    protected BaseProxy(final IBinder mRemote, final String mDescriptor) {
        this.mRemote = mRemote;
        this.mDescriptor = mDescriptor;
    }
    
    public IBinder asBinder() {
        return this.mRemote;
    }
    
    protected Parcel obtainAndWriteInterfaceToken() {
        final Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.mDescriptor);
        return obtain;
    }
    
    protected Parcel transactAndReadException(final int n, final Parcel parcel) {
        final Parcel obtain = Parcel.obtain();
        try {
            this.mRemote.transact(n, parcel, obtain, 0);
            obtain.readException();
            return obtain;
        }
        catch (RuntimeException ex) {
            obtain.recycle();
            throw ex;
        }
        finally {
            parcel.recycle();
        }
    }
    
    protected void transactOneway(final int n, final Parcel parcel) {
        try {
            this.mRemote.transact(n, parcel, (Parcel)null, 1);
        }
        finally {
            parcel.recycle();
        }
    }
}

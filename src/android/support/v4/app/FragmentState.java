// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.content.Context;
import android.util.Log;
import android.os.Parcel;
import android.os.Bundle;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

final class FragmentState implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    final boolean abC;
    Bundle abD;
    final int abE;
    final Bundle abF;
    final String abG;
    final String abH;
    final int abI;
    final boolean abJ;
    final boolean abK;
    final int abL;
    e abM;
    final boolean abN;
    
    static {
        CREATOR = (Parcelable$Creator)new aH();
    }
    
    public FragmentState(final Parcel parcel) {
        final boolean b = true;
        boolean abN = false;
        this.abH = parcel.readString();
        this.abI = parcel.readInt();
        this.abJ = (parcel.readInt() != 0 && b);
        this.abE = parcel.readInt();
        this.abL = parcel.readInt();
        this.abG = parcel.readString();
        this.abK = (parcel.readInt() != 0 && b);
        this.abC = (parcel.readInt() != 0 && b);
        this.abF = parcel.readBundle();
        if (parcel.readInt() != 0) {
            abN = b;
        }
        this.abN = abN;
        this.abD = parcel.readBundle();
    }
    
    public FragmentState(final e e) {
        this.abH = e.getClass().getName();
        this.abI = e.Wr;
        this.abJ = e.WC;
        this.abE = e.Wx;
        this.abL = e.Ws;
        this.abG = e.WM;
        this.abK = e.WP;
        this.abC = e.WR;
        this.abF = e.WJ;
        this.abN = e.WY;
    }
    
    public e anW(final p p4, final ac ac, final e e, final az wd) {
        if (this.abM == null) {
            final Context context = p4.getContext();
            if (this.abF != null) {
                this.abF.setClassLoader(context.getClassLoader());
            }
            if (ac == null) {
                this.abM = e.aiU(context, this.abH, this.abF);
            }
            else {
                this.abM = ac.amH(context, this.abH, this.abF);
            }
            if (this.abD != null) {
                this.abD.setClassLoader(context.getClassLoader());
                this.abM.WI = this.abD;
            }
            this.abM.ajy(this.abI, e);
            this.abM.WC = this.abJ;
            this.abM.Wt = true;
            this.abM.Wx = this.abE;
            this.abM.Ws = this.abL;
            this.abM.WM = this.abG;
            this.abM.WP = this.abK;
            this.abM.WR = this.abC;
            this.abM.WY = this.abN;
            this.abM.Ww = p4.XC;
            if (aV.DEBUG) {
                Log.v("FragmentManager", "Instantiated fragment " + this.abM);
            }
        }
        this.abM.WD = wd;
        return this.abM;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final int n2 = 1;
        int n3 = 0;
        parcel.writeString(this.abH);
        parcel.writeInt(this.abI);
        int n4;
        if (!this.abJ) {
            n4 = 0;
        }
        else {
            n4 = n2;
        }
        parcel.writeInt(n4);
        parcel.writeInt(this.abE);
        parcel.writeInt(this.abL);
        parcel.writeString(this.abG);
        int n5;
        if (!this.abK) {
            n5 = 0;
        }
        else {
            n5 = n2;
        }
        parcel.writeInt(n5);
        int n6;
        if (!this.abC) {
            n6 = 0;
        }
        else {
            n6 = n2;
        }
        parcel.writeInt(n6);
        parcel.writeBundle(this.abF);
        if (this.abN) {
            n3 = n2;
        }
        parcel.writeInt(n3);
        parcel.writeBundle(this.abD);
    }
}

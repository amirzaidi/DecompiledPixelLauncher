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
    final boolean acW;
    Bundle acX;
    final int acY;
    final Bundle acZ;
    final String ada;
    final String adb;
    final int adc;
    final boolean add;
    final boolean ade;
    final int adf;
    g adg;
    final boolean adh;
    
    static {
        CREATOR = (Parcelable$Creator)new aD();
    }
    
    public FragmentState(final Parcel parcel) {
        final boolean b = true;
        boolean adh = false;
        this.adb = parcel.readString();
        this.adc = parcel.readInt();
        this.add = (parcel.readInt() != 0 && b);
        this.acY = parcel.readInt();
        this.adf = parcel.readInt();
        this.ada = parcel.readString();
        this.ade = (parcel.readInt() != 0 && b);
        this.acW = (parcel.readInt() != 0 && b);
        this.acZ = parcel.readBundle();
        if (parcel.readInt() != 0) {
            adh = b;
        }
        this.adh = adh;
        this.acX = parcel.readBundle();
    }
    
    public FragmentState(final g g) {
        this.adb = g.getClass().getName();
        this.adc = g.Yb;
        this.add = g.Ym;
        this.acY = g.Yh;
        this.adf = g.Yc;
        this.ada = g.Yw;
        this.ade = g.Yz;
        this.acW = g.YB;
        this.acZ = g.Yt;
        this.adh = g.YI;
    }
    
    public g aoX(final r r, final ac ac, final g g, final ax yn) {
        if (this.adg == null) {
            final Context context = r.getContext();
            if (this.acZ != null) {
                this.acZ.setClassLoader(context.getClassLoader());
            }
            if (ac == null) {
                this.adg = g.akh(context, this.adb, this.acZ);
            }
            else {
                this.adg = ac.anU(context, this.adb, this.acZ);
            }
            if (this.acX != null) {
                this.acX.setClassLoader(context.getClassLoader());
                this.adg.Ys = this.acX;
            }
            this.adg.akL(this.adc, g);
            this.adg.Ym = this.add;
            this.adg.Yd = true;
            this.adg.Yh = this.acY;
            this.adg.Yc = this.adf;
            this.adg.Yw = this.ada;
            this.adg.Yz = this.ade;
            this.adg.YB = this.acW;
            this.adg.YI = this.adh;
            this.adg.Yg = r.Zm;
            if (aR.DEBUG) {
                Log.v("FragmentManager", "Instantiated fragment " + this.adg);
            }
        }
        this.adg.Yn = yn;
        return this.adg;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final int n2 = 1;
        int n3 = 0;
        parcel.writeString(this.adb);
        parcel.writeInt(this.adc);
        int n4;
        if (!this.add) {
            n4 = 0;
        }
        else {
            n4 = n2;
        }
        parcel.writeInt(n4);
        parcel.writeInt(this.acY);
        parcel.writeInt(this.adf);
        parcel.writeString(this.ada);
        int n5;
        if (!this.ade) {
            n5 = 0;
        }
        else {
            n5 = n2;
        }
        parcel.writeInt(n5);
        int n6;
        if (!this.acW) {
            n6 = 0;
        }
        else {
            n6 = n2;
        }
        parcel.writeInt(n6);
        parcel.writeBundle(this.acZ);
        if (this.adh) {
            n3 = n2;
        }
        parcel.writeInt(n3);
        parcel.writeBundle(this.acX);
    }
}

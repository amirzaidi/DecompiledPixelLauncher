// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import java.util.List;
import android.util.Log;
import android.text.TextUtils;
import android.os.Parcel;
import java.util.ArrayList;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

final class BackStackState implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    final CharSequence adb;
    final int[] adc;
    final int add;
    final int ade;
    final String adf;
    final int adg;
    final CharSequence adh;
    final int adi;
    final boolean adj;
    final ArrayList adk;
    final ArrayList adl;
    final int adm;
    
    static {
        CREATOR = (Parcelable$Creator)new O();
    }
    
    public BackStackState(final Parcel parcel) {
        this.adc = parcel.createIntArray();
        this.ade = parcel.readInt();
        this.add = parcel.readInt();
        this.adf = parcel.readString();
        this.adm = parcel.readInt();
        this.adg = parcel.readInt();
        this.adh = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.adi = parcel.readInt();
        this.adb = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.adk = parcel.createStringArrayList();
        this.adl = parcel.createStringArrayList();
        this.adj = (parcel.readInt() != 0);
    }
    
    public BackStackState(final U u) {
        final int size = u.YR.size();
        this.adc = new int[size * 6];
        if (u.YU) {
            int i = 0;
            int n = 0;
            while (i < size) {
                final aa aa = u.YR.get(i);
                final int[] adc = this.adc;
                final int n2 = n + 1;
                adc[n] = aa.aac;
                final int[] adc2 = this.adc;
                final int n3 = n2 + 1;
                int wr;
                if (aa.aad == null) {
                    wr = -1;
                }
                else {
                    wr = aa.aad.Wr;
                }
                adc2[n2] = wr;
                final int[] adc3 = this.adc;
                final int n4 = n3 + 1;
                adc3[n3] = aa.aah;
                final int[] adc4 = this.adc;
                final int n5 = n4 + 1;
                adc4[n4] = aa.aag;
                final int[] adc5 = this.adc;
                final int n6 = n5 + 1;
                adc5[n5] = aa.aae;
                final int[] adc6 = this.adc;
                n = n6 + 1;
                adc6[n6] = aa.aaf;
                ++i;
            }
            this.ade = u.YX;
            this.add = u.YW;
            this.adf = u.YI;
            this.adm = u.YL;
            this.adg = u.YY;
            this.adh = u.YT;
            this.adi = u.YO;
            this.adb = u.YV;
            this.adk = u.YP;
            this.adl = u.YQ;
            this.adj = u.YJ;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }
    
    public U aqI(final aV av) {
        final int yu = 1;
        int i = 0;
        final U u = new U(av);
        int n = 0;
        while (i < this.adc.length) {
            final aa aa = new aa();
            final int[] adc = this.adc;
            final int n2 = i + 1;
            aa.aac = adc[i];
            if (aV.DEBUG) {
                Log.v("FragmentManager", "Instantiate " + u + " op #" + n + " base fragment #" + this.adc[n2]);
            }
            final int[] adc2 = this.adc;
            final int n3 = n2 + 1;
            final int n4 = adc2[n2];
            if (n4 < 0) {
                aa.aad = null;
            }
            else {
                aa.aad = (e)av.acu.get(n4);
            }
            final int[] adc3 = this.adc;
            final int n5 = n3 + 1;
            aa.aah = adc3[n3];
            final int[] adc4 = this.adc;
            final int n6 = n5 + 1;
            aa.aag = adc4[n5];
            final int[] adc5 = this.adc;
            final int n7 = n6 + 1;
            aa.aae = adc5[n6];
            final int[] adc6 = this.adc;
            final int n8 = n7 + 1;
            aa.aaf = adc6[n7];
            u.YZ = aa.aah;
            u.YG = aa.aag;
            u.YH = aa.aae;
            u.YS = aa.aaf;
            u.amm(aa);
            ++n;
            i = n8;
        }
        u.YX = this.ade;
        u.YW = this.add;
        u.YI = this.adf;
        u.YL = this.adm;
        u.YU = (yu != 0);
        u.YY = this.adg;
        u.YT = this.adh;
        u.YO = this.adi;
        u.YV = this.adb;
        u.YP = this.adk;
        u.YQ = this.adl;
        u.YJ = this.adj;
        u.amf(yu);
        return u;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        int n2 = 0;
        parcel.writeIntArray(this.adc);
        parcel.writeInt(this.ade);
        parcel.writeInt(this.add);
        parcel.writeString(this.adf);
        parcel.writeInt(this.adm);
        parcel.writeInt(this.adg);
        TextUtils.writeToParcel(this.adh, parcel, 0);
        parcel.writeInt(this.adi);
        TextUtils.writeToParcel(this.adb, parcel, 0);
        parcel.writeStringList((List)this.adk);
        parcel.writeStringList((List)this.adl);
        if (this.adj) {
            n2 = 1;
        }
        parcel.writeInt(n2);
    }
}

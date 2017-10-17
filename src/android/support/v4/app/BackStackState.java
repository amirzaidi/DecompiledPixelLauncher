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
    final int aeA;
    final CharSequence aeB;
    final int aeC;
    final boolean aeD;
    final ArrayList aeE;
    final ArrayList aeF;
    final int aeG;
    final CharSequence aev;
    final int[] aew;
    final int aex;
    final int aey;
    final String aez;
    
    static {
        CREATOR = (Parcelable$Creator)new O();
    }
    
    public BackStackState(final Parcel parcel) {
        this.aew = parcel.createIntArray();
        this.aey = parcel.readInt();
        this.aex = parcel.readInt();
        this.aez = parcel.readString();
        this.aeG = parcel.readInt();
        this.aeA = parcel.readInt();
        this.aeB = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.aeC = parcel.readInt();
        this.aev = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.aeE = parcel.createStringArrayList();
        this.aeF = parcel.createStringArrayList();
        this.aeD = (parcel.readInt() != 0);
    }
    
    public BackStackState(final V v) {
        final int size = v.aaw.size();
        this.aew = new int[size * 6];
        if (v.aaz) {
            int i = 0;
            int n = 0;
            while (i < size) {
                final ab ab = v.aaw.get(i);
                final int[] aew = this.aew;
                final int n2 = n + 1;
                aew[n] = ab.abH;
                final int[] aew2 = this.aew;
                final int n3 = n2 + 1;
                int yb;
                if (ab.abI == null) {
                    yb = -1;
                }
                else {
                    yb = ab.abI.Yb;
                }
                aew2[n2] = yb;
                final int[] aew3 = this.aew;
                final int n4 = n3 + 1;
                aew3[n3] = ab.abM;
                final int[] aew4 = this.aew;
                final int n5 = n4 + 1;
                aew4[n4] = ab.abL;
                final int[] aew5 = this.aew;
                final int n6 = n5 + 1;
                aew5[n5] = ab.abJ;
                final int[] aew6 = this.aew;
                n = n6 + 1;
                aew6[n6] = ab.abK;
                ++i;
            }
            this.aey = v.aaC;
            this.aex = v.aaB;
            this.aez = v.aan;
            this.aeG = v.aaq;
            this.aeA = v.aaD;
            this.aeB = v.aay;
            this.aeC = v.aat;
            this.aev = v.aaA;
            this.aeE = v.aau;
            this.aeF = v.aav;
            this.aeD = v.aao;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }
    
    public V arJ(final aR ar) {
        final int aaz = 1;
        int i = 0;
        final V v = new V(ar);
        int n = 0;
        while (i < this.aew.length) {
            final ab ab = new ab();
            final int[] aew = this.aew;
            final int n2 = i + 1;
            ab.abH = aew[i];
            if (aR.DEBUG) {
                Log.v("FragmentManager", "Instantiate " + v + " op #" + n + " base fragment #" + this.aew[n2]);
            }
            final int[] aew2 = this.aew;
            final int n3 = n2 + 1;
            final int n4 = aew2[n2];
            if (n4 < 0) {
                ab.abI = null;
            }
            else {
                ab.abI = (g)ar.adO.get(n4);
            }
            final int[] aew3 = this.aew;
            final int n5 = n3 + 1;
            ab.abM = aew3[n3];
            final int[] aew4 = this.aew;
            final int n6 = n5 + 1;
            ab.abL = aew4[n5];
            final int[] aew5 = this.aew;
            final int n7 = n6 + 1;
            ab.abJ = aew5[n6];
            final int[] aew6 = this.aew;
            final int n8 = n7 + 1;
            ab.abK = aew6[n7];
            v.aaE = ab.abM;
            v.aal = ab.abL;
            v.aam = ab.abJ;
            v.aax = ab.abK;
            v.anB(ab);
            ++n;
            i = n8;
        }
        v.aaC = this.aey;
        v.aaB = this.aex;
        v.aan = this.aez;
        v.aaq = this.aeG;
        v.aaz = (aaz != 0);
        v.aaD = this.aeA;
        v.aay = this.aeB;
        v.aat = this.aeC;
        v.aaA = this.aev;
        v.aau = this.aeE;
        v.aav = this.aeF;
        v.aao = this.aeD;
        v.anu(aaz);
        return v;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        int n2 = 0;
        parcel.writeIntArray(this.aew);
        parcel.writeInt(this.aey);
        parcel.writeInt(this.aex);
        parcel.writeString(this.aez);
        parcel.writeInt(this.aeG);
        parcel.writeInt(this.aeA);
        TextUtils.writeToParcel(this.aeB, parcel, 0);
        parcel.writeInt(this.aeC);
        TextUtils.writeToParcel(this.aev, parcel, 0);
        parcel.writeStringList((List)this.aeE);
        parcel.writeStringList((List)this.aeF);
        if (this.aeD) {
            n2 = 1;
        }
        parcel.writeInt(n2);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import android.os.Parcel;
import java.util.Collections;
import java.util.Arrays;
import java.util.List;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class GestureRequest extends AbstractSafeParcelable
{
    public static final s CREATOR;
    private static final List EA;
    private static final List EC;
    private static final List ED;
    private static final List EE;
    private final int EB;
    private final List EF;
    
    static {
        final int n = 5;
        final int n2 = 4;
        final int n3 = 3;
        final int n4 = 2;
        final int n5 = 1;
        final Integer[] array = new Integer[19];
        array[0] = n5;
        array[n5] = n4;
        array[n4] = n3;
        array[n3] = n2;
        array[n2] = n;
        array[n] = 6;
        array[6] = 7;
        array[7] = 8;
        array[8] = 9;
        array[9] = 10;
        array[10] = 11;
        array[11] = 12;
        array[12] = 13;
        array[13] = 14;
        array[14] = 15;
        array[15] = 16;
        array[16] = 17;
        array[17] = 18;
        array[18] = 19;
        EE = Collections.unmodifiableList((List<?>)Arrays.asList((T[])array));
        final Integer[] array2 = new Integer[n5];
        array2[0] = n5;
        ED = Collections.unmodifiableList((List<?>)Arrays.asList((T[])array2));
        final Integer[] array3 = new Integer[10];
        array3[0] = n4;
        array3[n5] = n2;
        array3[n4] = 6;
        array3[n3] = 8;
        array3[n2] = 10;
        array3[n] = 12;
        array3[6] = 14;
        array3[7] = 16;
        array3[8] = 18;
        array3[9] = 19;
        EA = Collections.unmodifiableList((List<?>)Arrays.asList((T[])array3));
        final Integer[] array4 = new Integer[8];
        array4[0] = n3;
        array4[n5] = n;
        array4[n4] = 7;
        array4[n3] = 9;
        array4[n2] = 11;
        array4[n] = 13;
        array4[6] = 15;
        array4[7] = 17;
        EC = Collections.unmodifiableList((List<?>)Arrays.asList((T[])array4));
        CREATOR = new s();
    }
    
    GestureRequest(final int eb, final List ef) {
        this.EB = eb;
        this.EF = ef;
    }
    
    public List It() {
        return this.EF;
    }
    
    public int Iu() {
        return this.EB;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        s.IY(this, parcel, n);
    }
}

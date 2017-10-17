// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import android.location.Location;
import com.google.android.gms.location.ActivityRecognitionResult;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class Snapshot extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final ActivityRecognitionResult gn;
    private final DayAttributesImpl go;
    private final Location gp;
    private final DataHolder gq;
    private final NetworkStateImpl gr;
    private final PowerStateImpl gs;
    private final HeadphoneStateImpl gt;
    private final WeatherImpl gu;
    private final int gv;
    private final ScreenStateImpl gw;
    private final BeaconStateImpl gx;
    
    static {
        CREATOR = (Parcelable$Creator)new i();
    }
    
    Snapshot(final int gv, final ActivityRecognitionResult gn, final BeaconStateImpl gx, final HeadphoneStateImpl gt, final Location gp, final NetworkStateImpl gr, final DataHolder gq, final PowerStateImpl gs, final ScreenStateImpl gw, final WeatherImpl gu, final DayAttributesImpl go) {
        this.gv = gv;
        this.gn = gn;
        this.gx = gx;
        this.gt = gt;
        this.gp = gp;
        this.gr = gr;
        this.gq = gq;
        this.gs = gs;
        this.gw = gw;
        this.gu = gu;
        this.go = go;
    }
    
    public BeaconStateImpl fE() {
        return this.gx;
    }
    
    public ScreenStateImpl fF() {
        return this.gw;
    }
    
    public ActivityRecognitionResult fG() {
        return this.gn;
    }
    
    public Location fH() {
        return this.gp;
    }
    
    public WeatherImpl fI() {
        return this.gu;
    }
    
    public HeadphoneStateImpl fJ() {
        return this.gt;
    }
    
    public PowerStateImpl fK() {
        return this.gs;
    }
    
    public NetworkStateImpl fL() {
        return this.gr;
    }
    
    public DataHolder fM() {
        return this.gq;
    }
    
    public DayAttributesImpl fN() {
        return this.go;
    }
    
    int fO() {
        return this.gv;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        i.fu(this, parcel, n);
    }
}

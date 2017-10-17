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
    private final ActivityRecognitionResult mQ;
    private final DayAttributesImpl mR;
    private final Location mS;
    private final DataHolder mT;
    private final NetworkStateImpl mU;
    private final PowerStateImpl mV;
    private final HeadphoneStateImpl mW;
    private final WeatherImpl mX;
    private final int mY;
    private final ScreenStateImpl mZ;
    private final BeaconStateImpl na;
    
    static {
        CREATOR = (Parcelable$Creator)new i();
    }
    
    Snapshot(final int my, final ActivityRecognitionResult mq, final BeaconStateImpl na, final HeadphoneStateImpl mw, final Location ms, final NetworkStateImpl mu, final DataHolder mt, final PowerStateImpl mv, final ScreenStateImpl mz, final WeatherImpl mx, final DayAttributesImpl mr) {
        this.mY = my;
        this.mQ = mq;
        this.na = na;
        this.mW = mw;
        this.mS = ms;
        this.mU = mu;
        this.mT = mt;
        this.mV = mv;
        this.mZ = mz;
        this.mX = mx;
        this.mR = mr;
    }
    
    public BeaconStateImpl qK() {
        return this.na;
    }
    
    public ScreenStateImpl qL() {
        return this.mZ;
    }
    
    public ActivityRecognitionResult qM() {
        return this.mQ;
    }
    
    public Location qN() {
        return this.mS;
    }
    
    public WeatherImpl qO() {
        return this.mX;
    }
    
    public HeadphoneStateImpl qP() {
        return this.mW;
    }
    
    public PowerStateImpl qQ() {
        return this.mV;
    }
    
    public NetworkStateImpl qR() {
        return this.mU;
    }
    
    public DataHolder qS() {
        return this.mT;
    }
    
    public DayAttributesImpl qT() {
        return this.mR;
    }
    
    int qU() {
        return this.mY;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        i.qA(this, parcel, n);
    }
}

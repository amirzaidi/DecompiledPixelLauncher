// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

public final class b
{
    public float DF;
    public float DG;
    
    public b IA(final float df) {
        this.DF = df;
        return this;
    }
    
    public b Iz(final float dg) {
        this.DG = dg;
        return this;
    }
    
    public StreetViewPanoramaOrientation build() {
        return new StreetViewPanoramaOrientation(this.DG, this.DF);
    }
}

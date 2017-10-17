// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

public final class b
{
    public float Fk;
    public float Fl;
    
    public b Js(final float fl) {
        this.Fl = fl;
        return this;
    }
    
    public b Jt(final float fk) {
        this.Fk = fk;
        return this;
    }
    
    public StreetViewPanoramaOrientation build() {
        return new StreetViewPanoramaOrientation(this.Fl, this.Fk);
    }
}

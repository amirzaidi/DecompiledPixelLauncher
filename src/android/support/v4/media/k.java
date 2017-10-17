// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.net.Uri;

public final class k
{
    private String afR;
    private Uri afS;
    private Uri afT;
    private CharSequence afU;
    private Bundle afV;
    private CharSequence afW;
    private CharSequence afX;
    private Bitmap mIcon;
    
    public k atq(final Bitmap mIcon) {
        this.mIcon = mIcon;
        return this;
    }
    
    public k atr(final Uri afS) {
        this.afS = afS;
        return this;
    }
    
    public k ats(final CharSequence afU) {
        this.afU = afU;
        return this;
    }
    
    public k att(final Bundle afV) {
        this.afV = afV;
        return this;
    }
    
    public k atu(final CharSequence afX) {
        this.afX = afX;
        return this;
    }
    
    public k atv(final String afR) {
        this.afR = afR;
        return this;
    }
    
    public k atw(final Uri afT) {
        this.afT = afT;
        return this;
    }
    
    public MediaDescriptionCompat build() {
        return new MediaDescriptionCompat(this.afR, this.afW, this.afU, this.afX, this.mIcon, this.afT, this.afV, this.afS);
    }
    
    public k setTitle(final CharSequence afW) {
        this.afW = afW;
        return this;
    }
}

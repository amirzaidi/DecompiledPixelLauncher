// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.net.Uri;

public final class k
{
    private String aeP;
    private Uri aeQ;
    private Uri aeR;
    private CharSequence aeS;
    private Bundle aeT;
    private CharSequence aeU;
    private CharSequence aeV;
    private Bitmap mIcon;
    
    public k ast(final Bitmap mIcon) {
        this.mIcon = mIcon;
        return this;
    }
    
    public k asu(final Uri aeQ) {
        this.aeQ = aeQ;
        return this;
    }
    
    public k asv(final CharSequence aeS) {
        this.aeS = aeS;
        return this;
    }
    
    public k asw(final Bundle aeT) {
        this.aeT = aeT;
        return this;
    }
    
    public k asx(final CharSequence aeV) {
        this.aeV = aeV;
        return this;
    }
    
    public k asy(final String aeP) {
        this.aeP = aeP;
        return this;
    }
    
    public k asz(final Uri aeR) {
        this.aeR = aeR;
        return this;
    }
    
    public MediaDescriptionCompat build() {
        return new MediaDescriptionCompat(this.aeP, this.aeU, this.aeS, this.aeV, this.mIcon, this.aeR, this.aeT, this.aeQ);
    }
    
    public k setTitle(final CharSequence aeU) {
        this.aeU = aeU;
        return this;
    }
}

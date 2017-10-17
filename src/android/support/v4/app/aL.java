// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import java.util.List;
import android.os.Parcelable;
import android.net.Uri;
import android.os.Bundle;

public final class al
{
    private final CharSequence aaB;
    private String aaC;
    private final long aaD;
    private Bundle aaE;
    private Uri aaF;
    private final CharSequence aaG;
    
    private Bundle amK() {
        final Bundle bundle = new Bundle();
        if (this.aaG != null) {
            bundle.putCharSequence("text", this.aaG);
        }
        bundle.putLong("time", this.aaD);
        if (this.aaB != null) {
            bundle.putCharSequence("sender", this.aaB);
        }
        if (this.aaC != null) {
            bundle.putString("type", this.aaC);
        }
        if (this.aaF != null) {
            bundle.putParcelable("uri", (Parcelable)this.aaF);
        }
        if (this.aaE != null) {
            bundle.putBundle("extras", this.aaE);
        }
        return bundle;
    }
    
    static Bundle[] amO(final List list) {
        final Bundle[] array = new Bundle[list.size()];
        for (int size = list.size(), i = 0; i < size; ++i) {
            array[i] = list.get(i).amK();
        }
        return array;
    }
    
    public CharSequence amL() {
        return this.aaB;
    }
    
    public String amM() {
        return this.aaC;
    }
    
    public Uri amN() {
        return this.aaF;
    }
    
    public CharSequence amP() {
        return this.aaG;
    }
    
    public long amQ() {
        return this.aaD;
    }
}

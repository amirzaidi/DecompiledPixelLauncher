// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.os.Build$VERSION;
import android.os.Bundle;
import java.util.Set;

public final class W extends as
{
    private static final aH aaI;
    public static final aM aaN;
    private final Set aaH;
    private final boolean aaJ;
    private final Bundle aaK;
    private final CharSequence[] aaL;
    private final CharSequence aaM;
    private final String aaO;
    
    static {
        if (Build$VERSION.SDK_INT < 20) {
            if (Build$VERSION.SDK_INT < 16) {
                aaI = new az();
            }
            else {
                aaI = new at();
            }
        }
        else {
            aaI = new m();
        }
        aaN = new an();
    }
    
    public Set anF() {
        return this.aaH;
    }
    
    public String anG() {
        return this.aaO;
    }
    
    public boolean anH() {
        return this.aaJ;
    }
    
    public CharSequence[] anI() {
        return this.aaL;
    }
    
    public Bundle getExtras() {
        return this.aaK;
    }
    
    public CharSequence getLabel() {
        return this.aaM;
    }
}

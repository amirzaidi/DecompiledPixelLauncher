// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.os.Build$VERSION;
import android.os.Bundle;
import java.util.Set;

public final class V extends at
{
    private static final aL Zd;
    public static final aQ Zi;
    private final Set Zc;
    private final boolean Ze;
    private final Bundle Zf;
    private final CharSequence[] Zg;
    private final CharSequence Zh;
    private final String Zj;
    
    static {
        if (Build$VERSION.SDK_INT < 20) {
            if (Build$VERSION.SDK_INT < 16) {
                Zd = new aB();
            }
            else {
                Zd = new au();
            }
        }
        else {
            Zd = new k();
        }
        Zi = new ao();
    }
    
    public Set amq() {
        return this.Zc;
    }
    
    public String amr() {
        return this.Zj;
    }
    
    public boolean ams() {
        return this.Ze;
    }
    
    public CharSequence[] amt() {
        return this.Zg;
    }
    
    public Bundle getExtras() {
        return this.Zf;
    }
    
    public CharSequence getLabel() {
        return this.Zh;
    }
}

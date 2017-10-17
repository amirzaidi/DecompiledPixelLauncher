// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.a.a;
import android.view.Display;
import android.view.View;
import android.os.Build$VERSION;

public class f
{
    static final p VW;
    
    static {
        if (Build$VERSION.SDK_INT < 26) {
            if (Build$VERSION.SDK_INT < 24) {
                if (Build$VERSION.SDK_INT < 23) {
                    if (Build$VERSION.SDK_INT < 21) {
                        if (Build$VERSION.SDK_INT < 19) {
                            if (Build$VERSION.SDK_INT < 18) {
                                if (Build$VERSION.SDK_INT < 17) {
                                    if (Build$VERSION.SDK_INT < 16) {
                                        if (Build$VERSION.SDK_INT < 15) {
                                            VW = new p();
                                        }
                                        else {
                                            VW = new o();
                                        }
                                    }
                                    else {
                                        VW = new n();
                                    }
                                }
                                else {
                                    VW = new m();
                                }
                            }
                            else {
                                VW = new l();
                            }
                        }
                        else {
                            VW = new k();
                        }
                    }
                    else {
                        VW = new j();
                    }
                }
                else {
                    VW = new i();
                }
            }
            else {
                VW = new h();
            }
        }
        else {
            VW = new g();
        }
    }
    
    public static int agA(final View view) {
        return f.VW.agY(view);
    }
    
    public static boolean agB(final View view) {
        return f.VW.agZ(view);
    }
    
    public static void agC(final View view, final int n) {
        f.VW.agT(view, n);
    }
    
    public static int agD(final View view) {
        return f.VW.ahe(view);
    }
    
    public static boolean agE(final View view) {
        return f.VW.agU(view);
    }
    
    public static int agF(final View view) {
        return f.VW.agX(view);
    }
    
    public static void agG(final View view, final Runnable runnable) {
        f.VW.aha(view, runnable);
    }
    
    public static float agH(final View view) {
        return f.VW.agQ(view);
    }
    
    public static void agI(final View view, final float n) {
        f.VW.agR(view, n);
    }
    
    public static boolean agJ(final View view) {
        return f.VW.ahc(view);
    }
    
    public static void agK(final View view, final float n) {
        f.VW.agP(view, n);
    }
    
    public static Display agL(final View view) {
        return f.VW.agW(view);
    }
    
    public static int ags(final View view) {
        return f.VW.agV(view);
    }
    
    public static void agt(final View view) {
        f.VW.agS(view);
    }
    
    public static void agu(final View view, final c c) {
        f.VW.ahg(view, c);
    }
    
    public static String agv(final View view) {
        return f.VW.agO(view);
    }
    
    public static void agw(final View view, final Runnable runnable, final long n) {
        f.VW.ahb(view, runnable, n);
    }
    
    public static float agx(final View view) {
        return f.VW.agN(view);
    }
    
    public static void agy(final View view) {
        f.VW.ahd(view);
    }
    
    public static boolean agz(final View view) {
        return f.VW.ahh(view);
    }
    
    public static void onInitializeAccessibilityNodeInfo(final View view, final a a) {
        f.VW.onInitializeAccessibilityNodeInfo(view, a);
    }
    
    public static boolean performAccessibilityAction(final View view, final int n, final Bundle bundle) {
        return f.VW.performAccessibilityAction(view, n, bundle);
    }
}

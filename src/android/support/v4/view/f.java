// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.os.Bundle;
import android.view.accessibility.AccessibilityEvent;
import android.view.Display;
import android.view.View;
import android.os.Build$VERSION;
import android.support.v4.os.a;

public class f
{
    static final p Uw;
    
    static {
        if (!a.isAtLeastO()) {
            if (Build$VERSION.SDK_INT < 24) {
                if (Build$VERSION.SDK_INT < 23) {
                    if (Build$VERSION.SDK_INT < 21) {
                        if (Build$VERSION.SDK_INT < 19) {
                            if (Build$VERSION.SDK_INT < 18) {
                                if (Build$VERSION.SDK_INT < 17) {
                                    if (Build$VERSION.SDK_INT < 16) {
                                        if (Build$VERSION.SDK_INT < 15) {
                                            Uw = new p();
                                        }
                                        else {
                                            Uw = new o();
                                        }
                                    }
                                    else {
                                        Uw = new n();
                                    }
                                }
                                else {
                                    Uw = new m();
                                }
                            }
                            else {
                                Uw = new l();
                            }
                        }
                        else {
                            Uw = new k();
                        }
                    }
                    else {
                        Uw = new j();
                    }
                }
                else {
                    Uw = new i();
                }
            }
            else {
                Uw = new h();
            }
        }
        else {
            Uw = new g();
        }
    }
    
    public static void afA(final View view, final int n) {
        f.Uw.afK(view, n);
    }
    
    public static int afB(final View view) {
        return f.Uw.afV(view);
    }
    
    public static boolean afC(final View view) {
        return f.Uw.afL(view);
    }
    
    public static int afD(final View view) {
        return f.Uw.afO(view);
    }
    
    public static void afE(final View view, final Runnable runnable) {
        f.Uw.afR(view, runnable);
    }
    
    public static boolean afF(final View view) {
        return f.Uw.afT(view);
    }
    
    public static float afG(final View view) {
        return view.getAlpha();
    }
    
    public static Display afH(final View view) {
        return f.Uw.afN(view);
    }
    
    public static int afr(final View view) {
        return f.Uw.afM(view);
    }
    
    public static void afs(final View view) {
        f.Uw.afJ(view);
    }
    
    public static void aft(final View view, final android.support.v4.view.a a) {
        f.Uw.afX(view, a);
    }
    
    public static String afu(final View view) {
        return f.Uw.afI(view);
    }
    
    public static void afv(final View view, final Runnable runnable, final long n) {
        f.Uw.afS(view, runnable, n);
    }
    
    public static void afw(final View view) {
        f.Uw.afU(view);
    }
    
    public static boolean afx(final View view) {
        return f.Uw.afY(view);
    }
    
    public static int afy(final View view) {
        return f.Uw.afP(view);
    }
    
    public static boolean afz(final View view) {
        return f.Uw.afQ(view);
    }
    
    public static void onInitializeAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        view.onInitializeAccessibilityEvent(accessibilityEvent);
    }
    
    public static void onInitializeAccessibilityNodeInfo(final View view, final android.support.v4.view.a.a a) {
        f.Uw.onInitializeAccessibilityNodeInfo(view, a);
    }
    
    public static boolean performAccessibilityAction(final View view, final int n, final Bundle bundle) {
        return f.Uw.performAccessibilityAction(view, n, bundle);
    }
}

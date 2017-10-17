// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.a.a;
import android.view.View$AccessibilityDelegate;
import android.animation.ValueAnimator;
import android.view.WindowManager;
import android.view.Display;
import android.view.View;
import java.util.WeakHashMap;
import java.lang.reflect.Field;

class p
{
    private static Field VY;
    private static boolean VZ;
    static Field Wa;
    private static boolean Wb;
    private static WeakHashMap Wc;
    static boolean Wd;
    private static Field We;
    WeakHashMap VX;
    
    static {
        p.Wd = false;
    }
    
    p() {
        this.VX = null;
    }
    
    public float agM(final View view) {
        return 0.0f;
    }
    
    public float agN(final View view) {
        return 0.0f;
    }
    
    public String agO(final View view) {
        if (p.Wc != null) {
            return p.Wc.get(view);
        }
        return null;
    }
    
    public void agP(final View view, final float n) {
    }
    
    public float agQ(final View view) {
        return this.agN(view) + this.agM(view);
    }
    
    public void agR(final View view, final float n) {
    }
    
    public void agS(final View view) {
        if (view instanceof b) {
            ((b)view).stopNestedScroll();
        }
    }
    
    public void agT(final View view, final int n) {
    }
    
    public boolean agU(final View view) {
        return view.getWindowToken() != null;
    }
    
    public int agV(final View view) {
        return 0;
    }
    
    public Display agW(final View view) {
        if (!this.agU(view)) {
            return null;
        }
        return ((WindowManager)view.getContext().getSystemService("window")).getDefaultDisplay();
    }
    
    public int agX(final View view) {
        final boolean vz = true;
        while (true) {
            Label_0066: {
                Label_0022: {
                    if (!p.VZ) {
                        break Label_0022;
                    }
                    if (p.VY != null) {
                        break Label_0066;
                    }
                    return 0;
                }
                final Class<View> clazz = View.class;
                final String s = "mMinHeight";
                final Class<View> clazz2 = clazz;
                try {
                    final Field declaredField = clazz2.getDeclaredField(s);
                    try {
                        (p.VY = declaredField).setAccessible(true);
                        p.VZ = vz;
                        continue;
                        try {
                            final Object value = p.VY.get(view);
                            try {
                                final Integer n = (Integer)value;
                                try {
                                    return n;
                                }
                                catch (Exception ex) {}
                            }
                            catch (Exception ex2) {}
                        }
                        catch (Exception ex3) {}
                    }
                    catch (NoSuchFieldException ex4) {}
                }
                catch (NoSuchFieldException ex5) {}
            }
            break;
        }
    }
    
    public int agY(final View view) {
        return 0;
    }
    
    public boolean agZ(final View view) {
        return true;
    }
    
    public void aha(final View view, final Runnable runnable) {
        view.postDelayed(runnable, this.ahf());
    }
    
    public void ahb(final View view, final Runnable runnable, final long n) {
        view.postDelayed(runnable, this.ahf() + n);
    }
    
    public boolean ahc(final View view) {
        return false;
    }
    
    public void ahd(final View view) {
        view.postInvalidate();
    }
    
    public int ahe(final View view) {
        final boolean wb = true;
        while (true) {
            Label_0066: {
                Label_0022: {
                    if (!p.Wb) {
                        break Label_0022;
                    }
                    if (p.We != null) {
                        break Label_0066;
                    }
                    return 0;
                }
                final Class<View> clazz = View.class;
                final String s = "mMinWidth";
                final Class<View> clazz2 = clazz;
                try {
                    final Field declaredField = clazz2.getDeclaredField(s);
                    try {
                        (p.We = declaredField).setAccessible(true);
                        p.Wb = wb;
                        continue;
                        try {
                            final Object value = p.We.get(view);
                            try {
                                final Integer n = (Integer)value;
                                try {
                                    return n;
                                }
                                catch (Exception ex) {}
                            }
                            catch (Exception ex2) {}
                        }
                        catch (Exception ex3) {}
                    }
                    catch (NoSuchFieldException ex4) {}
                }
                catch (NoSuchFieldException ex5) {}
            }
            break;
        }
    }
    
    long ahf() {
        return ValueAnimator.getFrameDelay();
    }
    
    public void ahg(final View view, final c c) {
        View$AccessibilityDelegate bridge = null;
        if (c != null) {
            bridge = c.getBridge();
        }
        view.setAccessibilityDelegate(bridge);
    }
    
    public boolean ahh(final View view) {
        final boolean b = true;
        boolean b2 = false;
        if (p.Wd) {
            return false;
        }
        Label_0046: {
            if (p.Wa == null) {
                break Label_0046;
            }
            try {
                while (true) {
                    if (p.Wa.get(view) != null) {
                        return b;
                    }
                    return b2;
                    b2 = b;
                    return b2;
                    final Class<View> clazz = View.class;
                    final String s = "mAccessibilityDelegate";
                    final Class<View> clazz2 = clazz;
                    try {
                        (p.Wa = clazz2.getDeclaredField(s)).setAccessible(true);
                        continue;
                    }
                    finally {
                        p.Wd = b;
                        return false;
                    }
                    break;
                }
                return b;
            }
            finally {
                p.Wd = b;
                return false;
            }
        }
    }
    
    public void onInitializeAccessibilityNodeInfo(final View view, final a a) {
        view.onInitializeAccessibilityNodeInfo(a.aeW());
    }
    
    public boolean performAccessibilityAction(final View view, final int n, final Bundle bundle) {
        return false;
    }
}

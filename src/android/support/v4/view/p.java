// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.os.Bundle;
import android.view.View$AccessibilityDelegate;
import android.animation.ValueAnimator;
import android.view.WindowManager;
import android.view.Display;
import android.view.View;
import java.util.WeakHashMap;
import java.lang.reflect.Field;

class p
{
    static Field UA;
    private static boolean UB;
    private static WeakHashMap UC;
    static boolean UD;
    private static Field UE;
    private static Field Uy;
    private static boolean Uz;
    WeakHashMap Ux;
    
    static {
        p.UD = false;
    }
    
    p() {
        this.Ux = null;
    }
    
    public String afI(final View view) {
        if (p.UC != null) {
            return p.UC.get(view);
        }
        return null;
    }
    
    public void afJ(final View view) {
        if (view instanceof e) {
            ((e)view).stopNestedScroll();
        }
    }
    
    public void afK(final View view, final int n) {
    }
    
    public boolean afL(final View view) {
        return view.getWindowToken() != null;
    }
    
    public int afM(final View view) {
        return 0;
    }
    
    public Display afN(final View view) {
        if (!this.afL(view)) {
            return null;
        }
        return ((WindowManager)view.getContext().getSystemService("window")).getDefaultDisplay();
    }
    
    public int afO(final View view) {
        final boolean uz = true;
        while (true) {
            Label_0066: {
                Label_0022: {
                    if (!p.Uz) {
                        break Label_0022;
                    }
                    if (p.Uy != null) {
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
                        (p.Uy = declaredField).setAccessible(true);
                        p.Uz = uz;
                        continue;
                        try {
                            final Object value = p.Uy.get(view);
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
    
    public int afP(final View view) {
        return 0;
    }
    
    public boolean afQ(final View view) {
        return true;
    }
    
    public void afR(final View view, final Runnable runnable) {
        view.postDelayed(runnable, this.afW());
    }
    
    public void afS(final View view, final Runnable runnable, final long n) {
        view.postDelayed(runnable, this.afW() + n);
    }
    
    public boolean afT(final View view) {
        return false;
    }
    
    public void afU(final View view) {
        view.postInvalidate();
    }
    
    public int afV(final View view) {
        final boolean ub = true;
        while (true) {
            Label_0066: {
                Label_0022: {
                    if (!p.UB) {
                        break Label_0022;
                    }
                    if (p.UE != null) {
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
                        (p.UE = declaredField).setAccessible(true);
                        p.UB = ub;
                        continue;
                        try {
                            final Object value = p.UE.get(view);
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
    
    long afW() {
        return ValueAnimator.getFrameDelay();
    }
    
    public void afX(final View view, final a a) {
        View$AccessibilityDelegate bridge = null;
        if (a != null) {
            bridge = a.getBridge();
        }
        view.setAccessibilityDelegate(bridge);
    }
    
    public boolean afY(final View view) {
        final boolean b = true;
        boolean b2 = false;
        if (p.UD) {
            return false;
        }
        Label_0046: {
            if (p.UA == null) {
                break Label_0046;
            }
            try {
                while (true) {
                    if (p.UA.get(view) != null) {
                        return b;
                    }
                    return b2;
                    b2 = b;
                    return b2;
                    final Class<View> clazz = View.class;
                    final String s = "mAccessibilityDelegate";
                    final Class<View> clazz2 = clazz;
                    try {
                        (p.UA = clazz2.getDeclaredField(s)).setAccessible(true);
                        continue;
                    }
                    finally {
                        p.UD = b;
                        return false;
                    }
                    break;
                }
                return b;
            }
            finally {
                p.UD = b;
                return false;
            }
        }
    }
    
    public void onInitializeAccessibilityNodeInfo(final View view, final android.support.v4.view.a.a a) {
        view.onInitializeAccessibilityNodeInfo(a.adU());
    }
    
    public boolean performAccessibilityAction(final View view, final int n, final Bundle bundle) {
        return false;
    }
}

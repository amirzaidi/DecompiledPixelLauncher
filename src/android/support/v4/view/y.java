// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.util.TypedValue;
import android.content.Context;
import android.util.Log;
import android.view.ViewConfiguration;
import android.os.Build$VERSION;
import java.lang.reflect.Method;

public final class y
{
    private static Method Wh;
    
    static {
        if (Build$VERSION.SDK_INT == 25) {
            try {
                final Method declaredMethod = ViewConfiguration.class.getDeclaredMethod("getScaledScrollFactor", (Class<?>[])new Class[0]);
                try {
                    y.Wh = declaredMethod;
                }
                catch (Exception ex) {
                    Log.i("ViewConfigCompat", "Could not find method getScaledScrollFactor() on ViewConfiguration");
                }
            }
            catch (Exception ex2) {}
        }
    }
    
    public static float ahw(final ViewConfiguration viewConfiguration, final Context context) {
        if (Build$VERSION.SDK_INT < 26) {
            return ahy(viewConfiguration, context);
        }
        return viewConfiguration.getScaledHorizontalScrollFactor();
    }
    
    public static float ahx(final ViewConfiguration viewConfiguration, final Context context) {
        if (Build$VERSION.SDK_INT < 26) {
            return ahy(viewConfiguration, context);
        }
        return viewConfiguration.getScaledVerticalScrollFactor();
    }
    
    private static float ahy(final ViewConfiguration viewConfiguration, final Context context) {
        if (Build$VERSION.SDK_INT >= 25 && y.Wh != null) {
            try {
                final Object invoke = y.Wh.invoke(viewConfiguration, new Object[0]);
                try {
                    final Integer n = (Integer)invoke;
                    try {
                        return n;
                    }
                    catch (Exception ex) {
                        Log.i("ViewConfigCompat", "Could not find method getScaledScrollFactor() on ViewConfiguration");
                    }
                }
                catch (Exception ex2) {}
            }
            catch (Exception ex3) {}
            final TypedValue typedValue;
            return typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        final TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(16842829, typedValue, true)) {
            return 0.0f;
        }
        return typedValue.getDimension(context.getResources().getDisplayMetrics());
    }
}

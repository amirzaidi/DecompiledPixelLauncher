// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

public class j
{
    public static void aha(final Object o, final StringBuilder sb) {
        if (o != null) {
            String s = o.getClass().getSimpleName();
            if (s == null || s.length() <= 0) {
                s = o.getClass().getName();
                final int lastIndex = s.lastIndexOf(46);
                if (lastIndex > 0) {
                    s = s.substring(lastIndex + 1);
                }
            }
            sb.append(s);
            sb.append('{');
            sb.append(Integer.toHexString(System.identityHashCode(o)));
        }
        else {
            sb.append("null");
        }
    }
}

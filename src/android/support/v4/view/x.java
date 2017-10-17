// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.view.MotionEvent;

public final class x
{
    public static boolean ahv(final MotionEvent motionEvent, final int n) {
        return (motionEvent.getSource() & n) == n;
    }
}

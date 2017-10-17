// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view.a;

import android.view.View;
import android.os.Build$VERSION;
import android.view.accessibility.AccessibilityRecord;

public class r
{
    private static final u VF;
    private final AccessibilityRecord VG;
    
    static {
        if (Build$VERSION.SDK_INT < 16) {
            if (Build$VERSION.SDK_INT < 15) {
                VF = new u();
            }
            else {
                VF = new t();
            }
        }
        else {
            VF = new s();
        }
    }
    
    public r(final Object o) {
        this.VG = (AccessibilityRecord)o;
    }
    
    public static void agg(final AccessibilityRecord accessibilityRecord, final View view, final int n) {
        r.VF.agi(accessibilityRecord, view, n);
    }
    
    public void agc(final int fromIndex) {
        this.VG.setFromIndex(fromIndex);
    }
    
    public void agd(final int itemCount) {
        this.VG.setItemCount(itemCount);
    }
    
    public int age() {
        return this.VG.getFromIndex();
    }
    
    public int agf() {
        return this.VG.getToIndex();
    }
    
    public void agh(final int toIndex) {
        this.VG.setToIndex(toIndex);
    }
    
    public boolean equals(final Object o) {
        final boolean b = true;
        if (this == o) {
            return b;
        }
        if (o == null) {
            return false;
        }
        if (this.getClass() == o.getClass()) {
            final r r = (r)o;
            if (this.VG != null) {
                if (!this.VG.equals(r.VG)) {
                    return false;
                }
            }
            else if (r.VG != null) {
                return false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        int hashCode;
        if (this.VG != null) {
            hashCode = this.VG.hashCode();
        }
        else {
            hashCode = 0;
        }
        return hashCode;
    }
}

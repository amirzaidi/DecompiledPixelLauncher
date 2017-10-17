// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view.a;

import android.view.View;
import android.os.Build$VERSION;
import android.view.accessibility.AccessibilityRecord;

public class v
{
    private static final y Uf;
    private final AccessibilityRecord Ug;
    
    static {
        if (Build$VERSION.SDK_INT < 16) {
            if (Build$VERSION.SDK_INT < 15) {
                Uf = new y();
            }
            else {
                Uf = new x();
            }
        }
        else {
            Uf = new w();
        }
    }
    
    public v(final Object o) {
        this.Ug = (AccessibilityRecord)o;
    }
    
    public static void aff(final AccessibilityRecord accessibilityRecord, final View view, final int n) {
        v.Uf.afh(accessibilityRecord, view, n);
    }
    
    public void afb(final int fromIndex) {
        this.Ug.setFromIndex(fromIndex);
    }
    
    public void afc(final int itemCount) {
        this.Ug.setItemCount(itemCount);
    }
    
    public int afd() {
        return this.Ug.getFromIndex();
    }
    
    public int afe() {
        return this.Ug.getToIndex();
    }
    
    public void afg(final int toIndex) {
        this.Ug.setToIndex(toIndex);
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
            final v v = (v)o;
            if (this.Ug != null) {
                if (!this.Ug.equals(v.Ug)) {
                    return false;
                }
            }
            else if (v.Ug != null) {
                return false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        int hashCode;
        if (this.Ug != null) {
            hashCode = this.Ug.hashCode();
        }
        else {
            hashCode = 0;
        }
        return hashCode;
    }
}

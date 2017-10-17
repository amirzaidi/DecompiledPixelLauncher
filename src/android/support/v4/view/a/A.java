// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view.a;

import android.graphics.Rect;
import android.view.View;
import android.os.Build$VERSION;
import android.view.accessibility.AccessibilityNodeInfo;

public class a
{
    static final k Vy;
    private final AccessibilityNodeInfo Vx;
    public int Vz;
    
    static {
        if (Build$VERSION.SDK_INT < 24) {
            if (Build$VERSION.SDK_INT < 23) {
                if (Build$VERSION.SDK_INT < 22) {
                    if (Build$VERSION.SDK_INT < 21) {
                        if (Build$VERSION.SDK_INT < 19) {
                            if (Build$VERSION.SDK_INT < 18) {
                                if (Build$VERSION.SDK_INT < 17) {
                                    if (Build$VERSION.SDK_INT < 16) {
                                        Vy = new k();
                                    }
                                    else {
                                        Vy = new j();
                                    }
                                }
                                else {
                                    Vy = new i();
                                }
                            }
                            else {
                                Vy = new h();
                            }
                        }
                        else {
                            Vy = new g();
                        }
                    }
                    else {
                        Vy = new f();
                    }
                }
                else {
                    Vy = new e();
                }
            }
            else {
                Vy = new d();
            }
        }
        else {
            Vy = new c();
        }
    }
    
    private a(final AccessibilityNodeInfo vx) {
        this.Vz = -1;
        this.Vx = vx;
    }
    
    private static String aeJ(final int n) {
        switch (n) {
            default: {
                return "ACTION_UNKNOWN";
            }
            case 1: {
                return "ACTION_FOCUS";
            }
            case 2: {
                return "ACTION_CLEAR_FOCUS";
            }
            case 4: {
                return "ACTION_SELECT";
            }
            case 8: {
                return "ACTION_CLEAR_SELECTION";
            }
            case 16: {
                return "ACTION_CLICK";
            }
            case 32: {
                return "ACTION_LONG_CLICK";
            }
            case 64: {
                return "ACTION_ACCESSIBILITY_FOCUS";
            }
            case 128: {
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            }
            case 256: {
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            }
            case 512: {
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            }
            case 1024: {
                return "ACTION_NEXT_HTML_ELEMENT";
            }
            case 2048: {
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            }
            case 4096: {
                return "ACTION_SCROLL_FORWARD";
            }
            case 8192: {
                return "ACTION_SCROLL_BACKWARD";
            }
            case 65536: {
                return "ACTION_CUT";
            }
            case 16384: {
                return "ACTION_COPY";
            }
            case 32768: {
                return "ACTION_PASTE";
            }
            case 131072: {
                return "ACTION_SET_SELECTION";
            }
        }
    }
    
    public static a aeM() {
        return afw(AccessibilityNodeInfo.obtain());
    }
    
    public static a afk(final View view) {
        return afw(AccessibilityNodeInfo.obtain(view));
    }
    
    public static a afq(final a a) {
        return afw(AccessibilityNodeInfo.obtain(a.Vx));
    }
    
    public static a afw(final AccessibilityNodeInfo accessibilityNodeInfo) {
        return new a(accessibilityNodeInfo);
    }
    
    public void aeH(final Object o) {
        a.Vy.afG(this.Vx, ((m)o).VD);
    }
    
    public l aeI() {
        final Object afD = a.Vy.afD(this.Vx);
        if (afD != null) {
            return new l(afD);
        }
        return null;
    }
    
    public boolean aeK() {
        return this.Vx.isCheckable();
    }
    
    public void aeL(final View view, final int n) {
        a.Vy.afO(this.Vx, view, n);
    }
    
    public void aeN(final Object o) {
        a.Vy.afF(this.Vx, ((l)o).VC);
    }
    
    public void aeO(final Rect rect) {
        this.Vx.getBoundsInParent(rect);
    }
    
    public String aeP() {
        return a.Vy.afJ(this.Vx);
    }
    
    public boolean aeQ() {
        return this.Vx.isSelected();
    }
    
    public CharSequence aeR() {
        return this.Vx.getContentDescription();
    }
    
    public void aeS(final boolean scrollable) {
        this.Vx.setScrollable(scrollable);
    }
    
    public void aeT(final boolean focusable) {
        this.Vx.setFocusable(focusable);
    }
    
    public void aeU(final View parent) {
        this.Vx.setParent(parent);
    }
    
    public void aeV(final Rect rect) {
        this.Vx.getBoundsInScreen(rect);
    }
    
    public AccessibilityNodeInfo aeW() {
        return this.Vx;
    }
    
    public void aeX(final Rect boundsInScreen) {
        this.Vx.setBoundsInScreen(boundsInScreen);
    }
    
    public void aeY(final int n) {
        this.Vx.addAction(n);
    }
    
    public void aeZ(final boolean clickable) {
        this.Vx.setClickable(clickable);
    }
    
    public boolean afa() {
        return this.Vx.isScrollable();
    }
    
    public void afb(final CharSequence packageName) {
        this.Vx.setPackageName(packageName);
    }
    
    public void afc(final View view, final int n) {
        a.Vy.afN(this.Vx, view, n);
    }
    
    public void afd(final CharSequence className) {
        this.Vx.setClassName(className);
    }
    
    public void afe() {
        this.Vx.recycle();
    }
    
    public boolean aff() {
        return this.Vx.isFocusable();
    }
    
    public CharSequence afg() {
        return this.Vx.getText();
    }
    
    public boolean afh() {
        return this.Vx.isClickable();
    }
    
    public void afi(final Rect boundsInParent) {
        this.Vx.setBoundsInParent(boundsInParent);
    }
    
    public void afj(final boolean b) {
        a.Vy.afK(this.Vx, b);
    }
    
    public void afl(final boolean enabled) {
        this.Vx.setEnabled(enabled);
    }
    
    public boolean afm() {
        return this.Vx.isFocused();
    }
    
    public CharSequence afn() {
        return this.Vx.getClassName();
    }
    
    public void afo(final boolean focused) {
        this.Vx.setFocused(focused);
    }
    
    public void afp(final boolean b) {
        a.Vy.afM(this.Vx, b);
    }
    
    public boolean afr() {
        return this.Vx.isLongClickable();
    }
    
    public void afs(final View view, final int vz) {
        this.Vz = vz;
        a.Vy.afL(this.Vx, view, vz);
    }
    
    public boolean aft() {
        return this.Vx.isPassword();
    }
    
    public int afu() {
        return this.Vx.getActions();
    }
    
    public boolean afv() {
        return this.Vx.isChecked();
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
            final a a = (a)o;
            if (this.Vx != null) {
                if (!this.Vx.equals((Object)a.Vx)) {
                    return false;
                }
            }
            else if (a.Vx != null) {
                return false;
            }
            return b;
        }
        return false;
    }
    
    public int getChildCount() {
        return this.Vx.getChildCount();
    }
    
    public CharSequence getPackageName() {
        return this.Vx.getPackageName();
    }
    
    public int hashCode() {
        int hashCode;
        if (this.Vx != null) {
            hashCode = this.Vx.hashCode();
        }
        else {
            hashCode = 0;
        }
        return hashCode;
    }
    
    public boolean isEnabled() {
        return this.Vx.isEnabled();
    }
    
    public void setContentDescription(final CharSequence contentDescription) {
        this.Vx.setContentDescription(contentDescription);
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        final Rect rect = new Rect();
        this.aeO(rect);
        sb.append("; boundsInParent: " + rect);
        this.aeV(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ").append(this.getPackageName());
        sb.append("; className: ").append(this.afn());
        sb.append("; text: ").append(this.afg());
        sb.append("; contentDescription: ").append(this.aeR());
        sb.append("; viewId: ").append(this.aeP());
        sb.append("; checkable: ").append(this.aeK());
        sb.append("; checked: ").append(this.afv());
        sb.append("; focusable: ").append(this.aff());
        sb.append("; focused: ").append(this.afm());
        sb.append("; selected: ").append(this.aeQ());
        sb.append("; clickable: ").append(this.afh());
        sb.append("; longClickable: ").append(this.afr());
        sb.append("; enabled: ").append(this.isEnabled());
        sb.append("; password: ").append(this.aft());
        sb.append("; scrollable: " + this.afa());
        sb.append("; [");
        int i = this.afu();
        while (i != 0) {
            final int n = 1 << Integer.numberOfTrailingZeros(i);
            i &= ~n;
            sb.append(aeJ(n));
            if (i != 0) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}

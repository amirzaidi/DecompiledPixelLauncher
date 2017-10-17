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
    static final k TY;
    private final AccessibilityNodeInfo TX;
    public int TZ;
    
    static {
        if (Build$VERSION.SDK_INT < 24) {
            if (Build$VERSION.SDK_INT < 23) {
                if (Build$VERSION.SDK_INT < 22) {
                    if (Build$VERSION.SDK_INT < 21) {
                        if (Build$VERSION.SDK_INT < 19) {
                            if (Build$VERSION.SDK_INT < 18) {
                                if (Build$VERSION.SDK_INT < 17) {
                                    if (Build$VERSION.SDK_INT < 16) {
                                        TY = new k();
                                    }
                                    else {
                                        TY = new j();
                                    }
                                }
                                else {
                                    TY = new i();
                                }
                            }
                            else {
                                TY = new h();
                            }
                        }
                        else {
                            TY = new g();
                        }
                    }
                    else {
                        TY = new f();
                    }
                }
                else {
                    TY = new e();
                }
            }
            else {
                TY = new d();
            }
        }
        else {
            TY = new c();
        }
    }
    
    private a(final AccessibilityNodeInfo tx) {
        this.TZ = -1;
        this.TX = tx;
    }
    
    private static String adH(final int n) {
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
    
    public static a adK() {
        return aeu(AccessibilityNodeInfo.obtain());
    }
    
    public static a aei(final View view) {
        return aeu(AccessibilityNodeInfo.obtain(view));
    }
    
    public static a aeo(final a a) {
        return aeu(AccessibilityNodeInfo.obtain(a.TX));
    }
    
    public static a aeu(final AccessibilityNodeInfo accessibilityNodeInfo) {
        return new a(accessibilityNodeInfo);
    }
    
    public void adF(final Object o) {
        a.TY.aeE(this.TX, ((m)o).Ud);
    }
    
    public l adG() {
        final Object aeB = a.TY.aeB(this.TX);
        if (aeB != null) {
            return new l(aeB);
        }
        return null;
    }
    
    public boolean adI() {
        return this.TX.isCheckable();
    }
    
    public void adJ(final View view, final int n) {
        a.TY.aeM(this.TX, view, n);
    }
    
    public void adL(final Object o) {
        a.TY.aeD(this.TX, ((l)o).Uc);
    }
    
    public void adM(final Rect rect) {
        this.TX.getBoundsInParent(rect);
    }
    
    public String adN() {
        return a.TY.aeH(this.TX);
    }
    
    public boolean adO() {
        return this.TX.isSelected();
    }
    
    public CharSequence adP() {
        return this.TX.getContentDescription();
    }
    
    public void adQ(final boolean scrollable) {
        this.TX.setScrollable(scrollable);
    }
    
    public void adR(final boolean focusable) {
        this.TX.setFocusable(focusable);
    }
    
    public void adS(final View parent) {
        this.TX.setParent(parent);
    }
    
    public void adT(final Rect rect) {
        this.TX.getBoundsInScreen(rect);
    }
    
    public AccessibilityNodeInfo adU() {
        return this.TX;
    }
    
    public void adV(final Rect boundsInScreen) {
        this.TX.setBoundsInScreen(boundsInScreen);
    }
    
    public void adW(final int n) {
        this.TX.addAction(n);
    }
    
    public void adX(final boolean clickable) {
        this.TX.setClickable(clickable);
    }
    
    public boolean adY() {
        return this.TX.isScrollable();
    }
    
    public void adZ(final CharSequence packageName) {
        this.TX.setPackageName(packageName);
    }
    
    public void aea(final View view, final int n) {
        a.TY.aeL(this.TX, view, n);
    }
    
    public void aeb(final CharSequence className) {
        this.TX.setClassName(className);
    }
    
    public void aec() {
        this.TX.recycle();
    }
    
    public boolean aed() {
        return this.TX.isFocusable();
    }
    
    public CharSequence aee() {
        return this.TX.getText();
    }
    
    public boolean aef() {
        return this.TX.isClickable();
    }
    
    public void aeg(final Rect boundsInParent) {
        this.TX.setBoundsInParent(boundsInParent);
    }
    
    public void aeh(final boolean b) {
        a.TY.aeI(this.TX, b);
    }
    
    public void aej(final boolean enabled) {
        this.TX.setEnabled(enabled);
    }
    
    public boolean aek() {
        return this.TX.isFocused();
    }
    
    public CharSequence ael() {
        return this.TX.getClassName();
    }
    
    public void aem(final boolean focused) {
        this.TX.setFocused(focused);
    }
    
    public void aen(final boolean b) {
        a.TY.aeK(this.TX, b);
    }
    
    public boolean aep() {
        return this.TX.isLongClickable();
    }
    
    public void aeq(final View view, final int tz) {
        this.TZ = tz;
        a.TY.aeJ(this.TX, view, tz);
    }
    
    public boolean aer() {
        return this.TX.isPassword();
    }
    
    public int aes() {
        return this.TX.getActions();
    }
    
    public boolean aet() {
        return this.TX.isChecked();
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
            if (this.TX != null) {
                if (!this.TX.equals((Object)a.TX)) {
                    return false;
                }
            }
            else if (a.TX != null) {
                return false;
            }
            return b;
        }
        return false;
    }
    
    public int getChildCount() {
        return this.TX.getChildCount();
    }
    
    public CharSequence getPackageName() {
        return this.TX.getPackageName();
    }
    
    public int hashCode() {
        int hashCode;
        if (this.TX != null) {
            hashCode = this.TX.hashCode();
        }
        else {
            hashCode = 0;
        }
        return hashCode;
    }
    
    public boolean isEnabled() {
        return this.TX.isEnabled();
    }
    
    public void setContentDescription(final CharSequence contentDescription) {
        this.TX.setContentDescription(contentDescription);
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        final Rect rect = new Rect();
        this.adM(rect);
        sb.append("; boundsInParent: " + rect);
        this.adT(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ").append(this.getPackageName());
        sb.append("; className: ").append(this.ael());
        sb.append("; text: ").append(this.aee());
        sb.append("; contentDescription: ").append(this.adP());
        sb.append("; viewId: ").append(this.adN());
        sb.append("; checkable: ").append(this.adI());
        sb.append("; checked: ").append(this.aet());
        sb.append("; focusable: ").append(this.aed());
        sb.append("; focused: ").append(this.aek());
        sb.append("; selected: ").append(this.adO());
        sb.append("; clickable: ").append(this.aef());
        sb.append("; longClickable: ").append(this.aep());
        sb.append("; enabled: ").append(this.isEnabled());
        sb.append("; password: ").append(this.aer());
        sb.append("; scrollable: " + this.adY());
        sb.append("; [");
        int i = this.aes();
        while (i != 0) {
            final int n = 1 << Integer.numberOfTrailingZeros(i);
            i &= ~n;
            sb.append(adH(n));
            if (i != 0) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.widget;

import android.support.v4.view.D;
import android.view.MotionEvent;
import android.support.v4.view.a.H;
import android.os.Bundle;
import android.view.ViewParent;
import java.util.List;
import java.util.ArrayList;
import android.view.accessibility.AccessibilityRecord;
import android.support.v4.view.a.v;
import android.view.accessibility.AccessibilityEvent;
import android.support.v4.view.f;
import android.view.accessibility.AccessibilityManager;
import android.view.View;
import android.graphics.Rect;

public abstract class a extends android.support.v4.view.a
{
    private static final Rect INVALID_PARENT_BOUNDS;
    private static final d NODE_ADAPTER;
    private static final c SPARSE_VALUES_ADAPTER;
    private int mAccessibilityFocusedVirtualViewId;
    private final View mHost;
    private int mHoveredVirtualViewId;
    private int mKeyboardFocusedVirtualViewId;
    private final AccessibilityManager mManager;
    private b mNodeProvider;
    private final int[] mTempGlobalRect;
    private final Rect mTempParentRect;
    private final Rect mTempScreenRect;
    private final Rect mTempVisibleRect;
    
    static {
        final int n = -1 >>> 1;
        final int n2 = -1 << -1;
        INVALID_PARENT_BOUNDS = new Rect(n, n, n2, n2);
        NODE_ADAPTER = new l();
        SPARSE_VALUES_ADAPTER = new i();
    }
    
    public a(final View mHost) {
        final int focusable = 1;
        final int mHoveredVirtualViewId = -1 << -1;
        this.mTempScreenRect = new Rect();
        this.mTempParentRect = new Rect();
        this.mTempVisibleRect = new Rect();
        this.mTempGlobalRect = new int[2];
        this.mAccessibilityFocusedVirtualViewId = mHoveredVirtualViewId;
        this.mKeyboardFocusedVirtualViewId = mHoveredVirtualViewId;
        this.mHoveredVirtualViewId = mHoveredVirtualViewId;
        if (mHost != null) {
            this.mHost = mHost;
            this.mManager = (AccessibilityManager)mHost.getContext().getSystemService("accessibility");
            mHost.setFocusable((boolean)(focusable != 0));
            if (f.afy(mHost) == 0) {
                f.afA(mHost, focusable);
            }
            return;
        }
        throw new IllegalArgumentException("View may not be null");
    }
    
    private boolean clearAccessibilityFocus(final int n) {
        if (this.mAccessibilityFocusedVirtualViewId != n) {
            return false;
        }
        this.mAccessibilityFocusedVirtualViewId = -1 << -1;
        this.mHost.invalidate();
        this.sendEventForVirtualView(n, 65536);
        return true;
    }
    
    private AccessibilityEvent createEvent(final int n, final int n2) {
        switch (n) {
            default: {
                return this.createEventForChild(n, n2);
            }
            case -1: {
                return this.createEventForHost(n2);
            }
        }
    }
    
    private AccessibilityEvent createEventForChild(final int n, final int n2) {
        final AccessibilityEvent obtain = AccessibilityEvent.obtain(n2);
        final android.support.v4.view.a.a obtainAccessibilityNodeInfo = this.obtainAccessibilityNodeInfo(n);
        obtain.getText().add(obtainAccessibilityNodeInfo.aee());
        obtain.setContentDescription(obtainAccessibilityNodeInfo.adP());
        obtain.setScrollable(obtainAccessibilityNodeInfo.adY());
        obtain.setPassword(obtainAccessibilityNodeInfo.aer());
        obtain.setEnabled(obtainAccessibilityNodeInfo.isEnabled());
        obtain.setChecked(obtainAccessibilityNodeInfo.aet());
        this.onPopulateEventForVirtualView(n, obtain);
        if (obtain.getText().isEmpty() && obtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        obtain.setClassName(obtainAccessibilityNodeInfo.ael());
        v.aff((AccessibilityRecord)obtain, this.mHost, n);
        obtain.setPackageName((CharSequence)this.mHost.getContext().getPackageName());
        return obtain;
    }
    
    private AccessibilityEvent createEventForHost(final int n) {
        final AccessibilityEvent obtain = AccessibilityEvent.obtain(n);
        f.onInitializeAccessibilityEvent(this.mHost, obtain);
        return obtain;
    }
    
    private android.support.v4.view.a.a createNodeForChild(final int n) {
        final int n2 = -1;
        final int n3 = 1;
        final android.support.v4.view.a.a adK = android.support.v4.view.a.a.adK();
        adK.aej(n3 != 0);
        adK.adR(n3 != 0);
        adK.aeb("android.view.View");
        adK.aeg(a.INVALID_PARENT_BOUNDS);
        adK.adV(a.INVALID_PARENT_BOUNDS);
        adK.adS(this.mHost);
        this.onPopulateNodeForVirtualView(n, adK);
        if (adK.aee() == null && adK.adP() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        adK.adM(this.mTempParentRect);
        if (this.mTempParentRect.equals((Object)a.INVALID_PARENT_BOUNDS)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        final int aes = adK.aes();
        if ((aes & 0x40) != 0x0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((aes & 0x80) == 0x0) {
            adK.adZ(this.mHost.getContext().getPackageName());
            adK.aea(this.mHost, n);
            if (this.mAccessibilityFocusedVirtualViewId != n) {
                adK.aen(false);
                adK.adW(64);
            }
            else {
                adK.aen(n3 != 0);
                adK.adW(128);
            }
            final boolean b = this.mKeyboardFocusedVirtualViewId == n && n3;
            if (!b) {
                if (adK.aed()) {
                    adK.adW(n3);
                }
            }
            else {
                adK.adW(2);
            }
            adK.aem(b);
            this.mHost.getLocationOnScreen(this.mTempGlobalRect);
            adK.adT(this.mTempScreenRect);
            if (this.mTempScreenRect.equals((Object)a.INVALID_PARENT_BOUNDS)) {
                adK.adM(this.mTempScreenRect);
                if (adK.TZ != n2) {
                    final android.support.v4.view.a.a adK2 = android.support.v4.view.a.a.adK();
                    for (int i = adK.TZ; i != n2; i = adK2.TZ) {
                        adK2.aeq(this.mHost, n2);
                        adK2.aeg(a.INVALID_PARENT_BOUNDS);
                        this.onPopulateNodeForVirtualView(i, adK2);
                        adK2.adM(this.mTempParentRect);
                        this.mTempScreenRect.offset(this.mTempParentRect.left, this.mTempParentRect.top);
                    }
                    adK2.aec();
                }
                this.mTempScreenRect.offset(this.mTempGlobalRect[0] - this.mHost.getScrollX(), this.mTempGlobalRect[n3] - this.mHost.getScrollY());
            }
            if (this.mHost.getLocalVisibleRect(this.mTempVisibleRect)) {
                this.mTempVisibleRect.offset(this.mTempGlobalRect[0] - this.mHost.getScrollX(), this.mTempGlobalRect[n3] - this.mHost.getScrollY());
                this.mTempScreenRect.intersect(this.mTempVisibleRect);
                adK.adV(this.mTempScreenRect);
                if (this.isVisibleToUser(this.mTempScreenRect)) {
                    adK.aeh(n3 != 0);
                }
            }
            return adK;
        }
        throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
    }
    
    private android.support.v4.view.a.a createNodeForHost() {
        final android.support.v4.view.a.a aei = android.support.v4.view.a.a.aei(this.mHost);
        f.onInitializeAccessibilityNodeInfo(this.mHost, aei);
        final ArrayList<Integer> list = new ArrayList<Integer>();
        this.getVisibleVirtualViews(list);
        if (aei.getChildCount() > 0 && list.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        for (int size = list.size(), i = 0; i < size; ++i) {
            aei.adJ(this.mHost, list.get(i));
        }
        return aei;
    }
    
    private boolean isVisibleToUser(final Rect rect) {
        final boolean b = true;
        if (rect == null || rect.isEmpty()) {
            return false;
        }
        if (this.mHost.getWindowVisibility() == 0) {
            ViewParent viewParent;
            View view;
            for (viewParent = this.mHost.getParent(); viewParent instanceof View; viewParent = view.getParent()) {
                view = (View)viewParent;
                if ((f.afG(view) <= 0.0f && b) || view.getVisibility() != 0) {
                    return false;
                }
            }
            return viewParent != null && b;
        }
        return false;
    }
    
    private boolean performActionForChild(final int n, final int n2, final Bundle bundle) {
        switch (n2) {
            default: {
                return this.onPerformActionForVirtualView(n, n2, bundle);
            }
            case 64: {
                return this.requestAccessibilityFocus(n);
            }
            case 128: {
                return this.clearAccessibilityFocus(n);
            }
            case 1: {
                return this.requestKeyboardFocusForVirtualView(n);
            }
            case 2: {
                return this.clearKeyboardFocusForVirtualView(n);
            }
        }
    }
    
    private boolean performActionForHost(final int n, final Bundle bundle) {
        return f.performAccessibilityAction(this.mHost, n, bundle);
    }
    
    private boolean requestAccessibilityFocus(final int mAccessibilityFocusedVirtualViewId) {
        if (!this.mManager.isEnabled() || !H.afk(this.mManager)) {
            return false;
        }
        if (this.mAccessibilityFocusedVirtualViewId == mAccessibilityFocusedVirtualViewId) {
            return false;
        }
        if (this.mAccessibilityFocusedVirtualViewId != -1 << -1) {
            this.clearAccessibilityFocus(this.mAccessibilityFocusedVirtualViewId);
        }
        this.mAccessibilityFocusedVirtualViewId = mAccessibilityFocusedVirtualViewId;
        this.mHost.invalidate();
        this.sendEventForVirtualView(mAccessibilityFocusedVirtualViewId, 32768);
        return true;
    }
    
    private void updateHoveredVirtualView(final int mHoveredVirtualViewId) {
        if (this.mHoveredVirtualViewId != mHoveredVirtualViewId) {
            final int mHoveredVirtualViewId2 = this.mHoveredVirtualViewId;
            this.sendEventForVirtualView(this.mHoveredVirtualViewId = mHoveredVirtualViewId, 128);
            this.sendEventForVirtualView(mHoveredVirtualViewId2, 256);
        }
    }
    
    public final boolean clearKeyboardFocusForVirtualView(final int n) {
        if (this.mKeyboardFocusedVirtualViewId == n) {
            this.mKeyboardFocusedVirtualViewId = -1 << -1;
            this.onVirtualViewKeyboardFocusChanged(n, false);
            this.sendEventForVirtualView(n, 8);
            return true;
        }
        return false;
    }
    
    public final boolean dispatchHoverEvent(final MotionEvent motionEvent) {
        final boolean b = true;
        final int n = -1 << -1;
        boolean b2 = false;
        if (!this.mManager.isEnabled() || !H.afk(this.mManager)) {
            return false;
        }
        switch (motionEvent.getAction()) {
            default: {
                return false;
            }
            case 7:
            case 9: {
                final int virtualView = this.getVirtualViewAt(motionEvent.getX(), motionEvent.getY());
                this.updateHoveredVirtualView(virtualView);
                if (virtualView != n) {
                    b2 = b;
                }
                return b2;
            }
            case 10: {
                if (this.mAccessibilityFocusedVirtualViewId == n) {
                    return false;
                }
                this.updateHoveredVirtualView(n);
                return b;
            }
        }
    }
    
    public final int getAccessibilityFocusedVirtualViewId() {
        return this.mAccessibilityFocusedVirtualViewId;
    }
    
    public android.support.v4.view.a.b getAccessibilityNodeProvider(final View view) {
        if (this.mNodeProvider == null) {
            this.mNodeProvider = new b(this);
        }
        return this.mNodeProvider;
    }
    
    public int getFocusedVirtualView() {
        return this.getAccessibilityFocusedVirtualViewId();
    }
    
    protected abstract int getVirtualViewAt(final float p0, final float p1);
    
    protected abstract void getVisibleVirtualViews(final List p0);
    
    android.support.v4.view.a.a obtainAccessibilityNodeInfo(final int n) {
        if (n != -1) {
            return this.createNodeForChild(n);
        }
        return this.createNodeForHost();
    }
    
    public void onInitializeAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        this.onPopulateEventForHost(accessibilityEvent);
    }
    
    public void onInitializeAccessibilityNodeInfo(final View view, final android.support.v4.view.a.a a) {
        super.onInitializeAccessibilityNodeInfo(view, a);
        this.onPopulateNodeForHost(a);
    }
    
    protected abstract boolean onPerformActionForVirtualView(final int p0, final int p1, final Bundle p2);
    
    protected void onPopulateEventForHost(final AccessibilityEvent accessibilityEvent) {
    }
    
    protected void onPopulateEventForVirtualView(final int n, final AccessibilityEvent accessibilityEvent) {
    }
    
    protected void onPopulateNodeForHost(final android.support.v4.view.a.a a) {
    }
    
    protected abstract void onPopulateNodeForVirtualView(final int p0, final android.support.v4.view.a.a p1);
    
    protected void onVirtualViewKeyboardFocusChanged(final int n, final boolean b) {
    }
    
    boolean performAction(final int n, final int n2, final Bundle bundle) {
        switch (n) {
            default: {
                return this.performActionForChild(n, n2, bundle);
            }
            case -1: {
                return this.performActionForHost(n2, bundle);
            }
        }
    }
    
    public final boolean requestKeyboardFocusForVirtualView(final int mKeyboardFocusedVirtualViewId) {
        final boolean b = true;
        if (!this.mHost.isFocused() && !this.mHost.requestFocus()) {
            return false;
        }
        if (this.mKeyboardFocusedVirtualViewId != mKeyboardFocusedVirtualViewId) {
            if (this.mKeyboardFocusedVirtualViewId != -1 << -1) {
                this.clearKeyboardFocusForVirtualView(this.mKeyboardFocusedVirtualViewId);
            }
            this.onVirtualViewKeyboardFocusChanged(this.mKeyboardFocusedVirtualViewId = mKeyboardFocusedVirtualViewId, b);
            this.sendEventForVirtualView(mKeyboardFocusedVirtualViewId, 8);
            return b;
        }
        return false;
    }
    
    public final boolean sendEventForVirtualView(final int n, final int n2) {
        if (n != -1 << -1 && this.mManager.isEnabled()) {
            final ViewParent parent = this.mHost.getParent();
            return parent != null && D.agy(parent, this.mHost, this.createEvent(n, n2));
        }
        return false;
    }
}

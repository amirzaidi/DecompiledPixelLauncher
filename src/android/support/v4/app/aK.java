// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.View$OnAttachStateChangeListener;
import android.view.ViewTreeObserver$OnPreDrawListener;

class ak implements ViewTreeObserver$OnPreDrawListener, View$OnAttachStateChangeListener
{
    private ViewTreeObserver acf;
    private final Runnable mRunnable;
    private final View mView;
    
    private ak(final View mView, final Runnable mRunnable) {
        this.mView = mView;
        this.acf = mView.getViewTreeObserver();
        this.mRunnable = mRunnable;
    }
    
    public static ak anV(final View view, final Runnable runnable) {
        final ak ak = new ak(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener((ViewTreeObserver$OnPreDrawListener)ak);
        view.addOnAttachStateChangeListener((View$OnAttachStateChangeListener)ak);
        return ak;
    }
    
    public boolean onPreDraw() {
        this.removeListener();
        this.mRunnable.run();
        return true;
    }
    
    public void onViewAttachedToWindow(final View view) {
        this.acf = view.getViewTreeObserver();
    }
    
    public void onViewDetachedFromWindow(final View view) {
        this.removeListener();
    }
    
    public void removeListener() {
        if (!this.acf.isAlive()) {
            this.mView.getViewTreeObserver().removeOnPreDrawListener((ViewTreeObserver$OnPreDrawListener)this);
        }
        else {
            this.acf.removeOnPreDrawListener((ViewTreeObserver$OnPreDrawListener)this);
        }
        this.mView.removeOnAttachStateChangeListener((View$OnAttachStateChangeListener)this);
    }
}

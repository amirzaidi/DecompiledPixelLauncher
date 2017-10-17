// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import java.util.Iterator;
import java.util.ArrayList;
import com.android.launcher3.Launcher;
import com.android.launcher3.DeferredHandler;
import android.view.View;
import android.view.View$OnAttachStateChangeListener;
import android.view.ViewTreeObserver$OnDrawListener;
import java.util.concurrent.Executor;

public class ViewOnDrawExecutor implements Executor, ViewTreeObserver$OnDrawListener, Runnable, View$OnAttachStateChangeListener
{
    private View mAttachedView;
    private boolean mCompleted;
    private boolean mFirstDrawCompleted;
    private final DeferredHandler mHandler;
    private Launcher mLauncher;
    private boolean mLoadAnimationCompleted;
    private final ArrayList mTasks;
    
    public ViewOnDrawExecutor(final DeferredHandler mHandler) {
        this.mTasks = new ArrayList();
        this.mHandler = mHandler;
    }
    
    private void attachObserver() {
        if (!this.mCompleted) {
            this.mAttachedView.getViewTreeObserver().addOnDrawListener((ViewTreeObserver$OnDrawListener)this);
        }
    }
    
    public void attachTo(final Launcher mLauncher) {
        this.mLauncher = mLauncher;
        (this.mAttachedView = (View)mLauncher.getWorkspace()).addOnAttachStateChangeListener((View$OnAttachStateChangeListener)this);
        this.attachObserver();
    }
    
    public void execute(final Runnable runnable) {
        this.mTasks.add(runnable);
    }
    
    public void markCompleted() {
        this.mTasks.clear();
        this.mCompleted = true;
        if (this.mAttachedView != null) {
            this.mAttachedView.getViewTreeObserver().removeOnDrawListener((ViewTreeObserver$OnDrawListener)this);
            this.mAttachedView.removeOnAttachStateChangeListener((View$OnAttachStateChangeListener)this);
        }
        if (this.mLauncher != null) {
            this.mLauncher.clearPendingExecutor(this);
        }
    }
    
    public void onDraw() {
        this.mFirstDrawCompleted = true;
        this.mAttachedView.post((Runnable)this);
    }
    
    public void onLoadAnimationCompleted() {
        this.mLoadAnimationCompleted = true;
        if (this.mAttachedView != null) {
            this.mAttachedView.post((Runnable)this);
        }
    }
    
    public void onViewAttachedToWindow(final View view) {
        this.attachObserver();
    }
    
    public void onViewDetachedFromWindow(final View view) {
    }
    
    public void run() {
        if (this.mLoadAnimationCompleted && this.mFirstDrawCompleted && (this.mCompleted ^ true)) {
            final Iterator iterator = this.mTasks.iterator();
            while (iterator.hasNext()) {
                this.mHandler.post(iterator.next());
            }
            this.markCompleted();
        }
    }
}

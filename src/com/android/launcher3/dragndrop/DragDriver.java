// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.view.MotionEvent;
import android.view.DragEvent;
import com.android.launcher3.Utilities;
import com.android.launcher3.DropTarget$DragObject;
import android.content.Context;

public abstract class DragDriver
{
    protected final DragDriver$EventListener mEventListener;
    
    public DragDriver(final DragDriver$EventListener mEventListener) {
        this.mEventListener = mEventListener;
    }
    
    public static DragDriver create(final Context context, final DragController dragController, final DropTarget$DragObject dropTarget$DragObject, final DragOptions dragOptions) {
        if (Utilities.ATLEAST_NOUGAT && dragOptions.systemDndStartPoint != null) {
            return new SystemDragDriver(dragController, context, dropTarget$DragObject);
        }
        return new InternalDragDriver(dragController);
    }
    
    public abstract boolean onDragEvent(final DragEvent p0);
    
    public void onDragViewAnimationEnd() {
    }
    
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 1: {
                this.mEventListener.onDriverDragEnd(motionEvent.getX(), motionEvent.getY());
                break;
            }
            case 3: {
                this.mEventListener.onDriverDragCancel();
                break;
            }
        }
        return true;
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 2: {
                this.mEventListener.onDriverDragMove(motionEvent.getX(), motionEvent.getY());
                break;
            }
            case 1: {
                this.mEventListener.onDriverDragMove(motionEvent.getX(), motionEvent.getY());
                this.mEventListener.onDriverDragEnd(motionEvent.getX(), motionEvent.getY());
                break;
            }
            case 3: {
                this.mEventListener.onDriverDragCancel();
                break;
            }
        }
        return true;
    }
}

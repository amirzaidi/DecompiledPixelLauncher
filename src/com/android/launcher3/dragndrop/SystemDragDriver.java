// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.view.MotionEvent;
import android.view.DragEvent;
import com.android.launcher3.DropTarget$DragObject;
import android.content.Context;

class SystemDragDriver extends DragDriver
{
    float mLastX;
    float mLastY;
    
    SystemDragDriver(final DragController dragController, final Context context, final DropTarget$DragObject dropTarget$DragObject) {
        super(dragController);
        this.mLastX = 0.0f;
        this.mLastY = 0.0f;
    }
    
    public boolean onDragEvent(final DragEvent dragEvent) {
        final boolean b = true;
        switch (dragEvent.getAction()) {
            default: {
                return false;
            }
            case 1: {
                this.mLastX = dragEvent.getX();
                this.mLastY = dragEvent.getY();
                return b;
            }
            case 5: {
                return b;
            }
            case 2: {
                this.mLastX = dragEvent.getX();
                this.mLastY = dragEvent.getY();
                this.mEventListener.onDriverDragMove(dragEvent.getX(), dragEvent.getY());
                return b;
            }
            case 3: {
                this.mLastX = dragEvent.getX();
                this.mLastY = dragEvent.getY();
                this.mEventListener.onDriverDragMove(dragEvent.getX(), dragEvent.getY());
                this.mEventListener.onDriverDragEnd(this.mLastX, this.mLastY);
                return b;
            }
            case 6: {
                this.mEventListener.onDriverDragExitWindow();
                return b;
            }
            case 4: {
                this.mEventListener.onDriverDragCancel();
                return b;
            }
        }
    }
    
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        return false;
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        return false;
    }
}

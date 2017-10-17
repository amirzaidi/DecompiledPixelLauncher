// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import com.android.launcher3.folder.Folder;
import com.android.launcher3.DeleteDropTarget;
import com.android.launcher3.DropTarget$DragObject;
import android.content.ClipDescription;
import android.os.SystemClock;
import android.graphics.Point;
import android.util.Log;
import android.view.DragEvent;
import android.view.View;
import com.android.launcher3.widget.PendingItemDragHelper;
import android.os.Handler;
import android.os.Looper;
import android.content.Intent;
import android.os.Parcel;
import java.util.UUID;
import android.graphics.Rect;
import com.android.launcher3.Launcher;
import com.android.launcher3.DragSource;
import android.view.View$OnDragListener;

public abstract class BaseItemDragListener implements View$OnDragListener, DragSource, DragOptions$PreDragCondition
{
    private DragController mDragController;
    private long mDragStartTime;
    private final String mId;
    protected Launcher mLauncher;
    private final int mPreviewBitmapWidth;
    private final Rect mPreviewRect;
    private final int mPreviewViewWidth;
    
    public BaseItemDragListener(final Rect mPreviewRect, final int mPreviewBitmapWidth, final int mPreviewViewWidth) {
        this.mPreviewRect = mPreviewRect;
        this.mPreviewBitmapWidth = mPreviewBitmapWidth;
        this.mPreviewViewWidth = mPreviewViewWidth;
        this.mId = UUID.randomUUID().toString();
    }
    
    protected BaseItemDragListener(final Parcel parcel) {
        this.mPreviewRect = (Rect)Rect.CREATOR.createFromParcel(parcel);
        this.mPreviewBitmapWidth = parcel.readInt();
        this.mPreviewViewWidth = parcel.readInt();
        this.mId = parcel.readString();
    }
    
    private void postCleanup() {
        if (this.mLauncher != null) {
            final Intent intent = new Intent(this.mLauncher.getIntent());
            intent.removeExtra("pin_item_drag_listener");
            this.mLauncher.setIntent(intent);
        }
        new Handler(Looper.getMainLooper()).post((Runnable)new BaseItemDragListener$1(this));
    }
    
    protected abstract PendingItemDragHelper createDragHelper();
    
    public float getIntrinsicIconScaleFactor() {
        return 1.0f;
    }
    
    public String getMimeType() {
        return "com.android.launcher3.drag_and_drop/" + this.mId;
    }
    
    public boolean onDrag(final View view, final DragEvent dragEvent) {
        final boolean b = true;
        if (this.mLauncher == null || this.mDragController == null) {
            this.postCleanup();
            return false;
        }
        if (dragEvent.getAction() != (b ? 1 : 0)) {
            return this.mDragController.onDragEvent(this.mDragStartTime, dragEvent);
        }
        if (this.onDragStart(dragEvent)) {
            return b;
        }
        this.postCleanup();
        return false;
    }
    
    protected boolean onDragStart(final DragEvent dragEvent) {
        final ClipDescription clipDescription = dragEvent.getClipDescription();
        if (clipDescription == null || (clipDescription.hasMimeType(this.getMimeType()) ^ true)) {
            Log.e("BaseItemDragListener", "Someone started a dragAndDrop before us.");
            return false;
        }
        final Point systemDndStartPoint = new Point((int)dragEvent.getX(), (int)dragEvent.getY());
        final DragOptions dragOptions = new DragOptions();
        dragOptions.systemDndStartPoint = systemDndStartPoint;
        dragOptions.preDragCondition = this;
        this.createDragHelper().startDrag(new Rect(this.mPreviewRect), this.mPreviewBitmapWidth, this.mPreviewViewWidth, systemDndStartPoint, this, dragOptions);
        this.mDragStartTime = SystemClock.uptimeMillis();
        return true;
    }
    
    public void onDropCompleted(final View view, final DropTarget$DragObject dropTarget$DragObject, final boolean b, final boolean b2) {
        if (b || (b2 ^ true) || (view != this.mLauncher.getWorkspace() && (view instanceof DeleteDropTarget ^ true) && (view instanceof Folder ^ true))) {
            this.mLauncher.exitSpringLoadedDragModeDelayed(true, 500, null);
        }
        if (!b2) {
            dropTarget$DragObject.deferDragViewCleanupPostAnimation = false;
        }
        this.postCleanup();
    }
    
    public void onPreDragEnd(final DropTarget$DragObject dropTarget$DragObject, final boolean b) {
        if (b) {
            dropTarget$DragObject.dragView.setColor(0);
        }
    }
    
    public void onPreDragStart(final DropTarget$DragObject dropTarget$DragObject) {
        this.mLauncher.getDragLayer().setAlpha(1.0f);
        dropTarget$DragObject.dragView.setColor(this.mLauncher.getResources().getColor(2131361814));
    }
    
    public void removeListener() {
        if (this.mLauncher != null) {
            this.mLauncher.getDragLayer().setOnDragListener((View$OnDragListener)null);
        }
    }
    
    public void setLauncher(final Launcher mLauncher) {
        this.mLauncher = mLauncher;
        this.mDragController = mLauncher.getDragController();
    }
    
    public boolean shouldStartDrag(final double n) {
        return this.mLauncher.isWorkspaceLocked() ^ true;
    }
    
    public boolean supportsAppInfoDropTarget() {
        return false;
    }
    
    public boolean supportsDeleteDropTarget() {
        return false;
    }
    
    protected void writeToParcel(final Parcel parcel, final int n) {
        this.mPreviewRect.writeToParcel(parcel, n);
        parcel.writeInt(this.mPreviewBitmapWidth);
        parcel.writeInt(this.mPreviewViewWidth);
        parcel.writeString(this.mId);
    }
}

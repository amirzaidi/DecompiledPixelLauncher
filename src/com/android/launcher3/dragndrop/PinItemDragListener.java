// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import com.android.launcher3.folder.Folder;
import com.android.launcher3.DeleteDropTarget;
import com.android.launcher3.DropTarget$DragObject;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.ItemInfo;
import android.os.Handler;
import android.os.Looper;
import com.android.launcher3.PendingAddItemInfo;
import android.content.ClipDescription;
import android.os.SystemClock;
import com.android.launcher3.widget.PendingItemDragHelper;
import android.graphics.Point;
import android.view.View;
import android.appwidget.AppWidgetProviderInfo;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.compat.ShortcutConfigActivityInfo;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import android.content.Context;
import android.util.Log;
import android.view.DragEvent;
import android.content.Intent;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.UUID;
import android.os.Parcel;
import com.android.launcher3.compat.PinItemRequestCompat;
import android.graphics.Rect;
import com.android.launcher3.Launcher;
import android.os.Parcelable$Creator;
import com.android.launcher3.DragSource;
import android.view.View$OnDragListener;
import android.os.Parcelable;

public class PinItemDragListener implements Parcelable, View$OnDragListener, DragSource, DragOptions$PreDragCondition
{
    public static final Parcelable$Creator CREATOR;
    private DragController mDragController;
    private long mDragStartTime;
    private final String mId;
    private Launcher mLauncher;
    private final int mPreviewBitmapWidth;
    private final Rect mPreviewRect;
    private final int mPreviewViewWidth;
    private final PinItemRequestCompat mRequest;
    
    static {
        CREATOR = (Parcelable$Creator)new PinItemDragListener$1();
    }
    
    private PinItemDragListener(final Parcel parcel) {
        this.mRequest = (PinItemRequestCompat)PinItemRequestCompat.CREATOR.createFromParcel(parcel);
        this.mPreviewRect = (Rect)Rect.CREATOR.createFromParcel(parcel);
        this.mPreviewBitmapWidth = parcel.readInt();
        this.mPreviewViewWidth = parcel.readInt();
        this.mId = parcel.readString();
    }
    
    public PinItemDragListener(final PinItemRequestCompat mRequest, final Rect mPreviewRect, final int mPreviewBitmapWidth, final int mPreviewViewWidth) {
        this.mRequest = mRequest;
        this.mPreviewRect = mPreviewRect;
        this.mPreviewBitmapWidth = mPreviewBitmapWidth;
        this.mPreviewViewWidth = mPreviewViewWidth;
        this.mId = UUID.randomUUID().toString();
    }
    
    public static RemoteViews getPreview(final PinItemRequestCompat pinItemRequestCompat) {
        final Bundle extras = pinItemRequestCompat.getExtras();
        if (extras != null && extras.get("appWidgetPreview") instanceof RemoteViews) {
            return (RemoteViews)extras.get("appWidgetPreview");
        }
        return null;
    }
    
    public static boolean handleDragRequest(final Launcher launcher, final Intent intent) {
        if (intent == null || ("android.intent.action.MAIN".equals(intent.getAction()) ^ true)) {
            return false;
        }
        final Parcelable parcelableExtra = intent.getParcelableExtra("pin_item_drag_listener");
        if (parcelableExtra instanceof PinItemDragListener) {
            final PinItemDragListener onDragListener = (PinItemDragListener)parcelableExtra;
            onDragListener.setLauncher(launcher);
            launcher.getDragLayer().setOnDragListener((View$OnDragListener)onDragListener);
            return true;
        }
        return false;
    }
    
    private boolean onDragStart(final DragEvent dragEvent) {
        final boolean b = true;
        if (!this.mRequest.isValid()) {
            return false;
        }
        final ClipDescription clipDescription = dragEvent.getClipDescription();
        if (clipDescription == null || (clipDescription.hasMimeType(this.getMimeType()) ^ true)) {
            Log.e("PinItemDragListener", "Someone started a dragAndDrop before us.");
            return false;
        }
        PendingAddItemInfo tag;
        if (this.mRequest.getRequestType() == (b ? 1 : 0)) {
            tag = new PendingAddShortcutInfo(new PinShortcutRequestActivityInfo(this.mRequest, (Context)this.mLauncher));
        }
        else {
            final LauncherAppWidgetProviderInfo fromProviderInfo = LauncherAppWidgetProviderInfo.fromProviderInfo((Context)this.mLauncher, this.mRequest.getAppWidgetProviderInfo((Context)this.mLauncher));
            tag = new PinItemDragListener$2(this, fromProviderInfo, new PinWidgetFlowHandler(fromProviderInfo, this.mRequest));
        }
        final View view = new View((Context)this.mLauncher);
        view.setTag((Object)tag);
        final Point systemDndStartPoint = new Point((int)dragEvent.getX(), (int)dragEvent.getY());
        final DragOptions dragOptions = new DragOptions();
        dragOptions.systemDndStartPoint = systemDndStartPoint;
        dragOptions.preDragCondition = this;
        final PendingItemDragHelper pendingItemDragHelper = new PendingItemDragHelper(view);
        if (this.mRequest.getRequestType() == 2) {
            pendingItemDragHelper.setPreview(getPreview(this.mRequest));
        }
        pendingItemDragHelper.startDrag(new Rect(this.mPreviewRect), this.mPreviewBitmapWidth, this.mPreviewViewWidth, systemDndStartPoint, this, dragOptions);
        this.mDragStartTime = SystemClock.uptimeMillis();
        return b;
    }
    
    private void postCleanup() {
        if (this.mLauncher != null) {
            final Intent intent = new Intent(this.mLauncher.getIntent());
            intent.removeExtra("pin_item_drag_listener");
            this.mLauncher.setIntent(intent);
        }
        new Handler(Looper.getMainLooper()).post((Runnable)new PinItemDragListener$3(this));
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void fillInLogContainerData(final View view, final ItemInfo itemInfo, final LauncherLogProto$Target launcherLogProto$Target, final LauncherLogProto$Target launcherLogProto$Target2) {
        launcherLogProto$Target2.containerType = 10;
    }
    
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
    
    public void writeToParcel(final Parcel parcel, final int n) {
        this.mRequest.writeToParcel(parcel, n);
        this.mPreviewRect.writeToParcel(parcel, n);
        parcel.writeInt(this.mPreviewBitmapWidth);
        parcel.writeInt(this.mPreviewViewWidth);
        parcel.writeString(this.mId);
    }
}

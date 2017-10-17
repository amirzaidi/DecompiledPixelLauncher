// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.widget;

import android.view.ViewGroup;
import com.android.launcher3.util.MultiHashMap;
import android.support.v7.widget.p;
import android.support.v7.widget.N;
import android.support.v7.widget.q;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.DeleteDropTarget;
import com.android.launcher3.DropTarget$DragObject;
import com.android.launcher3.Utilities;
import java.util.List;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.dragndrop.DragOptions;
import android.graphics.Point;
import android.util.Log;
import android.view.View;
import android.util.AttributeSet;
import android.content.Context;
import android.widget.Toast;
import com.android.launcher3.Launcher;
import com.android.launcher3.DragSource;
import android.view.View$OnClickListener;
import android.view.View$OnLongClickListener;
import com.android.launcher3.BaseContainerView;

public class WidgetsContainerView extends BaseContainerView implements View$OnLongClickListener, View$OnClickListener, DragSource
{
    private WidgetsListAdapter mAdapter;
    Launcher mLauncher;
    private WidgetsRecyclerView mRecyclerView;
    private Toast mWidgetInstructionToast;
    
    public WidgetsContainerView(final Context context) {
        this(context, null);
    }
    
    public WidgetsContainerView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public WidgetsContainerView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mLauncher = Launcher.getLauncher(context);
        this.mAdapter = new WidgetsListAdapter((View$OnClickListener)this, (View$OnLongClickListener)this, context);
    }
    
    private boolean beginDragging(final View view) {
        if (view instanceof WidgetCell) {
            if (!this.beginDraggingWidget((WidgetCell)view)) {
                return false;
            }
        }
        else {
            Log.e("WidgetsContainerView", "Unexpected dragging view: " + view);
        }
        if (this.mLauncher.getDragController().isDragging()) {
            this.mLauncher.enterSpringLoadedDragMode();
        }
        return true;
    }
    
    private boolean beginDraggingWidget(final WidgetCell widgetCell) {
        final int n = 1;
        final WidgetImageView widgetImageView = (WidgetImageView)widgetCell.findViewById(2131624071);
        if (widgetImageView.getBitmap() == null) {
            return false;
        }
        final int[] array = new int[2];
        this.mLauncher.getDragLayer().getLocationInDragLayer(widgetImageView, array);
        new PendingItemDragHelper((View)widgetCell).startDrag(widgetImageView.getBitmapBounds(), widgetImageView.getBitmap().getWidth(), widgetImageView.getWidth(), new Point(array[0], array[n]), this, new DragOptions());
        return n != 0;
    }
    
    public void fillInLogContainerData(final View view, final ItemInfo itemInfo, final LauncherLogProto$Target launcherLogProto$Target, final LauncherLogProto$Target launcherLogProto$Target2) {
        launcherLogProto$Target2.containerType = 5;
    }
    
    public float getIntrinsicIconScaleFactor() {
        return 0.0f;
    }
    
    public View getTouchDelegateTargetView() {
        return (View)this.mRecyclerView;
    }
    
    public List getWidgetsForPackageUser(final PackageUserKey packageUserKey) {
        return this.mAdapter.copyWidgetsForPackageUser(packageUserKey);
    }
    
    public void handleClick() {
        if (this.mWidgetInstructionToast != null) {
            this.mWidgetInstructionToast.cancel();
        }
        (this.mWidgetInstructionToast = Toast.makeText(this.getContext(), Utilities.wrapForTts(this.getContext().getText(2131492904), this.getContext().getString(2131492905)), 0)).show();
    }
    
    public boolean handleLongClick(final View view) {
        return !this.mLauncher.getWorkspace().isSwitchingState() && this.mLauncher.isDraggingEnabled() && this.beginDragging(view);
    }
    
    public void onClick(final View view) {
        if (!this.mLauncher.isWidgetsViewVisible() || this.mLauncher.getWorkspace().isSwitchingState() || (view instanceof WidgetCell ^ true)) {
            return;
        }
        this.handleClick();
    }
    
    public void onDropCompleted(final View view, final DropTarget$DragObject dropTarget$DragObject, final boolean b, final boolean b2) {
        if (b || (b2 ^ true) || (view != this.mLauncher.getWorkspace() && (view instanceof DeleteDropTarget ^ true) && (view instanceof Folder ^ true))) {
            this.mLauncher.exitSpringLoadedDragModeDelayed(true, 500, null);
        }
        this.mLauncher.unlockScreenOrientation(false);
        if (!b2) {
            dropTarget$DragObject.deferDragViewCleanupPostAnimation = false;
        }
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        (this.mRecyclerView = (WidgetsRecyclerView)this.getContentView().findViewById(2131624077)).setAdapter(this.mAdapter);
        this.mRecyclerView.setLayoutManager(new N(this.getContext()));
    }
    
    public boolean onLongClick(final View view) {
        return this.mLauncher.isWidgetsViewVisible() && this.handleLongClick(view);
    }
    
    public void scrollToTop() {
        this.mRecyclerView.scrollToPosition(0);
    }
    
    public void setWidgets(final MultiHashMap widgets) {
        this.mAdapter.setWidgets(widgets);
        this.mAdapter.notifyDataSetChanged();
        final View viewById = this.getContentView().findViewById(2131624078);
        if (viewById != null) {
            ((ViewGroup)this.getContentView()).removeView(viewById);
        }
    }
    
    public boolean supportsAppInfoDropTarget() {
        return true;
    }
    
    public boolean supportsDeleteDropTarget() {
        return false;
    }
}

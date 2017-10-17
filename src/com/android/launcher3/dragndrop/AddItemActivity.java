// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.view.MotionEvent;
import com.android.launcher3.shortcuts.ShortcutInfoCompat;
import android.graphics.Rect;
import com.android.launcher3.widget.WidgetImageView;
import android.view.View$DragShadowBuilder;
import android.content.ClipData;
import android.content.ClipData$Item;
import android.content.ClipDescription;
import android.app.ActivityOptions;
import com.android.launcher3.Utilities;
import android.os.Parcelable;
import com.android.launcher3.compat.LauncherAppsCompatVO;
import com.android.launcher3.widget.WidgetHostViewLoader;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.launcher3.compat.ShortcutConfigActivityInfo;
import com.android.launcher3.model.WidgetItem;
import android.content.Intent;
import android.view.View;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.InstallShortcutReceiver;
import android.content.Context;
import android.os.Bundle;
import android.content.pm.LauncherApps$PinItemRequest;
import com.android.launcher3.widget.PendingAddWidgetInfo;
import android.graphics.PointF;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.compat.AppWidgetManagerCompat;
import android.appwidget.AppWidgetHost;
import com.android.launcher3.LauncherAppState;
import android.view.View$OnTouchListener;
import android.view.View$OnLongClickListener;
import com.android.launcher3.BaseActivity;

public class AddItemActivity extends BaseActivity implements View$OnLongClickListener, View$OnTouchListener
{
    private LauncherAppState mApp;
    private AppWidgetHost mAppWidgetHost;
    private AppWidgetManagerCompat mAppWidgetManager;
    private boolean mFinishOnPause;
    private InvariantDeviceProfile mIdp;
    private final PointF mLastTouchPos;
    private int mPendingBindWidgetId;
    private PendingAddWidgetInfo mPendingWidgetInfo;
    private LauncherApps$PinItemRequest mRequest;
    private LivePreviewWidgetCell mWidgetCell;
    private Bundle mWidgetOptions;
    
    public AddItemActivity() {
        this.mLastTouchPos = new PointF();
        this.mFinishOnPause = false;
    }
    
    private void acceptWidget(final int n) {
        InstallShortcutReceiver.queueWidget(this.mRequest.getAppWidgetProviderInfo((Context)this), n, (Context)this);
        this.mWidgetOptions.putInt("appWidgetId", n);
        this.mRequest.accept(this.mWidgetOptions);
        this.logCommand(4);
        this.finish();
    }
    
    private void logCommand(final int n) {
        this.getUserEventDispatcher().dispatchUserEvent(LoggerUtils.newLauncherEvent(LoggerUtils.newCommandAction(n), LoggerUtils.newItemTarget(this.mWidgetCell.getWidgetView()), LoggerUtils.newContainerTarget(10)), null);
    }
    
    private void setupShortcut() {
        final PinShortcutRequestActivityInfo pinShortcutRequestActivityInfo = new PinShortcutRequestActivityInfo(this.mRequest, (Context)this);
        final WidgetItem widgetItem = new WidgetItem(pinShortcutRequestActivityInfo);
        this.mWidgetCell.getWidgetView().setTag((Object)new PendingAddShortcutInfo(pinShortcutRequestActivityInfo));
        this.mWidgetCell.applyFromCellItem(widgetItem, this.mApp.getWidgetCache());
        this.mWidgetCell.ensurePreview();
    }
    
    private boolean setupWidget() {
        final LauncherAppWidgetProviderInfo fromProviderInfo = LauncherAppWidgetProviderInfo.fromProviderInfo((Context)this, this.mRequest.getAppWidgetProviderInfo((Context)this));
        if (fromProviderInfo.minSpanX > this.mIdp.numColumns || fromProviderInfo.minSpanY > this.mIdp.numRows) {
            return false;
        }
        this.mWidgetCell.setPreview(PinItemDragListener.getPreview(this.mRequest));
        this.mAppWidgetManager = AppWidgetManagerCompat.getInstance((Context)this);
        this.mAppWidgetHost = new AppWidgetHost((Context)this, 1024);
        this.mPendingWidgetInfo = new PendingAddWidgetInfo(fromProviderInfo);
        this.mPendingWidgetInfo.spanX = Math.min(this.mIdp.numColumns, fromProviderInfo.spanX);
        this.mPendingWidgetInfo.spanY = Math.min(this.mIdp.numRows, fromProviderInfo.spanY);
        this.mWidgetOptions = WidgetHostViewLoader.getDefaultOptionsForWidget((Context)this, this.mPendingWidgetInfo);
        final WidgetItem widgetItem = new WidgetItem(fromProviderInfo, this.getPackageManager(), this.mIdp);
        this.mWidgetCell.getWidgetView().setTag((Object)this.mPendingWidgetInfo);
        this.mWidgetCell.applyFromCellItem(widgetItem, this.mApp.getWidgetCache());
        this.mWidgetCell.ensurePreview();
        return true;
    }
    
    protected void onActivityResult(final int n, final int n2, final Intent intent) {
        final int mPendingBindWidgetId = -1;
        if (n == 1) {
            int n3;
            if (intent != null) {
                n3 = intent.getIntExtra("appWidgetId", this.mPendingBindWidgetId);
            }
            else {
                n3 = this.mPendingBindWidgetId;
            }
            if (n2 == mPendingBindWidgetId) {
                this.acceptWidget(n3);
            }
            else {
                this.mAppWidgetHost.deleteAppWidgetId(n3);
                this.mPendingBindWidgetId = mPendingBindWidgetId;
            }
            return;
        }
        super.onActivityResult(n, n2, intent);
    }
    
    public void onBackPressed() {
        this.logCommand(1);
        super.onBackPressed();
    }
    
    public void onCancelClick(final View view) {
        this.logCommand(3);
        this.finish();
    }
    
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.mRequest = LauncherAppsCompatVO.getPinItemRequest(this.getIntent());
        if (this.mRequest == null) {
            this.finish();
            return;
        }
        this.mApp = LauncherAppState.getInstance((Context)this);
        this.mIdp = this.mApp.getInvariantDeviceProfile();
        this.mDeviceProfile = this.mIdp.getDeviceProfile(this.getApplicationContext());
        this.setContentView(2130968576);
        this.mWidgetCell = (LivePreviewWidgetCell)this.findViewById(2131623975);
        if (this.mRequest.getRequestType() == 1) {
            this.setupShortcut();
        }
        else if (!this.setupWidget()) {
            this.finish();
        }
        this.mWidgetCell.setOnTouchListener((View$OnTouchListener)this);
        this.mWidgetCell.setOnLongClickListener((View$OnLongClickListener)this);
        if (bundle == null) {
            this.logCommand(2);
        }
    }
    
    public boolean onLongClick(final View view) {
        final int mFinishOnPause = 1;
        final WidgetImageView widgetView = this.mWidgetCell.getWidgetView();
        if (widgetView.getBitmap() == null) {
            return false;
        }
        final Rect bitmapBounds = widgetView.getBitmapBounds();
        bitmapBounds.offset(widgetView.getLeft() - (int)this.mLastTouchPos.x, widgetView.getTop() - (int)this.mLastTouchPos.y);
        final PinItemDragListener pinItemDragListener = new PinItemDragListener(this.mRequest, bitmapBounds, widgetView.getBitmap().getWidth(), widgetView.getWidth());
        final Intent putExtra = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").setPackage(this.getPackageName()).setFlags(268435456).putExtra("pin_item_drag_listener", (Parcelable)pinItemDragListener);
        if (!this.getResources().getBoolean(2131689477) && (Utilities.isAllowRotationPrefEnabled((Context)this) ^ true) && this.getResources().getConfiguration().orientation == 2 && (this.isInMultiWindowMode() ^ true)) {
            putExtra.addFlags(32768);
        }
        this.startActivity(putExtra, ActivityOptions.makeCustomAnimation((Context)this, 0, 17432577).toBundle());
        this.mFinishOnPause = (mFinishOnPause != 0);
        final String[] array = new String[mFinishOnPause];
        array[0] = pinItemDragListener.getMimeType();
        view.startDragAndDrop(new ClipData(new ClipDescription((CharSequence)"", array), new ClipData$Item((CharSequence)"")), (View$DragShadowBuilder)new AddItemActivity$1(this, view), (Object)null, 256);
        return false;
    }
    
    protected void onPause() {
        super.onPause();
        if (this.mFinishOnPause) {
            this.finish();
        }
    }
    
    public void onPlaceAutomaticallyClick(final View view) {
        final int n = 1;
        if (this.mRequest.getRequestType() == n) {
            InstallShortcutReceiver.queueShortcut(new ShortcutInfoCompat(this.mRequest.getShortcutInfo()), (Context)this);
            this.logCommand(4);
            this.mRequest.accept();
            this.finish();
            return;
        }
        this.mPendingBindWidgetId = this.mAppWidgetHost.allocateAppWidgetId();
        if (this.mAppWidgetManager.bindAppWidgetIdIfAllowed(this.mPendingBindWidgetId, this.mRequest.getAppWidgetProviderInfo((Context)this), this.mWidgetOptions)) {
            this.acceptWidget(this.mPendingBindWidgetId);
            return;
        }
        final Intent intent = new Intent("android.appwidget.action.APPWIDGET_BIND");
        intent.putExtra("appWidgetId", this.mPendingBindWidgetId);
        intent.putExtra("appWidgetProvider", (Parcelable)this.mPendingWidgetInfo.componentName);
        intent.putExtra("appWidgetProviderProfile", (Parcelable)this.mRequest.getAppWidgetProviderInfo((Context)this).getProfile());
        this.startActivityForResult(intent, n);
    }
    
    protected void onRestoreInstanceState(final Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.mPendingBindWidgetId = bundle.getInt("state.widget.id", this.mPendingBindWidgetId);
    }
    
    protected void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("state.widget.id", this.mPendingBindWidgetId);
    }
    
    public boolean onTouch(final View view, final MotionEvent motionEvent) {
        this.mLastTouchPos.set(motionEvent.getX(), motionEvent.getY());
        return false;
    }
}

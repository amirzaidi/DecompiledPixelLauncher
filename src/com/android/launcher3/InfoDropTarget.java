// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.util.Themes;
import android.provider.Settings$Global;
import android.content.ComponentName;
import android.content.ActivityNotFoundException;
import android.util.Log;
import android.widget.Toast;
import com.android.launcher3.compat.LauncherAppsCompat;
import android.os.Bundle;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.content.Context;

public class InfoDropTarget extends UninstallDropTarget
{
    public InfoDropTarget(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public InfoDropTarget(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
    }
    
    public static boolean startDetailsActivityForInfo(final ItemInfo itemInfo, final Launcher launcher, final UninstallDropTarget$DropTargetResultCallback uninstallDropTarget$DropTargetResultCallback) {
        return startDetailsActivityForInfo(itemInfo, launcher, uninstallDropTarget$DropTargetResultCallback, null, null);
    }
    
    public static boolean startDetailsActivityForInfo(final ItemInfo itemInfo, final Launcher launcher, final UninstallDropTarget$DropTargetResultCallback uninstallDropTarget$DropTargetResultCallback, final Rect rect, final Bundle bundle) {
        final boolean b = true;
        if (itemInfo instanceof PromiseAppInfo) {
            launcher.startActivity(((PromiseAppInfo)itemInfo).getMarketIntent());
            return b;
        }
        while (true) {
            ComponentName componentName;
            LauncherAppsCompat instance;
            boolean b2;
            final Object o;
            Throwable t;
            Label_0264:Block_10_Outer:Block_8_Outer:
            while (true) {
                Label_0128: {
                    if (!(itemInfo instanceof AppInfo)) {
                        break Label_0128;
                    }
                    componentName = ((AppInfo)itemInfo).componentName;
                    if (componentName == null) {
                        break Label_0264;
                    }
                    try {
                        instance = LauncherAppsCompat.getInstance((Context)launcher);
                        try {
                            instance.showAppDetailsForProfile(componentName, itemInfo.user, rect, bundle);
                            b2 = b;
                            if (uninstallDropTarget$DropTargetResultCallback != null) {
                                UninstallDropTarget.sendUninstallResult(launcher, b2, componentName, itemInfo.user, uninstallDropTarget$DropTargetResultCallback);
                            }
                            return b2;
                            // iftrue(Label_0273:, !itemInfo instanceof LauncherAppWidgetInfo)
                            while (true) {
                                componentName = ((LauncherAppWidgetInfo)itemInfo).providerName;
                                continue Block_10_Outer;
                                Label_0191: {
                                    continue Block_8_Outer;
                                }
                            }
                            // iftrue(Label_0191:, !itemInfo instanceof PendingAddItemInfo)
                            // iftrue(Label_0161:, !itemInfo instanceof ShortcutInfo)
                        Block_9:
                            while (true) {
                                componentName = ((ShortcutInfo)itemInfo).intent.getComponent();
                                continue Block_10_Outer;
                                Label_0161: {
                                    break Block_9;
                                }
                                continue;
                            }
                            componentName = ((PendingAddItemInfo)itemInfo).componentName;
                        }
                        catch (SecurityException | ActivityNotFoundException ex) {
                            t = (Throwable)o;
                            Toast.makeText((Context)launcher, 2131492897, 0).show();
                            Log.e("InfoDropTarget", "Unable to launch settings", t);
                            b2 = false;
                        }
                    }
                    catch (SecurityException ex2) {}
                    catch (ActivityNotFoundException ex3) {}
                }
                break Label_0264;
                Label_0273: {
                    componentName = null;
                }
                continue;
            }
            b2 = false;
            continue;
        }
    }
    
    public static boolean supportsDrop(final Context context, final ItemInfo itemInfo) {
        final boolean b = true;
        boolean b2 = false;
        if (Settings$Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != (b ? 1 : 0) || !b) {
            return false;
        }
        if (itemInfo.itemType != (b ? 1 : 0)) {
            if (itemInfo instanceof AppInfo || (itemInfo instanceof ShortcutInfo && (((ShortcutInfo)itemInfo).isPromise() ^ true)) || (itemInfo instanceof LauncherAppWidgetInfo && ((LauncherAppWidgetInfo)itemInfo).restoreStatus == 0)) {
                b2 = b;
            }
            else {
                b2 = (itemInfo instanceof PendingAddItemInfo);
            }
        }
        return b2;
    }
    
    public void completeDrop(final DropTarget$DragObject dropTarget$DragObject) {
        UninstallDropTarget$DropTargetResultCallback uninstallDropTarget$DropTargetResultCallback;
        if (dropTarget$DragObject.dragSource instanceof UninstallDropTarget$DropTargetResultCallback) {
            uninstallDropTarget$DropTargetResultCallback = (UninstallDropTarget$DropTargetResultCallback)dropTarget$DragObject.dragSource;
        }
        else {
            uninstallDropTarget$DropTargetResultCallback = null;
        }
        startDetailsActivityForInfo(dropTarget$DragObject.dragInfo, this.mLauncher, uninstallDropTarget$DropTargetResultCallback);
    }
    
    protected void setupUi() {
        this.mHoverColor = Themes.getColorAccent(this.getContext());
        this.setDrawable(2130837566);
    }
    
    protected boolean supportsDrop(final DragSource dragSource, final ItemInfo itemInfo) {
        return dragSource.supportsAppInfoDropTarget() && supportsDrop(this.getContext(), itemInfo);
    }
}

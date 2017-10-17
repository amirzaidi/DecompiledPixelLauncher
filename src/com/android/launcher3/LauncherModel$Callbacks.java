// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.util.ViewOnDrawExecutor;
import android.os.UserHandle;
import java.util.HashSet;
import com.android.launcher3.util.MultiHashMap;
import java.util.ArrayList;

public interface LauncherModel$Callbacks
{
    void bindAllApplications(final ArrayList p0);
    
    void bindAllWidgets(final MultiHashMap p0);
    
    void bindAppInfosRemoved(final ArrayList p0);
    
    void bindAppWidget(final LauncherAppWidgetInfo p0);
    
    void bindAppsAdded(final ArrayList p0, final ArrayList p1, final ArrayList p2, final ArrayList p3);
    
    void bindAppsUpdated(final ArrayList p0);
    
    void bindDeepShortcutMap(final MultiHashMap p0);
    
    void bindItems(final ArrayList p0, final int p1, final int p2, final boolean p3);
    
    void bindRestoreItemsChange(final HashSet p0);
    
    void bindScreens(final ArrayList p0);
    
    void bindShortcutsChanged(final ArrayList p0, final ArrayList p1, final UserHandle p2);
    
    void bindWidgetsRestored(final ArrayList p0);
    
    void bindWorkspaceComponentsRemoved(final HashSet p0, final HashSet p1, final UserHandle p2);
    
    void clearPendingBinds();
    
    void executeOnNextDraw(final ViewOnDrawExecutor p0);
    
    void finishBindingItems();
    
    void finishFirstPageBind(final ViewOnDrawExecutor p0);
    
    int getCurrentWorkspaceScreen();
    
    void notifyWidgetProvidersChanged();
    
    void onPageBoundSynchronously(final int p0);
    
    boolean setLoadOnResume();
    
    void startBinding();
}

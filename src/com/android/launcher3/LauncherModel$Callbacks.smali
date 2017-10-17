.class public interface abstract Lcom/android/launcher3/LauncherModel$Callbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract bindAllApplications(Ljava/util/ArrayList;)V
.end method

.method public abstract bindAllWidgets(Lcom/android/launcher3/util/MultiHashMap;)V
.end method

.method public abstract bindAppInfosRemoved(Ljava/util/ArrayList;)V
.end method

.method public abstract bindAppWidget(Lcom/android/launcher3/LauncherAppWidgetInfo;)V
.end method

.method public abstract bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end method

.method public abstract bindAppsUpdated(Ljava/util/ArrayList;)V
.end method

.method public abstract bindDeepShortcutMap(Lcom/android/launcher3/util/MultiHashMap;)V
.end method

.method public abstract bindItems(Ljava/util/ArrayList;IIZ)V
.end method

.method public abstract bindPromiseAppProgressUpdated(Lcom/android/launcher3/PromiseAppInfo;)V
.end method

.method public abstract bindRestoreItemsChange(Ljava/util/HashSet;)V
.end method

.method public abstract bindScreens(Ljava/util/ArrayList;)V
.end method

.method public abstract bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/UserHandle;)V
.end method

.method public abstract bindWidgetsRestored(Ljava/util/ArrayList;)V
.end method

.method public abstract bindWorkspaceComponentsRemoved(Ljava/util/HashSet;Ljava/util/HashSet;Landroid/os/UserHandle;)V
.end method

.method public abstract clearPendingBinds()V
.end method

.method public abstract executeOnNextDraw(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V
.end method

.method public abstract finishBindingItems()V
.end method

.method public abstract finishFirstPageBind(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V
.end method

.method public abstract getCurrentWorkspaceScreen()I
.end method

.method public abstract notifyWidgetProvidersChanged()V
.end method

.method public abstract onPageBoundSynchronously(I)V
.end method

.method public abstract setLoadOnResume()Z
.end method

.method public abstract startBinding()V
.end method

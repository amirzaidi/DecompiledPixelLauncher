.class public interface abstract Lcom/android/launcher3/LauncherCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract bindAllApplications(Ljava/util/ArrayList;)V
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract finishBindingItems(Z)V
.end method

.method public abstract getAllAppsSearchBarController()Lcom/android/launcher3/allapps/AllAppsSearchBarController;
.end method

.method public abstract getPredictedApps()Ljava/util/List;
.end method

.method public abstract handleBackPressed()Z
.end method

.method public abstract hasCustomContentToLeft()Z
.end method

.method public abstract hasSettings()Z
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onAttachedToWindow()V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onDetachedFromWindow()V
.end method

.method public abstract onHomeIntent()V
.end method

.method public abstract onInteractionBegin()V
.end method

.method public abstract onInteractionEnd()V
.end method

.method public abstract onLauncherProviderChange()V
.end method

.method public abstract onNewIntent(Landroid/content/Intent;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onPostCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract onTrimMemory(I)V
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method

.method public abstract onWorkspaceLockedChanged()V
.end method

.method public abstract populateCustomContentContainer()V
.end method

.method public abstract preOnCreate()V
.end method

.method public abstract preOnResume()V
.end method

.method public abstract setLauncherSearchCallback(Ljava/lang/Object;)V
.end method

.method public abstract shouldMoveToDefaultScreenOnHomeIntent()Z
.end method

.method public abstract shouldShowDiscoveryBounce()Z
.end method

.method public abstract startSearch(Ljava/lang/String;ZLandroid/os/Bundle;)Z
.end method

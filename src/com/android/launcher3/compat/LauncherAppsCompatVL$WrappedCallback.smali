.class Lcom/android/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;
.super Landroid/content/pm/LauncherApps$Callback;
.source "SourceFile"


# instance fields
.field private mCallback:Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 138
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 146
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 150
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 142
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    .line 154
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 163
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    .line 159
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 167
    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 4

    .prologue
    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 173
    new-instance v3, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    invoke-direct {v3, v0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;-><init>(Landroid/content/pm/ShortcutInfo;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;->mCallback:Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    invoke-interface {v0, p1, v1, p3}, Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 177
    return-void
.end method

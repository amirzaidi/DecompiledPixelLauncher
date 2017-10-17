.class public Lcom/android/launcher3/discovery/AppDiscoveryAppInfo;
.super Lcom/android/launcher3/AppInfo;
.source "SourceFile"


# instance fields
.field public final isInstantApp:Z

.field public final isRecent:Z

.field public final priceFormatted:Ljava/lang/String;

.field public final rating:F

.field public final reviewCount:J


# virtual methods
.method public isDragAndDropSupported()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/launcher3/discovery/AppDiscoveryAppInfo;->isInstantApp:Z

    return v0
.end method

.method public makeShortcut()Lcom/android/launcher3/ShortcutInfo;
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/launcher3/discovery/AppDiscoveryAppInfo;->isDragAndDropSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "DnD is currently not supported for discovered store apps"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

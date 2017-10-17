.class public Lcom/android/launcher3/LauncherBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Landroid/app/backup/BackupAgent;->onCreate()V

    .line 17
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/logging/FileLog;->setDir(Ljava/io/File;)V

    .line 18
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public onRestoreFinished()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/provider/RestoreDbTask;->setPending(Landroid/content/Context;Z)V

    .line 35
    return-void
.end method

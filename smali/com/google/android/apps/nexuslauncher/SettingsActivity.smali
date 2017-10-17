.class public Lcom/google/android/apps/nexuslauncher/SettingsActivity;
.super Lcom/android/launcher3/SettingsActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/launcher3/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/android/launcher3/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/google/android/apps/nexuslauncher/a;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/a;-><init>()V

    const v2, 0x1020002

    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 34
    return-void
.end method

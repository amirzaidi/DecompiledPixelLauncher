.class public Lcom/android/launcher3/compat/UserManagerCompatVN;
.super Lcom/android/launcher3/compat/UserManagerCompatVM;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/UserManagerCompatVM;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method


# virtual methods
.method public isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVN;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public isUserUnlocked(Landroid/os/UserHandle;)Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVN;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

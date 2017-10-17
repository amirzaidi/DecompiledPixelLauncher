.class public Lcom/android/launcher3/compat/UserManagerCompatVM;
.super Lcom/android/launcher3/compat/UserManagerCompatVL;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/UserManagerCompatVL;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getUserCreationTime(Landroid/os/UserHandle;)J
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVM;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserCreationTime(Landroid/os/UserHandle;)J

    move-result-wide v0

    return-wide v0
.end method

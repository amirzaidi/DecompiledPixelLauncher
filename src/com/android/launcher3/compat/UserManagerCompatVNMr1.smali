.class public Lcom/android/launcher3/compat/UserManagerCompatVNMr1;
.super Lcom/android/launcher3/compat/UserManagerCompatVN;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/UserManagerCompatVN;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method


# virtual methods
.method public isDemoUser()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/launcher3/compat/UserManagerCompatVNMr1;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v0

    return v0
.end method

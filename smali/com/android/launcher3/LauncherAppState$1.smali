.class final Lcom/android/launcher3/LauncherAppState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState$1;->val$context:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public call()Lcom/android/launcher3/LauncherAppState;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState$1;->call()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    return-object v0
.end method

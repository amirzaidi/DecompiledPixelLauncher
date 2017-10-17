.class public Lcom/android/launcher3/util/Preconditions;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertNonUiThread()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public static assertNotNull(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public static assertUIThread()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public static assertWorkerThread()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method private static isSameLooper(Landroid/os/Looper;)Z
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

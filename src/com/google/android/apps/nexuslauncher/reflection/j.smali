.class public Lcom/google/android/apps/nexuslauncher/reflection/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cp(Landroid/content/SharedPreferences;Ljava/io/File;Lcom/google/android/apps/nexuslauncher/reflection/i;Lcom/google/android/apps/nexuslauncher/reflection/c/c;Lcom/google/android/apps/nexuslauncher/reflection/b;)V
    .locals 2

    .prologue
    const/16 v1, 0x18

    .line 30
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 31
    invoke-virtual {p3, p2}, Lcom/google/android/apps/nexuslauncher/reflection/i;->ci(Ljava/io/File;)V

    .line 38
    :try_start_0
    invoke-static {p2}, Lcom/google/android/apps/nexuslauncher/util/b;->cD(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/a/k;->aq([B)Lcom/google/android/apps/nexuslauncher/reflection/a/k;

    move-result-object v0

    .line 39
    iget v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/k;->bi:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    if-ge v0, v1, :cond_1

    .line 45
    invoke-virtual {p3}, Lcom/google/android/apps/nexuslauncher/reflection/i;->cj()Z

    .line 46
    invoke-virtual {p5}, Lcom/google/android/apps/nexuslauncher/reflection/b;->bC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p5}, Lcom/google/android/apps/nexuslauncher/reflection/b;->bB()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Lcom/google/android/apps/nexuslauncher/reflection/b;->bF(Z)V

    .line 58
    :goto_1
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const/4 v0, -0x1

    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p5, v0}, Lcom/google/android/apps/nexuslauncher/reflection/b;->bF(Z)V

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/apps/nexuslauncher/reflection/i;->cj()Z

    goto :goto_1
.end method

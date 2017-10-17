.class public Lcom/google/android/apps/nexuslauncher/reflection/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aX(Landroid/content/SharedPreferences;Ljava/io/File;Lcom/google/android/apps/nexuslauncher/reflection/b;Lcom/google/android/apps/nexuslauncher/reflection/c/c;Lcom/google/android/apps/nexuslauncher/reflection/e;)V
    .locals 2

    .prologue
    const/16 v1, 0x18

    .line 31
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 32
    invoke-virtual {p3, p2}, Lcom/google/android/apps/nexuslauncher/reflection/b;->an(Ljava/io/File;)V

    .line 39
    :try_start_0
    invoke-static {p2}, Lcom/android/launcher3/util/IOUtils;->toByteArray(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->ad([B)Lcom/google/android/apps/nexuslauncher/reflection/d/a;

    move-result-object v0

    .line 40
    iget v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->version:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    if-ge v0, v1, :cond_1

    .line 46
    invoke-virtual {p3}, Lcom/google/android/apps/nexuslauncher/reflection/b;->as()Z

    .line 47
    invoke-virtual {p5}, Lcom/google/android/apps/nexuslauncher/reflection/e;->aG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p5}, Lcom/google/android/apps/nexuslauncher/reflection/e;->aF()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Lcom/google/android/apps/nexuslauncher/reflection/e;->aJ(Z)V

    .line 59
    :goto_1
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    const/4 v0, -0x1

    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p5, v0}, Lcom/google/android/apps/nexuslauncher/reflection/e;->aJ(Z)V

    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/apps/nexuslauncher/reflection/b;->as()Z

    goto :goto_1
.end method

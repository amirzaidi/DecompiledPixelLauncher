.class public Lcom/google/android/apps/nexuslauncher/reflection/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final J:Ljava/util/Set;

.field private final K:Landroid/content/SharedPreferences;

.field private final mDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/io/File;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/b;->K:Landroid/content/SharedPreferences;

    .line 24
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/b;->mDir:Ljava/io/File;

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/b;->J:Ljava/util/Set;

    .line 26
    return-void
.end method

.method private U(Ljava/io/File;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 42
    invoke-direct {p0, v3}, Lcom/google/android/apps/nexuslauncher/reflection/c/b;->U(Ljava/io/File;)V

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/b;->J:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 54
    :cond_1
    :goto_1
    return-void

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/b;->J:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/b;->J:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 51
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized T()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 30
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 31
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/b;->K:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 32
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/b;->mDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/b;->mDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/b;->mDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 34
    invoke-direct {p0, v3}, Lcom/google/android/apps/nexuslauncher/reflection/c/b;->U(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    .line 37
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

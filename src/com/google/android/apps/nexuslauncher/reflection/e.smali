.class public Lcom/google/android/apps/nexuslauncher/reflection/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final PREF_KEY_BACKGROUND_MODEL_VERSION:Ljava/lang/String; = "background_model_version"

.field static final PREF_KEY_PROGRESS:Ljava/lang/String; = "staged_batch_training_progress"

.field private static final bk:Ljava/util/regex/Pattern;


# instance fields
.field private final bl:Ljava/io/File;

.field private bm:Lcom/google/android/apps/nexuslauncher/reflection/f;

.field private final bn:Lcom/google/android/apps/nexuslauncher/reflection/c/c;

.field private final bo:Lcom/google/android/apps/nexuslauncher/reflection/b;

.field private final bp:Landroid/content/SharedPreferences;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bk:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string/jumbo v0, "^InProgress:(.+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bk:Ljava/util/regex/Pattern;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/c/c;Landroid/content/SharedPreferences;Ljava/io/File;Lcom/google/android/apps/nexuslauncher/reflection/b;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bn:Lcom/google/android/apps/nexuslauncher/reflection/c/c;

    .line 95
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bp:Landroid/content/SharedPreferences;

    .line 96
    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bl:Ljava/io/File;

    .line 97
    iput-object p5, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bo:Lcom/google/android/apps/nexuslauncher/reflection/b;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bm:Lcom/google/android/apps/nexuslauncher/reflection/f;

    .line 99
    return-void
.end method

.method private declared-synchronized aH(Ljava/lang/Throwable;Lcom/google/android/apps/nexuslauncher/reflection/f;)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bm:Lcom/google/android/apps/nexuslauncher/reflection/f;

    if-ne v0, p2, :cond_0

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 156
    const-string/jumbo v1, "background_model_version"

    .line 154
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 157
    const-string/jumbo v1, "staged_batch_training_progress"

    .line 154
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bl:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bm:Lcom/google/android/apps/nexuslauncher/reflection/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 163
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized aI(Lcom/google/android/apps/nexuslauncher/reflection/b;Lcom/google/android/apps/nexuslauncher/reflection/f;)V
    .locals 1

    .prologue
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bm:Lcom/google/android/apps/nexuslauncher/reflection/f;

    if-ne v0, p2, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bo:Lcom/google/android/apps/nexuslauncher/reflection/b;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/b;->ao(Lcom/google/android/apps/nexuslauncher/reflection/b;)V

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bo:Lcom/google/android/apps/nexuslauncher/reflection/b;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/b;->aw()Z

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bl:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bm:Lcom/google/android/apps/nexuslauncher/reflection/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 147
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic aK(Lcom/google/android/apps/nexuslauncher/reflection/e;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bl:Ljava/io/File;

    return-object v0
.end method

.method static synthetic aL(Lcom/google/android/apps/nexuslauncher/reflection/e;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic aM(Lcom/google/android/apps/nexuslauncher/reflection/e;)Lcom/google/android/apps/nexuslauncher/reflection/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bm:Lcom/google/android/apps/nexuslauncher/reflection/f;

    return-object v0
.end method

.method static synthetic aN(Lcom/google/android/apps/nexuslauncher/reflection/e;)Lcom/google/android/apps/nexuslauncher/reflection/c/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bn:Lcom/google/android/apps/nexuslauncher/reflection/c/c;

    return-object v0
.end method

.method static synthetic aO(Lcom/google/android/apps/nexuslauncher/reflection/e;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic aP(Lcom/google/android/apps/nexuslauncher/reflection/e;Ljava/lang/Throwable;Lcom/google/android/apps/nexuslauncher/reflection/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/e;->aH(Ljava/lang/Throwable;Lcom/google/android/apps/nexuslauncher/reflection/f;)V

    return-void
.end method

.method static synthetic aQ(Lcom/google/android/apps/nexuslauncher/reflection/e;Lcom/google/android/apps/nexuslauncher/reflection/b;Lcom/google/android/apps/nexuslauncher/reflection/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/e;->aI(Lcom/google/android/apps/nexuslauncher/reflection/b;Lcom/google/android/apps/nexuslauncher/reflection/f;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized aF()I
    .locals 3

    .prologue
    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "background_model_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aG()Z
    .locals 3

    .prologue
    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "staged_batch_training_progress"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/apps/nexuslauncher/reflection/e;->bk:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aJ(Z)V
    .locals 3

    .prologue
    monitor-enter p0

    .line 117
    if-eqz p1, :cond_1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 120
    const-string/jumbo v1, "staged_batch_training_progress"

    const-string/jumbo v2, "New"

    .line 118
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    const-string/jumbo v1, "background_model_version"

    const/16 v2, 0x18

    .line 118
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bl:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 129
    :cond_0
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/f;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/e;Lcom/google/android/apps/nexuslauncher/reflection/f;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bm:Lcom/google/android/apps/nexuslauncher/reflection/f;

    .line 132
    sget-object v0, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bm:Lcom/google/android/apps/nexuslauncher/reflection/f;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 133
    return-void

    .line 124
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e;->bm:Lcom/google/android/apps/nexuslauncher/reflection/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 125
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

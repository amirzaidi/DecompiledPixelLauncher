.class public Lcom/google/research/reflection/layers/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static MA:Z

.field static Mz:Lcom/google/research/reflection/layers/e;


# instance fields
.field private MB:Ljava/util/concurrent/ExecutorService;

.field private MC:Z

.field private MD:I

.field private My:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/research/reflection/layers/e;->MA:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/research/reflection/layers/e;->MC:Z

    .line 24
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 25
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/research/reflection/layers/e;->My:I

    .line 26
    iget v0, p0, Lcom/google/research/reflection/layers/e;->My:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/research/reflection/layers/e;->MB:Ljava/util/concurrent/ExecutorService;

    .line 27
    return-void
.end method

.method public static Vq()Lcom/google/research/reflection/layers/e;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/research/reflection/layers/e;->Mz:Lcom/google/research/reflection/layers/e;

    if-eqz v0, :cond_0

    .line 39
    :goto_0
    sget-object v0, Lcom/google/research/reflection/layers/e;->Mz:Lcom/google/research/reflection/layers/e;

    return-object v0

    .line 37
    :cond_0
    new-instance v0, Lcom/google/research/reflection/layers/e;

    invoke-direct {v0}, Lcom/google/research/reflection/layers/e;-><init>()V

    sput-object v0, Lcom/google/research/reflection/layers/e;->Mz:Lcom/google/research/reflection/layers/e;

    goto :goto_0
.end method

.method private declared-synchronized Vr(ILcom/google/research/reflection/layers/c;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    .line 78
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/google/research/reflection/layers/e;->MC:Z

    .line 79
    new-instance v3, Ljava/util/concurrent/ExecutorCompletionService;

    iget-object v2, p0, Lcom/google/research/reflection/layers/e;->MB:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v3, v2}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 82
    iget v2, p0, Lcom/google/research/reflection/layers/e;->My:I

    if-lt p1, v2, :cond_0

    .line 85
    int-to-float v1, p1

    iget v2, p0, Lcom/google/research/reflection/layers/e;->My:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    move v2, v1

    .line 87
    :goto_0
    iget v1, p0, Lcom/google/research/reflection/layers/e;->My:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/google/research/reflection/layers/e;->MD:I

    move v1, v0

    .line 88
    :goto_1
    iget v4, p0, Lcom/google/research/reflection/layers/e;->MD:I

    if-lt v1, v4, :cond_1

    move v1, v0

    .line 91
    :goto_2
    iget v0, p0, Lcom/google/research/reflection/layers/e;->MD:I

    if-lt v1, v0, :cond_2

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/research/reflection/layers/e;->MC:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 102
    return-void

    :cond_0
    move v2, v1

    .line 83
    goto :goto_0

    .line 89
    :cond_1
    :try_start_1
    new-instance v4, Lcom/google/research/reflection/layers/n;

    invoke-direct {v4, v1, v2, p1, p2}, Lcom/google/research/reflection/layers/n;-><init>(IIILcom/google/research/reflection/layers/c;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/ExecutorCompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 94
    :catch_0
    move-exception v0

    .line 95
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 96
    :catch_1
    move-exception v0

    .line 97
    :try_start_4
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget v4, p0, Lcom/google/research/reflection/layers/e;->MD:I

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x30

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "threadCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public Vp(ILcom/google/research/reflection/layers/c;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 68
    sget-boolean v1, Lcom/google/research/reflection/layers/e;->MA:Z

    if-nez v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    if-lt v0, p1, :cond_2

    .line 75
    :goto_1
    return-void

    .line 68
    :cond_1
    iget-boolean v1, p0, Lcom/google/research/reflection/layers/e;->MC:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/google/research/reflection/layers/e;->Vr(ILcom/google/research/reflection/layers/c;)V

    goto :goto_1

    .line 70
    :cond_2
    invoke-interface {p2, v0}, Lcom/google/research/reflection/layers/c;->Vo(I)Ljava/lang/Boolean;

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

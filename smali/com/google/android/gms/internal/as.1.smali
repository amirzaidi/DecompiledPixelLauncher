.class Lcom/google/android/gms/internal/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic rT:Lcom/google/android/gms/internal/az;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/az;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/as;->rT:Lcom/google/android/gms/internal/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/internal/aw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/aw;-><init>(Lcom/google/android/gms/internal/as;Ljava/lang/Runnable;)V

    const-string/jumbo v2, "ClearcutLoggerApiImpl"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

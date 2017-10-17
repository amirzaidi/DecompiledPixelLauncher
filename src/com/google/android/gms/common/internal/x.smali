.class public abstract Lcom/google/android/gms/common/internal/x;
.super Ljava/lang/Object;


# static fields
.field public static final fW:[Ljava/lang/String;


# instance fields
.field private fX:J

.field private fY:J

.field private fZ:I

.field private final ga:Landroid/os/Looper;

.field private gb:I

.field private final gc:Ljava/lang/Object;

.field private gd:J

.field private final ge:Lcom/google/android/gms/common/internal/B;

.field private final gf:Lcom/google/android/gms/common/internal/C;

.field private final gg:Lcom/google/android/gms/common/f;

.field private final gh:Ljava/lang/Object;

.field private gi:Lcom/google/android/gms/common/internal/zzu;

.field private gj:Landroid/os/IInterface;

.field private gk:I

.field private final gl:Lcom/google/android/gms/common/internal/q;

.field protected gm:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final gn:Ljava/util/ArrayList;

.field private go:Lcom/google/android/gms/common/internal/e;

.field private final gp:Ljava/lang/String;

.field private final gq:I

.field private gr:Lcom/google/android/gms/common/internal/c;

.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "service_esmobile"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "service_googleme"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/common/internal/x;->fW:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/C;Lcom/google/android/gms/common/f;ILcom/google/android/gms/common/internal/B;Lcom/google/android/gms/common/internal/q;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/x;->gc:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/x;->gh:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/x;->gn:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/x;->gk:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/x;->gm:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string/jumbo v0, "Context must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/l;->ho(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/x;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "Looper must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/l;->ho(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/x;->ga:Landroid/os/Looper;

    const-string/jumbo v0, "Supervisor must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/l;->ho(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/C;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/x;->gf:Lcom/google/android/gms/common/internal/C;

    const-string/jumbo v0, "API availability must not be null"

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/l;->ho(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/f;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/x;->gg:Lcom/google/android/gms/common/f;

    new-instance v0, Lcom/google/android/gms/common/internal/j;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/internal/j;-><init>(Lcom/google/android/gms/common/internal/x;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/x;->mHandler:Landroid/os/Handler;

    iput p5, p0, Lcom/google/android/gms/common/internal/x;->gq:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/x;->ge:Lcom/google/android/gms/common/internal/B;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/x;->gl:Lcom/google/android/gms/common/internal/q;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/x;->gp:Ljava/lang/String;

    return-void
.end method

.method static synthetic hQ(Lcom/google/android/gms/common/internal/x;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->gn:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic hR(Lcom/google/android/gms/common/internal/x;Lcom/google/android/gms/common/internal/zzu;)Lcom/google/android/gms/common/internal/zzu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/x;->gi:Lcom/google/android/gms/common/internal/zzu;

    return-object p1
.end method

.method static synthetic hT(Lcom/google/android/gms/common/internal/x;)Lcom/google/android/gms/common/internal/q;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->gl:Lcom/google/android/gms/common/internal/q;

    return-object v0
.end method

.method private hZ()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->go:Lcom/google/android/gms/common/internal/e;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->gf:Lcom/google/android/gms/common/internal/C;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/x;->gw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/x;->in()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/x;->go:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/x;->hP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/internal/C;->gZ(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/google/android/gms/common/internal/x;->go:Lcom/google/android/gms/common/internal/e;

    goto :goto_0
.end method

.method static synthetic ia(Lcom/google/android/gms/common/internal/x;)Lcom/google/android/gms/common/internal/B;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->ge:Lcom/google/android/gms/common/internal/B;

    return-object v0
.end method

.method static synthetic ib(Lcom/google/android/gms/common/internal/x;)Lcom/google/android/gms/common/internal/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->gr:Lcom/google/android/gms/common/internal/c;

    return-object v0
.end method

.method static synthetic id(Lcom/google/android/gms/common/internal/x;IILandroid/os/IInterface;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/x;->if(IILandroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method private if(IILandroid/os/IInterface;)Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/internal/x;->gc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/x;->gk:I

    if-ne v0, p1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/x;->ih(ILandroid/os/IInterface;)V

    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private ih(ILandroid/os/IInterface;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    move v3, v0

    :goto_0
    if-nez p2, :cond_1

    move v2, v0

    :goto_1
    if-eq v3, v2, :cond_2

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->hx(Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/x;->gc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/common/internal/x;->gk:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/x;->gj:Landroid/os/IInterface;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/internal/x;->gA(ILandroid/os/IInterface;)V

    packed-switch p1, :pswitch_data_0

    :goto_3
    monitor-exit v1

    return-void

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/x;->il()V

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/internal/x;->ie(Landroid/os/IInterface;)V

    goto :goto_3

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/x;->hZ()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic ii(Lcom/google/android/gms/common/internal/x;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->gh:Ljava/lang/Object;

    return-object v0
.end method

.method private il()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->go:Lcom/google/android/gms/common/internal/e;

    if-nez v0, :cond_0

    :goto_0
    new-instance v0, Lcom/google/android/gms/common/internal/e;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/x;->gm:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/internal/e;-><init>(Lcom/google/android/gms/common/internal/x;I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/x;->go:Lcom/google/android/gms/common/internal/e;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->gf:Lcom/google/android/gms/common/internal/C;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/x;->gw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/x;->in()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/x;->go:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/x;->hP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/internal/C;->hd(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/x;->gw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/x;->in()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x46

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GmsClient"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->gf:Lcom/google/android/gms/common/internal/C;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/x;->gw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/x;->in()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/x;->go:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/x;->hP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/internal/C;->gZ(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->gm:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/x;->gw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/x;->in()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "unable to connect to service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GmsClient"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->gm:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v5, v0}, Lcom/google/android/gms/common/internal/x;->hS(ILandroid/os/Bundle;I)V

    goto/16 :goto_1
.end method

.method static synthetic ip(Lcom/google/android/gms/common/internal/x;ILandroid/os/IInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/x;->ih(ILandroid/os/IInterface;)V

    return-void
.end method


# virtual methods
.method public dZ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    iget-object v1, p0, Lcom/google/android/gms/common/internal/x;->gc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/x;->gk:I

    iget-object v2, p0, Lcom/google/android/gms/common/internal/x;->gj:Landroid/os/IInterface;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v3, "mConnectState="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "UNKNOWN"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v0, " mService="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/x;->gx()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-wide v2, p0, Lcom/google/android/gms/common/internal/x;->fY:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v2, "lastConnectedTime="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/common/internal/x;->fY:J

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/google/android/gms/common/internal/x;->fY:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x15

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/common/internal/x;->fX:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v2, "lastSuspendedCause="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget v0, p0, Lcom/google/android/gms/common/internal/x;->gb:I

    packed-switch v0, :pswitch_data_1

    iget v0, p0, Lcom/google/android/gms/common/internal/x;->gb:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_4
    const-string/jumbo v0, " lastSuspendedTime="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/common/internal/x;->fX:J

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/google/android/gms/common/internal/x;->fX:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x15

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/common/internal/x;->gd:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v2, "lastFailedStatus="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/common/internal/x;->fZ:I

    invoke-static {v2}, Lcom/google/android/gms/common/api/A;->eG(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string/jumbo v0, " lastFailedTime="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/common/internal/x;->gd:J

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/google/android/gms/common/internal/x;->gd:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x15

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    const-string/jumbo v0, "CONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const-string/jumbo v0, "CONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v0, "DISCONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v0, "DISCONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_3

    :pswitch_4
    const-string/jumbo v0, "CAUSE_SERVICE_DISCONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto/16 :goto_4

    :pswitch_5
    const-string/jumbo v0, "CAUSE_NETWORK_LOST"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto/16 :goto_4

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public ea()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/common/internal/x;->gc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/x;->gk:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public eb(Lcom/google/android/gms/common/internal/zzq;Ljava/util/Set;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/x;->io()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/internal/GetServiceRequest;

    iget v2, p0, Lcom/google/android/gms/common/internal/x;->gq:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/GetServiceRequest;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/x;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/GetServiceRequest;->gG(Ljava/lang/String;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/GetServiceRequest;->gD(Landroid/os/Bundle;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    move-result-object v0

    if-nez p2, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/x;->dZ()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/x;->hW()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/common/internal/x;->gh:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/common/internal/x;->gi:Lcom/google/android/gms/common/internal/zzu;

    if-nez v2, :cond_3

    const-string/jumbo v0, "GmsClient"

    const-string/jumbo v2, "mServiceBroker is null, client disconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    return-void

    :cond_0
    :try_start_2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/GetServiceRequest;->gH(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "GmsClient"

    const-string/jumbo v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/x;->ic(I)V

    goto :goto_3

    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/x;->hX()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/GetServiceRequest;->gE(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/internal/GetServiceRequest;->gC(Lcom/google/android/gms/common/internal/zzq;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v1, "GmsClient"

    const-string/jumbo v2, "Remote exception occurred"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_2
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/x;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/GetServiceRequest;->gE(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :cond_3
    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/common/internal/x;->gi:Lcom/google/android/gms/common/internal/zzu;

    new-instance v3, Lcom/google/android/gms/common/internal/zzd$zzg;

    iget-object v4, p0, Lcom/google/android/gms/common/internal/x;->gm:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/common/internal/zzd$zzg;-><init>(Lcom/google/android/gms/common/internal/x;I)V

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/common/internal/zzu;->zza(Lcom/google/android/gms/common/internal/zzt;Lcom/google/android/gms/common/internal/GetServiceRequest;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
.end method

.method public ec()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->gm:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v2, p0, Lcom/google/android/gms/common/internal/x;->gn:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/x;->gh:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/common/internal/x;->gi:Lcom/google/android/gms/common/internal/zzu;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v4}, Lcom/google/android/gms/common/internal/x;->ih(ILandroid/os/IInterface;)V

    return-void

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/F;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/F;->iz()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public ed()Landroid/os/IBinder;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/x;->gh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->gi:Lcom/google/android/gms/common/internal/zzu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->gi:Lcom/google/android/gms/common/internal/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/zzu;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ee(Lcom/google/android/gms/common/internal/c;)V
    .locals 2

    const-string/jumbo v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/l;->ho(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/c;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/x;->gr:Lcom/google/android/gms/common/internal/c;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/common/internal/x;->ih(ILandroid/os/IInterface;)V

    return-void
.end method

.method public ef()Landroid/content/Intent;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not a sign in API"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public eg()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/common/internal/x;->gc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/x;->gk:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public eh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ei()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method gA(ILandroid/os/IInterface;)V
    .locals 0

    return-void
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract gw()Ljava/lang/String;
.end method

.method protected abstract gx()Ljava/lang/String;
.end method

.method protected abstract gz(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method protected final hP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->gp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->gp:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected hS(ILandroid/os/Bundle;I)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/x;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/common/internal/A;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/common/internal/A;-><init>(Lcom/google/android/gms/common/internal/x;ILandroid/os/Bundle;)V

    const/4 v3, 0x5

    const/4 v4, -0x1

    invoke-virtual {v1, v3, p3, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected hU(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/x;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/common/internal/s;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/s;-><init>(Lcom/google/android/gms/common/internal/x;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v3, p4, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected hV(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->nu()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/internal/x;->fZ:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/x;->gd:J

    return-void
.end method

.method public hW()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hX()Landroid/accounts/Account;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/x;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/accounts/Account;

    const-string/jumbo v1, "<<default account>>"

    const-string/jumbo v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/x;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    goto :goto_0
.end method

.method public final hY()Landroid/os/IInterface;
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/common/internal/x;->gc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/x;->gk:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/x;->ik()V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->gj:Landroid/os/IInterface;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v2, "Client is connected but service is null"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/l;->hv(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->gj:Landroid/os/IInterface;

    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ic(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/x;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/x;->gm:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected ie(Landroid/os/IInterface;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/x;->fY:J

    return-void
.end method

.method public ig()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected ij(I)V
    .locals 2

    iput p1, p0, Lcom/google/android/gms/common/internal/x;->gb:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/x;->fX:J

    return-void
.end method

.method protected final ik()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/x;->eg()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected im()Ljava/util/Set;
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method protected in()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms"

    return-object v0
.end method

.method protected io()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

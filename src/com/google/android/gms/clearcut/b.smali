.class public Lcom/google/android/gms/clearcut/b;
.super Ljava/lang/Object;


# instance fields
.field private final HV:Lcom/google/android/gms/clearcut/e;

.field final synthetic HW:Lcom/google/android/gms/clearcut/a;

.field private HX:Ljava/lang/String;

.field private final HY:Lcom/google/android/gms/internal/h;

.field private HZ:Z

.field private Ia:Ljava/lang/String;

.field private Ib:Ljava/util/ArrayList;

.field private Ic:Ljava/util/ArrayList;

.field private Id:I

.field private Ie:I

.field private If:Ljava/util/ArrayList;

.field private Ig:Ljava/util/ArrayList;

.field private Ih:Z

.field private Ii:Ljava/lang/String;

.field private Ij:Lcom/google/android/gms/clearcut/e;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/clearcut/a;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/clearcut/b;-><init>(Lcom/google/android/gms/clearcut/a;[BLcom/google/android/gms/clearcut/e;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/clearcut/a;[BLcom/google/android/gms/clearcut/e;)V
    .locals 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/clearcut/b;->HW:Lcom/google/android/gms/clearcut/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->HW:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->Mr(Lcom/google/android/gms/clearcut/a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/b;->Ie:I

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->HW:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->Md(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->Ia:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->HW:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->Mv(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->HX:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->HW:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->Mp(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->Ii:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->HW:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->Mw(Lcom/google/android/gms/clearcut/a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/b;->Id:I

    iput-object v1, p0, Lcom/google/android/gms/clearcut/b;->If:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/clearcut/b;->Ib:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/clearcut/b;->Ic:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/clearcut/b;->Ig:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/b;->Ih:Z

    new-instance v0, Lcom/google/android/gms/internal/h;

    invoke-direct {v0}, Lcom/google/android/gms/internal/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->HY:Lcom/google/android/gms/internal/h;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/b;->HZ:Z

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->Mv(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->HX:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->Mp(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->Ii:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->HY:Lcom/google/android/gms/internal/h;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->Mf(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/common/a/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/a/a;->mg()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/h;->oC:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->HY:Lcom/google/android/gms/internal/h;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->Mf(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/common/a/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/a/a;->mh()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/h;->oF:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->HY:Lcom/google/android/gms/internal/h;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->Ms(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/f;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->Mx(Lcom/google/android/gms/clearcut/a;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/clearcut/f;->MC(Landroid/content/Context;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/google/android/gms/internal/h;->os:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->HY:Lcom/google/android/gms/internal/h;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->Mi(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/c;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/b;->HY:Lcom/google/android/gms/internal/h;

    iget-wide v2, v2, Lcom/google/android/gms/internal/h;->oC:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/clearcut/c;->MA(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/h;->oM:J

    if-nez p2, :cond_0

    :goto_0
    iput-object p3, p0, Lcom/google/android/gms/clearcut/b;->HV:Lcom/google/android/gms/clearcut/e;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->HY:Lcom/google/android/gms/internal/h;

    iput-object p2, v0, Lcom/google/android/gms/internal/h;->oy:[B

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/clearcut/a;[BLcom/google/android/gms/clearcut/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/clearcut/b;-><init>(Lcom/google/android/gms/clearcut/a;[B)V

    return-void
.end method


# virtual methods
.method public My()Lcom/google/android/gms/common/api/f;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/b;->HZ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/b;->HZ:Z

    invoke-virtual {p0}, Lcom/google/android/gms/clearcut/b;->Mz()Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/clearcut/LogEventParcelable;->Iv:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/b;->HW:Lcom/google/android/gms/clearcut/a;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/a;->Mm(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/d;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->Km:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->Kq:I

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/clearcut/d;->um(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/api/Status;->hn:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/android/gms/common/api/B;->hv(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/f;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->HW:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->Mh(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/b;->HW:Lcom/google/android/gms/clearcut/a;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/a;->Mx(Lcom/google/android/gms/clearcut/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/clearcut/b;->Mz()Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/clearcut/g;->uy(Landroid/content/Context;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/f;

    move-result-object v0

    return-object v0
.end method

.method public Mz()Lcom/google/android/gms/clearcut/LogEventParcelable;
    .locals 12

    new-instance v11, Lcom/google/android/gms/clearcut/LogEventParcelable;

    new-instance v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/b;->HW:Lcom/google/android/gms/clearcut/a;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/a;->Mu(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/b;->HW:Lcom/google/android/gms/clearcut/a;

    invoke-static {v2}, Lcom/google/android/gms/clearcut/a;->Mo(Lcom/google/android/gms/clearcut/a;)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/clearcut/b;->Ie:I

    iget-object v4, p0, Lcom/google/android/gms/clearcut/b;->Ia:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/clearcut/b;->HX:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/clearcut/b;->Ii:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/clearcut/b;->HW:Lcom/google/android/gms/clearcut/a;

    invoke-static {v7}, Lcom/google/android/gms/clearcut/a;->Mt(Lcom/google/android/gms/clearcut/a;)Z

    move-result v7

    iget v8, p0, Lcom/google/android/gms/clearcut/b;->Id:I

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v3, p0, Lcom/google/android/gms/clearcut/b;->HY:Lcom/google/android/gms/internal/h;

    iget-object v4, p0, Lcom/google/android/gms/clearcut/b;->HV:Lcom/google/android/gms/clearcut/e;

    iget-object v5, p0, Lcom/google/android/gms/clearcut/b;->Ij:Lcom/google/android/gms/clearcut/e;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/b;->If:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/a;->Mg(Ljava/util/ArrayList;)[I

    move-result-object v6

    iget-object v1, p0, Lcom/google/android/gms/clearcut/b;->Ib:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/a;->Me(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/google/android/gms/clearcut/b;->Ic:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/a;->Mg(Ljava/util/ArrayList;)[I

    move-result-object v8

    iget-object v1, p0, Lcom/google/android/gms/clearcut/b;->Ig:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/a;->Mk(Ljava/util/ArrayList;)[[B

    move-result-object v9

    iget-boolean v10, p0, Lcom/google/android/gms/clearcut/b;->Ih:Z

    move-object v1, v11

    move-object v2, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/clearcut/LogEventParcelable;-><init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/internal/h;Lcom/google/android/gms/clearcut/e;Lcom/google/android/gms/clearcut/e;[I[Ljava/lang/String;[I[[BZ)V

    return-object v11
.end method

.class public Lcom/google/android/gms/clearcut/b;
.super Ljava/lang/Object;


# instance fields
.field private GA:Ljava/util/ArrayList;

.field private GB:Ljava/util/ArrayList;

.field private GC:Z

.field private GD:Ljava/lang/String;

.field private GE:Lcom/google/android/gms/clearcut/e;

.field private final Gq:Lcom/google/android/gms/clearcut/e;

.field final synthetic Gr:Lcom/google/android/gms/clearcut/a;

.field private Gs:Ljava/lang/String;

.field private final Gt:Lcom/google/android/gms/internal/h;

.field private Gu:Z

.field private Gv:Ljava/lang/String;

.field private Gw:Ljava/util/ArrayList;

.field private Gx:Ljava/util/ArrayList;

.field private Gy:I

.field private Gz:I


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

    iput-object p1, p0, Lcom/google/android/gms/clearcut/b;->Gr:Lcom/google/android/gms/clearcut/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->Gr:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->Ly(Lcom/google/android/gms/clearcut/a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/b;->Gz:I

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->Gr:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->Lk(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->Gv:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->Gr:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->LC(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->Gs:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->Gr:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->Lw(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->GD:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->Gr:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->LD(Lcom/google/android/gms/clearcut/a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/b;->Gy:I

    iput-object v1, p0, Lcom/google/android/gms/clearcut/b;->GA:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/clearcut/b;->Gw:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/clearcut/b;->Gx:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/clearcut/b;->GB:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/b;->GC:Z

    new-instance v0, Lcom/google/android/gms/internal/h;

    invoke-direct {v0}, Lcom/google/android/gms/internal/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->Gt:Lcom/google/android/gms/internal/h;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/b;->Gu:Z

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->LC(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->Gs:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->Lw(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->GD:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->Gt:Lcom/google/android/gms/internal/h;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->Lm(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/common/a/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/a/a;->js()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/h;->oa:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->Gt:Lcom/google/android/gms/internal/h;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->Lm(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/common/a/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/a/a;->jt()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/h;->od:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->Gt:Lcom/google/android/gms/internal/h;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->Lz(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/f;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->LE(Lcom/google/android/gms/clearcut/a;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/clearcut/f;->LJ(Landroid/content/Context;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/google/android/gms/internal/h;->nQ:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->Gt:Lcom/google/android/gms/internal/h;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->Lp(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/c;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/b;->Gt:Lcom/google/android/gms/internal/h;

    iget-wide v2, v2, Lcom/google/android/gms/internal/h;->oa:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/clearcut/c;->LH(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/h;->ok:J

    if-nez p2, :cond_0

    :goto_0
    iput-object p3, p0, Lcom/google/android/gms/clearcut/b;->Gq:Lcom/google/android/gms/clearcut/e;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->Gt:Lcom/google/android/gms/internal/h;

    iput-object p2, v0, Lcom/google/android/gms/internal/h;->nW:[B

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/clearcut/a;[BLcom/google/android/gms/clearcut/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/clearcut/b;-><init>(Lcom/google/android/gms/clearcut/a;[B)V

    return-void
.end method


# virtual methods
.method public LF()Lcom/google/android/gms/common/api/c;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/b;->Gu:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/b;->Gu:Z

    invoke-virtual {p0}, Lcom/google/android/gms/clearcut/b;->LG()Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GQ:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/b;->Gr:Lcom/google/android/gms/clearcut/a;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/a;->Lt(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/d;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->IH:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->IL:I

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/clearcut/d;->un(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/api/Status;->dU:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/android/gms/common/api/B;->eH(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->Gr:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->Lo(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/b;->Gr:Lcom/google/android/gms/clearcut/a;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/a;->LE(Lcom/google/android/gms/clearcut/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/clearcut/b;->LG()Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/clearcut/g;->uz(Landroid/content/Context;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    return-object v0
.end method

.method public LG()Lcom/google/android/gms/clearcut/LogEventParcelable;
    .locals 12

    new-instance v11, Lcom/google/android/gms/clearcut/LogEventParcelable;

    new-instance v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/b;->Gr:Lcom/google/android/gms/clearcut/a;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/a;->LB(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/b;->Gr:Lcom/google/android/gms/clearcut/a;

    invoke-static {v2}, Lcom/google/android/gms/clearcut/a;->Lv(Lcom/google/android/gms/clearcut/a;)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/clearcut/b;->Gz:I

    iget-object v4, p0, Lcom/google/android/gms/clearcut/b;->Gv:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/clearcut/b;->Gs:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/clearcut/b;->GD:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/clearcut/b;->Gr:Lcom/google/android/gms/clearcut/a;

    invoke-static {v7}, Lcom/google/android/gms/clearcut/a;->LA(Lcom/google/android/gms/clearcut/a;)Z

    move-result v7

    iget v8, p0, Lcom/google/android/gms/clearcut/b;->Gy:I

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v3, p0, Lcom/google/android/gms/clearcut/b;->Gt:Lcom/google/android/gms/internal/h;

    iget-object v4, p0, Lcom/google/android/gms/clearcut/b;->Gq:Lcom/google/android/gms/clearcut/e;

    iget-object v5, p0, Lcom/google/android/gms/clearcut/b;->GE:Lcom/google/android/gms/clearcut/e;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/b;->GA:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/a;->Ln(Ljava/util/ArrayList;)[I

    move-result-object v6

    iget-object v1, p0, Lcom/google/android/gms/clearcut/b;->Gw:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/a;->Ll(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/google/android/gms/clearcut/b;->Gx:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/a;->Ln(Ljava/util/ArrayList;)[I

    move-result-object v8

    iget-object v1, p0, Lcom/google/android/gms/clearcut/b;->GB:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/a;->Lr(Ljava/util/ArrayList;)[[B

    move-result-object v9

    iget-boolean v10, p0, Lcom/google/android/gms/clearcut/b;->GC:Z

    move-object v1, v11

    move-object v2, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/clearcut/LogEventParcelable;-><init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/internal/h;Lcom/google/android/gms/clearcut/e;Lcom/google/android/gms/clearcut/e;[I[Ljava/lang/String;[I[[BZ)V

    return-object v11
.end method

.class Landroid/support/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ahu:Ljava/lang/ThreadLocal;


# instance fields
.field private final aho:Ljava/util/ArrayList;

.field private ahp:Z

.field private final ahq:Landroid/support/v4/a/b;

.field private ahr:Landroid/support/a/l;

.field private ahs:J

.field private final aht:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/a/k;->ahu:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/support/v4/a/b;

    invoke-direct {v0}, Landroid/support/v4/a/b;-><init>()V

    iput-object v0, p0, Landroid/support/a/k;->ahq:Landroid/support/v4/a/b;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/a/k;->aho:Ljava/util/ArrayList;

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/a/k;->ahs:J

    .line 61
    new-instance v0, Landroid/support/a/n;

    invoke-direct {v0, p0}, Landroid/support/a/n;-><init>(Landroid/support/a/k;)V

    iput-object v0, p0, Landroid/support/a/k;->aht:Landroid/view/Choreographer$FrameCallback;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/a/k;->ahp:Z

    .line 199
    return-void
.end method

.method private auA(Landroid/support/a/f;J)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 156
    iget-object v0, p0, Landroid/support/a/k;->ahq:Landroid/support/v4/a/b;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 157
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, p2

    if-ltz v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 161
    iget-object v0, p0, Landroid/support/a/k;->ahq:Landroid/support/v4/a/b;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/b;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return v1

    .line 158
    :cond_0
    return v1

    :cond_1
    move v0, v2

    .line 160
    goto :goto_0

    .line 164
    :cond_2
    return v2
.end method

.method static synthetic auB(Landroid/support/a/k;)J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Landroid/support/a/k;->ahs:J

    return-wide v0
.end method

.method static synthetic auC(Landroid/support/a/k;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Landroid/support/a/k;->aho:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic auF(Landroid/support/a/k;J)J
    .locals 1

    .prologue
    .line 37
    iput-wide p1, p0, Landroid/support/a/k;->ahs:J

    return-wide p1
.end method

.method static synthetic auG(Landroid/support/a/k;J)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/support/a/k;->auJ(J)V

    return-void
.end method

.method private auH()Landroid/support/a/l;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Landroid/support/a/k;->ahr:Landroid/support/a/l;

    if-eqz v0, :cond_0

    .line 104
    :goto_0
    iget-object v0, p0, Landroid/support/a/k;->ahr:Landroid/support/a/l;

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Landroid/support/a/m;

    invoke-direct {v0, v1}, Landroid/support/a/m;-><init>(Landroid/support/a/n;)V

    iput-object v0, p0, Landroid/support/a/k;->ahr:Landroid/support/a/l;

    goto :goto_0
.end method

.method private auI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-boolean v0, p0, Landroid/support/a/k;->ahp:Z

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Landroid/support/a/k;->aho:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_2

    .line 174
    iput-boolean v2, p0, Landroid/support/a/k;->ahp:Z

    goto :goto_0

    .line 170
    :cond_2
    iget-object v1, p0, Landroid/support/a/k;->aho:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 171
    iget-object v1, p0, Landroid/support/a/k;->aho:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method private auJ(J)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move v1, v0

    .line 137
    :goto_0
    iget-object v0, p0, Landroid/support/a/k;->aho:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 146
    invoke-direct {p0}, Landroid/support/a/k;->auI()V

    .line 147
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Landroid/support/a/k;->aho:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/f;

    .line 139
    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0, v0, v2, v3}, Landroid/support/a/k;->auA(Landroid/support/a/f;J)Z

    move-result v4

    if-nez v4, :cond_2

    .line 137
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 143
    :cond_2
    invoke-interface {v0, p1, p2}, Landroid/support/a/f;->aul(J)Z

    goto :goto_1
.end method

.method static synthetic auK(Landroid/support/a/k;)Landroid/support/a/l;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/a/k;->auH()Landroid/support/a/l;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Landroid/support/a/k;
    .locals 2

    .prologue
    .line 75
    sget-object v0, Landroid/support/a/k;->ahu:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    sget-object v0, Landroid/support/a/k;->ahu:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/k;

    return-object v0

    .line 76
    :cond_0
    sget-object v0, Landroid/support/a/k;->ahu:Ljava/lang/ThreadLocal;

    new-instance v1, Landroid/support/a/k;

    invoke-direct {v1}, Landroid/support/a/k;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public auD(Landroid/support/a/f;)V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Landroid/support/a/k;->ahq:Landroid/support/v4/a/b;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/b;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Landroid/support/a/k;->aho:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 129
    if-gez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Landroid/support/a/k;->aho:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/a/k;->ahp:Z

    goto :goto_0
.end method

.method public auE(Landroid/support/a/f;J)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 111
    iget-object v1, p0, Landroid/support/a/k;->aho:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    :goto_0
    iget-object v1, p0, Landroid/support/a/k;->aho:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Landroid/support/a/k;->ahq:Landroid/support/v4/a/b;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/a/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_1
    return-void

    .line 112
    :cond_2
    invoke-direct {p0}, Landroid/support/a/k;->auH()Landroid/support/a/l;

    move-result-object v1

    iget-object v2, p0, Landroid/support/a/k;->aht:Landroid/view/Choreographer$FrameCallback;

    invoke-interface {v1, v2}, Landroid/support/a/l;->auL(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 115
    :cond_3
    iget-object v1, p0, Landroid/support/a/k;->aho:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

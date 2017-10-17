.class public final Lcom/google/android/gms/internal/E;
.super Lcom/google/android/gms/internal/aI;


# static fields
.field private static volatile pl:[Lcom/google/android/gms/internal/E;


# instance fields
.field public pk:Ljava/lang/String;

.field public pm:Ljava/lang/String;

.field public pn:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aI;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/E;->sH()Lcom/google/android/gms/internal/E;

    return-void
.end method

.method public static sI()[Lcom/google/android/gms/internal/E;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/E;->pl:[Lcom/google/android/gms/internal/E;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/E;->pl:[Lcom/google/android/gms/internal/E;

    return-object v0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/aX;->tm:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/E;->pl:[Lcom/google/android/gms/internal/E;

    if-eqz v0, :cond_1

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Lcom/google/android/gms/internal/E;

    sput-object v0, Lcom/google/android/gms/internal/E;->pl:[Lcom/google/android/gms/internal/E;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static sK([B)Lcom/google/android/gms/internal/E;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/E;

    invoke-direct {v0}, Lcom/google/android/gms/internal/E;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/aI;->uV(Lcom/google/android/gms/internal/aI;[B)Lcom/google/android/gms/internal/aI;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/E;

    return-object v0
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/aI;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/E;->pk:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/E;->pm:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/E;->pn:[B

    sget-object v2, Lcom/google/android/gms/internal/aN;->sQ:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/E;->pk:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wl(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/E;->pm:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wl(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/E;->pn:[B

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wM(I[B)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eq p1, p0, :cond_2

    instance-of v0, p1, Lcom/google/android/gms/internal/E;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/E;

    iget-object v0, p0, Lcom/google/android/gms/internal/E;->pk:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/E;->pk:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/E;->pk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/E;->pm:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/E;->pm:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/E;->pm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/E;->pn:[B

    iget-object v1, p1, Lcom/google/android/gms/internal/E;->pn:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_8

    return v3

    :cond_2
    return v3

    :cond_3
    return v2

    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/internal/E;->pk:Ljava/lang/String;

    if-eqz v0, :cond_0

    return v2

    :cond_5
    return v2

    :cond_6
    iget-object v0, p1, Lcom/google/android/gms/internal/E;->pm:Ljava/lang/String;

    if-eqz v0, :cond_1

    return v2

    :cond_7
    return v2

    :cond_8
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/E;->pk:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/E;->pk:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/E;->pm:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/E;->pm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/E;->pn:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public sH()Lcom/google/android/gms/internal/E;
    .locals 1

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/E;->pk:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/E;->pm:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/aN;->sQ:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/E;->pn:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/E;->sB:I

    return-object p0
.end method

.method public sJ(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/E;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aN;->vn(Lcom/google/android/gms/internal/be;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/E;->pk:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/E;->pm:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xP()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/E;->pn:[B

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public sa(Lcom/google/android/gms/internal/aV;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/E;->pk:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/E;->pm:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/E;->pn:[B

    sget-object v1, Lcom/google/android/gms/internal/aN;->sQ:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aI;->sa(Lcom/google/android/gms/internal/aV;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/E;->pk:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vU(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/E;->pm:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vU(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/E;->pn:[B

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->wz(I[B)V

    goto :goto_2
.end method

.method public synthetic sc(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/E;->sJ(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/E;

    move-result-object v0

    return-object v0
.end method

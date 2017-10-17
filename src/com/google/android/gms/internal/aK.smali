.class public final Lcom/google/android/gms/internal/aK;
.super Lcom/google/android/gms/internal/ba;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static volatile sE:[Lcom/google/android/gms/internal/aK;


# instance fields
.field public sD:Ljava/lang/String;

.field public sF:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ba;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aK;->ve()Lcom/google/android/gms/internal/aK;

    return-void
.end method

.method public static vb()[Lcom/google/android/gms/internal/aK;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/aK;->sE:[Lcom/google/android/gms/internal/aK;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/aK;->sE:[Lcom/google/android/gms/internal/aK;

    return-object v0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/aX;->tm:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/aK;->sE:[Lcom/google/android/gms/internal/aK;

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
    new-array v0, v0, [Lcom/google/android/gms/internal/aK;

    sput-object v0, Lcom/google/android/gms/internal/aK;->sE:[Lcom/google/android/gms/internal/aK;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aK;->vc()Lcom/google/android/gms/internal/aK;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/ba;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aK;->sF:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aK;->sD:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aK;->sF:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wl(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/aK;->sD:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wl(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_4

    instance-of v2, p1, Lcom/google/android/gms/internal/aK;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/aK;

    iget-object v2, p0, Lcom/google/android/gms/internal/aK;->sF:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/aK;->sF:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/aK;->sF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/aK;->sD:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/aK;->sD:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/aK;->sD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/aK;->tt:Lcom/google/android/gms/internal/aR;

    if-nez v2, :cond_a

    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/internal/aK;->tt:Lcom/google/android/gms/internal/aR;

    if-nez v2, :cond_b

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    return v1

    :cond_5
    return v0

    :cond_6
    iget-object v2, p1, Lcom/google/android/gms/internal/aK;->sF:Ljava/lang/String;

    if-eqz v2, :cond_0

    return v0

    :cond_7
    return v0

    :cond_8
    iget-object v2, p1, Lcom/google/android/gms/internal/aK;->sD:Ljava/lang/String;

    if-eqz v2, :cond_1

    return v0

    :cond_9
    return v0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/aK;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aR;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/aK;->tt:Lcom/google/android/gms/internal/aR;

    iget-object v1, p1, Lcom/google/android/gms/internal/aK;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aR;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_b
    iget-object v2, p1, Lcom/google/android/gms/internal/aK;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aR;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0
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

    iget-object v0, p0, Lcom/google/android/gms/internal/aK;->sF:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aK;->sF:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/aK;->sD:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/aK;->sD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/aK;->tt:Lcom/google/android/gms/internal/aR;

    if-nez v2, :cond_3

    :cond_0
    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/aK;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aR;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aK;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aR;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public sa(Lcom/google/android/gms/internal/aV;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aK;->sF:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aK;->sD:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ba;->sa(Lcom/google/android/gms/internal/aV;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aK;->sF:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vU(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aK;->sD:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vU(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public synthetic sc(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aK;->vd(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aK;

    move-result-object v0

    return-object v0
.end method

.method public synthetic se()Lcom/google/android/gms/internal/ba;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aK;

    return-object v0
.end method

.method public synthetic sg()Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aK;

    return-object v0
.end method

.method public vc()Lcom/google/android/gms/internal/aK;
    .locals 2

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ba;->se()Lcom/google/android/gms/internal/ba;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aK;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public vd(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aK;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ba;->xt(Lcom/google/android/gms/internal/be;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aK;->sF:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aK;->sD:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public ve()Lcom/google/android/gms/internal/aK;
    .locals 1

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/aK;->sF:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/aK;->sD:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aK;->tt:Lcom/google/android/gms/internal/aR;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/aK;->sB:I

    return-object p0
.end method

.class Lcom/google/android/gms/internal/aP;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private sU:Ljava/util/List;

.field private sV:Lcom/google/android/gms/internal/aO;

.field private sW:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aP;->sU:Ljava/util/List;

    return-void
.end method

.method private vv()[B
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aP;->computeSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/aV;->vS([B)Lcom/google/android/gms/internal/aV;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/aP;->vw(Lcom/google/android/gms/internal/aV;)V

    return-object v0
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aP;->vy()Lcom/google/android/gms/internal/aP;

    move-result-object v0

    return-object v0
.end method

.method computeSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aP;->sU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sV:Lcom/google/android/gms/internal/aO;

    iget-object v1, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aO;->vs(Ljava/lang/Object;)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bb;->computeSerializedSize()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    if-eq p1, p0, :cond_2

    instance-of v0, p1, Lcom/google/android/gms/internal/aP;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/aP;

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sU:Ljava/util/List;

    if-nez v0, :cond_d

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/aP;->vv()[B

    move-result-object v0

    invoke-direct {p1}, Lcom/google/android/gms/internal/aP;->vv()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v2

    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sV:Lcom/google/android/gms/internal/aO;

    iget-object v1, p1, Lcom/google/android/gms/internal/aP;->sV:Lcom/google/android/gms/internal/aO;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sV:Lcom/google/android/gms/internal/aO;

    iget-object v0, v0, Lcom/google/android/gms/internal/aO;->sR:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_5
    return v2

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v1, p1, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    check-cast v0, [I

    iget-object v1, p1, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    check-cast v0, [J

    iget-object v1, p1, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    check-cast v0, [F

    iget-object v1, p1, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    check-cast v1, [F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    check-cast v0, [D

    iget-object v1, p1, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    check-cast v1, [D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    return v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object v1, p1, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    check-cast v1, [Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    return v0

    :cond_d
    iget-object v0, p1, Lcom/google/android/gms/internal/aP;->sU:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sU:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/aP;->sU:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hashCode()I
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/aP;->vv()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method vw(Lcom/google/android/gms/internal/aV;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sV:Lcom/google/android/gms/internal/aO;

    iget-object v1, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/aO;->vr(Ljava/lang/Object;Lcom/google/android/gms/internal/aV;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bb;->xB(Lcom/google/android/gms/internal/aV;)V

    goto :goto_0
.end method

.method vx(Lcom/google/android/gms/internal/bb;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sU:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final vy()Lcom/google/android/gms/internal/aP;
    .locals 5

    const/4 v1, 0x0

    new-instance v3, Lcom/google/android/gms/internal/aP;

    invoke-direct {v3}, Lcom/google/android/gms/internal/aP;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sV:Lcom/google/android/gms/internal/aO;

    iput-object v0, v3, Lcom/google/android/gms/internal/aP;->sV:Lcom/google/android/gms/internal/aO;

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sU:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/google/android/gms/internal/aP;->sU:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/aP;->sU:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/internal/aI;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    instance-of v0, v0, [[B

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    instance-of v0, v0, [Lcom/google/android/gms/internal/aI;

    if-nez v0, :cond_a

    :cond_0
    :goto_1
    return-object v3

    :cond_1
    const/4 v0, 0x0

    iput-object v0, v3, Lcom/google/android/gms/internal/aP;->sU:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/aI;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aI;

    iput-object v0, v3, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    check-cast v0, [[B

    array-length v2, v0

    new-array v4, v2, [[B

    iput-object v4, v3, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    move v2, v1

    :goto_2
    array-length v1, v0

    if-ge v2, v1, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    aput-object v1, v4, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    check-cast v0, [Z

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    check-cast v0, [I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    check-cast v0, [J

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    check-cast v0, [F

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    check-cast v0, [D

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/gms/internal/aI;

    array-length v2, v0

    new-array v4, v2, [Lcom/google/android/gms/internal/aI;

    iput-object v4, v3, Lcom/google/android/gms/internal/aP;->sW:Ljava/lang/Object;

    move v2, v1

    :goto_3
    array-length v1, v0

    if-ge v2, v1, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aI;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aI;

    aput-object v1, v4, v2
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3
.end method

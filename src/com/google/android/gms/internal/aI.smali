.class public Lcom/google/android/gms/internal/aI;
.super Ljava/lang/Object;


# instance fields
.field protected final sX:Ljava/lang/Class;

.field protected final sY:Z

.field public final sZ:I

.field protected final type:I


# direct methods
.method private constructor <init>(ILjava/lang/Class;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/aI;->type:I

    iput-object p2, p0, Lcom/google/android/gms/internal/aI;->sX:Ljava/lang/Class;

    iput p3, p0, Lcom/google/android/gms/internal/aI;->sZ:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/aI;->sY:Z

    return-void
.end method

.method public static vp(ILjava/lang/Class;J)Lcom/google/android/gms/internal/aI;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/aI;

    long-to-int v1, p2

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/internal/aI;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/internal/aI;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/aI;

    iget v2, p0, Lcom/google/android/gms/internal/aI;->type:I

    iget v3, p1, Lcom/google/android/gms/internal/aI;->type:I

    if-eq v2, v3, :cond_4

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    return v0

    :cond_3
    return v1

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/aI;->sX:Ljava/lang/Class;

    iget-object v3, p1, Lcom/google/android/gms/internal/aI;->sX:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/aI;->sZ:I

    iget v3, p1, Lcom/google/android/gms/internal/aI;->sZ:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/aI;->sY:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/aI;->sY:Z

    if-eq v2, v3, :cond_1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/aI;->type:I

    add-int/lit16 v1, v1, 0x47b

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/aI;->sX:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/aI;->sZ:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/gms/internal/aI;->sY:Z

    if-nez v2, :cond_0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected vn(Ljava/lang/Object;Lcom/google/android/gms/internal/aP;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/internal/aI;->vs(Ljava/lang/Object;Lcom/google/android/gms/internal/aP;)V

    goto :goto_1
.end method

.method protected vo(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/aI;->vt(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1
.end method

.method vq(Ljava/lang/Object;Lcom/google/android/gms/internal/aP;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aI;->sY:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/aI;->vs(Ljava/lang/Object;Lcom/google/android/gms/internal/aP;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/aI;->vn(Ljava/lang/Object;Lcom/google/android/gms/internal/aP;)V

    goto :goto_0
.end method

.method vr(Ljava/lang/Object;)I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aI;->sY:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aI;->vt(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aI;->vo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected vs(Ljava/lang/Object;Lcom/google/android/gms/internal/aP;)V
    .locals 4

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/aI;->sZ:I

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/aP;->wa(I)V

    iget v0, p0, Lcom/google/android/gms/internal/aI;->type:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/android/gms/internal/aI;->type:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_0
    :try_start_1
    check-cast p1, Lcom/google/android/gms/internal/aC;

    iget v0, p0, Lcom/google/android/gms/internal/aI;->sZ:I

    invoke-static {v0}, Lcom/google/android/gms/internal/aH;->vk(I)I

    move-result v0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/aP;->wz(Lcom/google/android/gms/internal/aC;)V

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/aP;->vU(II)V

    :goto_0
    return-void

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/aC;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/aP;->wG(Lcom/google/android/gms/internal/aC;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected vt(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/aI;->sZ:I

    invoke-static {v0}, Lcom/google/android/gms/internal/aH;->vk(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/aI;->type:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/android/gms/internal/aI;->type:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/aC;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/aP;->we(ILcom/google/android/gms/internal/aC;)I

    move-result v0

    return v0

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/aC;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/aP;->wK(ILcom/google/android/gms/internal/aC;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

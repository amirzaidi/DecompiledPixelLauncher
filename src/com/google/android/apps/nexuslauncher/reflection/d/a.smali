.class public final Lcom/google/android/apps/nexuslauncher/reflection/d/a;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# instance fields
.field public Q:J

.field public R:Ljava/lang/String;

.field public S:[Lcom/google/android/apps/nexuslauncher/reflection/d/b;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 38
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->clear()Lcom/google/android/apps/nexuslauncher/reflection/d/a;

    .line 39
    return-void
.end method

.method public static ad([B)Lcom/google/android/apps/nexuslauncher/reflection/d/a;
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/d/a;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/a;->mergeFrom(Lcom/google/protobuf/nano/a;[B)Lcom/google/protobuf/nano/a;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/reflection/d/a;
    .locals 2

    .prologue
    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->Q:J

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->version:I

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->R:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->emptyArray()[Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->S:[Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->cachedSize:I

    .line 47
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 76
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->Q:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 78
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->Q:J

    const/4 v4, 0x1

    .line 77
    invoke-static {v4, v2, v3}, Lcom/google/protobuf/nano/b;->Vz(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 80
    :cond_0
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->version:I

    if-eqz v2, :cond_1

    .line 82
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->version:I

    const/4 v3, 0x2

    .line 81
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->R:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 86
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->R:Ljava/lang/String;

    const/4 v3, 0x3

    .line 85
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 88
    :cond_2
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->S:[Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->S:[Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    array-length v2, v2

    if-lez v2, :cond_5

    move v6, v1

    move v1, v0

    move v0, v6

    .line 89
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->S:[Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 90
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->S:[Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    aget-object v2, v2, v0

    .line 91
    if-eqz v2, :cond_3

    .line 93
    const/4 v3, 0x4

    .line 92
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v2

    add-int/2addr v1, v2

    .line 89
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 97
    :cond_5
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/d/a;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 105
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 106
    sparse-switch v0, :sswitch_data_0

    .line 110
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    return-object p0

    .line 108
    :sswitch_0
    return-object p0

    .line 116
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wz()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->Q:J

    goto :goto_0

    .line 120
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->version:I

    goto :goto_0

    .line 124
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->R:Ljava/lang/String;

    goto :goto_0

    .line 129
    :sswitch_4
    const/16 v0, 0x22

    .line 128
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WN(Lcom/google/protobuf/nano/c;I)I

    move-result v2

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->S:[Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    if-nez v0, :cond_2

    move v0, v1

    .line 132
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    .line 133
    if-eqz v0, :cond_1

    .line 134
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->S:[Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 137
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/d/b;-><init>()V

    aput-object v3, v2, v0

    .line 138
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    .line 139
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->S:[Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    array-length v0, v0

    goto :goto_1

    .line 142
    :cond_3
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/d/b;-><init>()V

    aput-object v3, v2, v0

    .line 143
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    .line 144
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->S:[Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    goto :goto_0

    .line 106
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/d/a;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 53
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->Q:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 54
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->Q:J

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/b;->Wc(IJ)V

    .line 56
    :cond_0
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->version:I

    if-eqz v1, :cond_1

    .line 57
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->version:I

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->R:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 60
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->R:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->S:[Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->S:[Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->S:[Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 64
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->S:[Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    aget-object v1, v1, v0

    .line 65
    if-eqz v1, :cond_3

    .line 66
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 63
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 71
    return-void
.end method

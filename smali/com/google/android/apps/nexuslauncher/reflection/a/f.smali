.class public final Lcom/google/android/apps/nexuslauncher/reflection/a/f;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# instance fields
.field public aO:Ljava/lang/String;

.field public aP:J

.field public aQ:Lcom/google/android/apps/nexuslauncher/reflection/a/g;

.field public aR:Lcom/google/android/apps/nexuslauncher/reflection/a/i;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->clear()Lcom/google/android/apps/nexuslauncher/reflection/a/f;

    .line 42
    return-void
.end method

.method public static ap(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/a/f;
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/a/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/a/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/reflection/a/f;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aO:Ljava/lang/String;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aP:J

    .line 47
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aQ:Lcom/google/android/apps/nexuslauncher/reflection/a/g;

    .line 48
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aR:Lcom/google/android/apps/nexuslauncher/reflection/a/i;

    .line 49
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->packageName:Ljava/lang/String;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->cachedSize:I

    .line 51
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aO:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aO:Ljava/lang/String;

    const/4 v2, 0x1

    .line 79
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Sb(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    :cond_0
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aP:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 84
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aP:J

    const/4 v1, 0x2

    .line 83
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->RE(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aQ:Lcom/google/android/apps/nexuslauncher/reflection/a/g;

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aQ:Lcom/google/android/apps/nexuslauncher/reflection/a/g;

    const/4 v2, 0x3

    .line 87
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Rt(ILcom/google/protobuf/nano/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aR:Lcom/google/android/apps/nexuslauncher/reflection/a/i;

    if-eqz v1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aR:Lcom/google/android/apps/nexuslauncher/reflection/a/i;

    const/4 v2, 0x4

    .line 91
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Rt(ILcom/google/protobuf/nano/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->packageName:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 96
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->packageName:Ljava/lang/String;

    const/4 v2, 0x5

    .line 95
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Sb(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    :cond_4
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/a/f;
    .locals 2

    .prologue
    .line 106
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Sx()I

    move-result v0

    .line 107
    sparse-switch v0, :sswitch_data_0

    .line 111
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->SW(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    return-object p0

    .line 109
    :sswitch_0
    return-object p0

    .line 117
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SG()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aO:Ljava/lang/String;

    goto :goto_0

    .line 121
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SE()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aP:J

    goto :goto_0

    .line 125
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aQ:Lcom/google/android/apps/nexuslauncher/reflection/a/g;

    if-nez v0, :cond_1

    .line 126
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/a/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aQ:Lcom/google/android/apps/nexuslauncher/reflection/a/g;

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aQ:Lcom/google/android/apps/nexuslauncher/reflection/a/g;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->SB(Lcom/google/protobuf/nano/a;)V

    goto :goto_0

    .line 132
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aR:Lcom/google/android/apps/nexuslauncher/reflection/a/i;

    if-nez v0, :cond_2

    .line 133
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/a/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aR:Lcom/google/android/apps/nexuslauncher/reflection/a/i;

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aR:Lcom/google/android/apps/nexuslauncher/reflection/a/i;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->SB(Lcom/google/protobuf/nano/a;)V

    goto :goto_0

    .line 139
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SG()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 107
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/a/f;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aO:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aO:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->RY(ILjava/lang/String;)V

    .line 60
    :cond_0
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aP:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 61
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aP:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/b;->Sh(IJ)V

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aQ:Lcom/google/android/apps/nexuslauncher/reflection/a/g;

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aQ:Lcom/google/android/apps/nexuslauncher/reflection/a/g;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->RP(ILcom/google/protobuf/nano/a;)V

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aR:Lcom/google/android/apps/nexuslauncher/reflection/a/i;

    if-eqz v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->aR:Lcom/google/android/apps/nexuslauncher/reflection/a/i;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->RP(ILcom/google/protobuf/nano/a;)V

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->packageName:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/f;->packageName:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->RY(ILjava/lang/String;)V

    .line 72
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 73
    return-void
.end method

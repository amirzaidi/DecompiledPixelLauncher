.class public final Lcom/google/android/apps/nexuslauncher/reflection/a/g;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# instance fields
.field public aS:Ljava/lang/String;

.field public aT:Ljava/lang/String;

.field public aU:Ljava/lang/String;

.field public aV:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 188
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->clear()Lcom/google/android/apps/nexuslauncher/reflection/a/g;

    .line 189
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/reflection/a/g;
    .locals 1

    .prologue
    .line 192
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aS:Ljava/lang/String;

    .line 193
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aT:Ljava/lang/String;

    .line 194
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aU:Ljava/lang/String;

    .line 195
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aV:Ljava/lang/String;

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->cachedSize:I

    .line 197
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 220
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 221
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aS:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aS:Ljava/lang/String;

    const/4 v2, 0x1

    .line 222
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Sb(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aT:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aT:Ljava/lang/String;

    const/4 v2, 0x2

    .line 226
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Sb(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aU:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 231
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aU:Ljava/lang/String;

    const/4 v2, 0x3

    .line 230
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Sb(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aV:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 235
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aV:Ljava/lang/String;

    const/4 v2, 0x4

    .line 234
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Sb(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 237
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/a/g;
    .locals 1

    .prologue
    .line 245
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Sx()I

    move-result v0

    .line 246
    sparse-switch v0, :sswitch_data_0

    .line 250
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->SW(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    return-object p0

    .line 248
    :sswitch_0
    return-object p0

    .line 256
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SG()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aS:Ljava/lang/String;

    goto :goto_0

    .line 260
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SG()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aT:Ljava/lang/String;

    goto :goto_0

    .line 264
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SG()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aU:Ljava/lang/String;

    goto :goto_0

    .line 268
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SG()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aV:Ljava/lang/String;

    goto :goto_0

    .line 246
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/a/g;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aS:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aS:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->RY(ILjava/lang/String;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aT:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aT:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->RY(ILjava/lang/String;)V

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aU:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aU:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->RY(ILjava/lang/String;)V

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aV:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/g;->aV:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->RY(ILjava/lang/String;)V

    .line 215
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 216
    return-void
.end method

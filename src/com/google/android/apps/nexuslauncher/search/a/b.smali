.class public final Lcom/google/android/apps/nexuslauncher/search/a/b;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# static fields
.field private static volatile ei:[Lcom/google/android/apps/nexuslauncher/search/a/b;


# instance fields
.field public ej:Ljava/lang/String;

.field public ek:Ljava/lang/String;

.field public el:Ljava/lang/String;

.field public label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 167
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/a/b;->clear()Lcom/google/android/apps/nexuslauncher/search/a/b;

    .line 168
    return-void
.end method

.method public static emptyArray()[Lcom/google/android/apps/nexuslauncher/search/a/b;
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/google/android/apps/nexuslauncher/search/a/b;->ei:[Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-nez v0, :cond_1

    .line 144
    sget-object v1, Lcom/google/protobuf/nano/d;->PH:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/search/a/b;->ei:[Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/search/a/b;

    sput-object v0, Lcom/google/android/apps/nexuslauncher/search/a/b;->ei:[Lcom/google/android/apps/nexuslauncher/search/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 151
    :cond_1
    sget-object v0, Lcom/google/android/apps/nexuslauncher/search/a/b;->ei:[Lcom/google/android/apps/nexuslauncher/search/a/b;

    return-object v0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/search/a/b;
    .locals 1

    .prologue
    .line 171
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->label:Ljava/lang/String;

    .line 172
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->ek:Ljava/lang/String;

    .line 173
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->ej:Ljava/lang/String;

    .line 174
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->el:Ljava/lang/String;

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->cachedSize:I

    .line 176
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 199
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->label:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->label:Ljava/lang/String;

    const/4 v2, 0x1

    .line 201
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->ek:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->ek:Ljava/lang/String;

    const/4 v2, 0x2

    .line 205
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->ej:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->ej:Ljava/lang/String;

    const/4 v2, 0x3

    .line 209
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->el:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 214
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->el:Ljava/lang/String;

    const/4 v2, 0x4

    .line 213
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/search/a/b;
    .locals 1

    .prologue
    .line 224
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 225
    sparse-switch v0, :sswitch_data_0

    .line 229
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    return-object p0

    .line 227
    :sswitch_0
    return-object p0

    .line 235
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->label:Ljava/lang/String;

    goto :goto_0

    .line 239
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->ek:Ljava/lang/String;

    goto :goto_0

    .line 243
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->ej:Ljava/lang/String;

    goto :goto_0

    .line 247
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->el:Ljava/lang/String;

    goto :goto_0

    .line 225
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
    .line 219
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/search/a/b;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/search/a/b;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->label:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->label:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->ek:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->ek:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->ej:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->ej:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->el:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 192
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/b;->el:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 194
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 195
    return-void
.end method

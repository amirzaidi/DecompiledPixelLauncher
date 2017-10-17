.class public final Lcom/google/android/apps/nexuslauncher/smartspace/b/i;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# instance fields
.field public dc:Z

.field public dd:[B

.field public de:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

.field public df:J

.field public dg:I

.field public dh:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1211
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 1212
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->clear()Lcom/google/android/apps/nexuslauncher/smartspace/b/i;

    .line 1213
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/smartspace/b/i;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->de:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    .line 1217
    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->df:J

    .line 1218
    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dh:J

    .line 1219
    iput v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dg:I

    .line 1220
    sget-object v0, Lcom/google/protobuf/nano/f;->PP:[B

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dd:[B

    .line 1221
    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dc:Z

    .line 1222
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->cachedSize:I

    .line 1223
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1252
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 1253
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->de:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    if-eqz v1, :cond_0

    .line 1255
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->de:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    const/4 v2, 0x1

    .line 1254
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1257
    :cond_0
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->df:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 1259
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->df:J

    const/4 v1, 0x2

    .line 1258
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->Vz(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1261
    :cond_1
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dh:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 1263
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dh:J

    const/4 v1, 0x3

    .line 1262
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->Vz(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1265
    :cond_2
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dg:I

    if-eqz v1, :cond_3

    .line 1267
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dg:I

    const/4 v2, 0x4

    .line 1266
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1269
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dd:[B

    sget-object v2, Lcom/google/protobuf/nano/f;->PP:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1271
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dd:[B

    const/4 v2, 0x5

    .line 1270
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Va(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1273
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dc:Z

    if-eqz v1, :cond_5

    .line 1275
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dc:Z

    const/4 v2, 0x6

    .line 1274
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VL(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1277
    :cond_5
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/smartspace/b/i;
    .locals 2

    .prologue
    .line 1285
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 1286
    sparse-switch v0, :sswitch_data_0

    .line 1290
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1291
    return-object p0

    .line 1288
    :sswitch_0
    return-object p0

    .line 1296
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->de:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    if-nez v0, :cond_1

    .line 1297
    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->de:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    .line 1299
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->de:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    goto :goto_0

    .line 1303
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wz()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->df:J

    goto :goto_0

    .line 1307
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wz()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dh:J

    goto :goto_0

    .line 1311
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dg:I

    goto :goto_0

    .line 1315
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wp()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dd:[B

    goto :goto_0

    .line 1319
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dc:Z

    goto :goto_0

    .line 1286
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 1280
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/smartspace/b/i;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1229
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->de:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->de:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 1232
    :cond_0
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->df:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 1233
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->df:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/b;->Wc(IJ)V

    .line 1235
    :cond_1
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dh:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 1236
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dh:J

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/b;->Wc(IJ)V

    .line 1238
    :cond_2
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dg:I

    if-eqz v0, :cond_3

    .line 1239
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dg:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 1241
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dd:[B

    sget-object v1, Lcom/google/protobuf/nano/f;->PP:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1242
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dd:[B

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vj(I[B)V

    .line 1244
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dc:Z

    if-eqz v0, :cond_5

    .line 1245
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dc:Z

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VG(IZ)V

    .line 1247
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 1248
    return-void
.end method

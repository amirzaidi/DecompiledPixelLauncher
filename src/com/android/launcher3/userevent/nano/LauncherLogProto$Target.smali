.class public final Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# static fields
.field private static volatile _emptyArray:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;


# instance fields
.field public cardinality:I

.field public componentHash:I

.field public containerType:I

.field public controlType:I

.field public gridX:I

.field public gridY:I

.field public intentHash:I

.field public itemType:I

.field public packageNameHash:I

.field public pageIndex:I

.field public predictedRank:I

.field public rank:I

.field public spanX:I

.field public spanY:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 123
    invoke-virtual {p0}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->clear()Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 124
    return-void
.end method

.method public static emptyArray()[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->_emptyArray:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-nez v0, :cond_1

    .line 67
    sget-object v1, Lcom/google/protobuf/nano/d;->PH:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->_emptyArray:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    sput-object v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->_emptyArray:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 74
    :cond_1
    sget-object v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->_emptyArray:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->type:I

    .line 128
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    .line 129
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->rank:I

    .line 130
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridX:I

    .line 131
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridY:I

    .line 132
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 133
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->cardinality:I

    .line 134
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->controlType:I

    .line 135
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    .line 136
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    .line 137
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->componentHash:I

    .line 138
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->intentHash:I

    .line 139
    iput v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanX:I

    .line 140
    iput v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanY:I

    .line 141
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->cachedSize:I

    .line 143
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 199
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 200
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->type:I

    if-eqz v1, :cond_0

    .line 202
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->type:I

    .line 201
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 204
    :cond_0
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    if-eqz v1, :cond_1

    .line 206
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    const/4 v2, 0x2

    .line 205
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 208
    :cond_1
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->rank:I

    if-eqz v1, :cond_2

    .line 210
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->rank:I

    const/4 v2, 0x3

    .line 209
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 212
    :cond_2
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridX:I

    if-eqz v1, :cond_3

    .line 214
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridX:I

    const/4 v2, 0x4

    .line 213
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    :cond_3
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridY:I

    if-eqz v1, :cond_4

    .line 218
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridY:I

    const/4 v2, 0x5

    .line 217
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 220
    :cond_4
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    if-eqz v1, :cond_5

    .line 222
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    const/4 v2, 0x6

    .line 221
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 224
    :cond_5
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->cardinality:I

    if-eqz v1, :cond_6

    .line 226
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->cardinality:I

    const/4 v2, 0x7

    .line 225
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 228
    :cond_6
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->controlType:I

    if-eqz v1, :cond_7

    .line 230
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->controlType:I

    const/16 v2, 0x8

    .line 229
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 232
    :cond_7
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    if-eqz v1, :cond_8

    .line 234
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    const/16 v2, 0x9

    .line 233
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    :cond_8
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    if-eqz v1, :cond_9

    .line 238
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    const/16 v2, 0xa

    .line 237
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    :cond_9
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->componentHash:I

    if-eqz v1, :cond_a

    .line 242
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->componentHash:I

    const/16 v2, 0xb

    .line 241
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    :cond_a
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->intentHash:I

    if-eqz v1, :cond_b

    .line 246
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->intentHash:I

    const/16 v2, 0xc

    .line 245
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 248
    :cond_b
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanX:I

    if-eq v1, v3, :cond_c

    .line 250
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanX:I

    const/16 v2, 0xd

    .line 249
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 252
    :cond_c
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanY:I

    if-eq v1, v3, :cond_d

    .line 254
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanY:I

    const/16 v2, 0xe

    .line 253
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 256
    :cond_d
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    if-eqz v1, :cond_e

    .line 258
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    const/16 v2, 0xf

    .line 257
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 260
    :cond_e
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;
    .locals 1

    .prologue
    .line 268
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 269
    sparse-switch v0, :sswitch_data_0

    .line 273
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    return-object p0

    .line 271
    :sswitch_0
    return-object p0

    .line 279
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    .line 280
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 285
    :pswitch_0
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->type:I

    goto :goto_0

    .line 291
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    goto :goto_0

    .line 295
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->rank:I

    goto :goto_0

    .line 299
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridX:I

    goto :goto_0

    .line 303
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridY:I

    goto :goto_0

    .line 307
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    .line 308
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 320
    :pswitch_1
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    goto :goto_0

    .line 326
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->cardinality:I

    goto :goto_0

    .line 330
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    .line 331
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 344
    :pswitch_2
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->controlType:I

    goto :goto_0

    .line 350
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    .line 351
    packed-switch v0, :pswitch_data_3

    goto :goto_0

    .line 361
    :pswitch_3
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    goto :goto_0

    .line 367
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    goto :goto_0

    .line 371
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->componentHash:I

    goto :goto_0

    .line 375
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->intentHash:I

    goto :goto_0

    .line 379
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanX:I

    goto :goto_0

    .line 383
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanY:I

    goto :goto_0

    .line 387
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    goto/16 :goto_0

    .line 269
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
    .end sparse-switch

    .line 280
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 308
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 331
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 351
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 149
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->type:I

    if-eqz v0, :cond_0

    .line 150
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->type:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 152
    :cond_0
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    if-eqz v0, :cond_1

    .line 153
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 155
    :cond_1
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->rank:I

    if-eqz v0, :cond_2

    .line 156
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->rank:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 158
    :cond_2
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridX:I

    if-eqz v0, :cond_3

    .line 159
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridX:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 161
    :cond_3
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridY:I

    if-eqz v0, :cond_4

    .line 162
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridY:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 164
    :cond_4
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    if-eqz v0, :cond_5

    .line 165
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 167
    :cond_5
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->cardinality:I

    if-eqz v0, :cond_6

    .line 168
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->cardinality:I

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 170
    :cond_6
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->controlType:I

    if-eqz v0, :cond_7

    .line 171
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->controlType:I

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 173
    :cond_7
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    if-eqz v0, :cond_8

    .line 174
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 176
    :cond_8
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    if-eqz v0, :cond_9

    .line 177
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 179
    :cond_9
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->componentHash:I

    if-eqz v0, :cond_a

    .line 180
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->componentHash:I

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 182
    :cond_a
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->intentHash:I

    if-eqz v0, :cond_b

    .line 183
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->intentHash:I

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 185
    :cond_b
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanX:I

    if-eq v0, v2, :cond_c

    .line 186
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanX:I

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 188
    :cond_c
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanY:I

    if-eq v0, v2, :cond_d

    .line 189
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanY:I

    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 191
    :cond_d
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    if-eqz v0, :cond_e

    .line 192
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 194
    :cond_e
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 195
    return-void
.end method

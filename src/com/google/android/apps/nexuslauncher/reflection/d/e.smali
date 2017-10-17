.class public final Lcom/google/android/apps/nexuslauncher/reflection/d/e;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# instance fields
.field public ah:J

.field public ai:Ljava/lang/String;

.field public aj:J

.field public ak:J

.field public al:J

.field public am:Ljava/lang/String;

.field public an:Ljava/lang/String;

.field public ao:[Ljava/lang/String;

.field public ap:Ljava/lang/String;

.field public aq:Ljava/lang/String;

.field public ar:Lcom/google/android/apps/nexuslauncher/reflection/d/g;

.field public as:Lcom/google/android/apps/nexuslauncher/reflection/d/h;

.field public at:Lcom/google/android/apps/nexuslauncher/reflection/d/f;

.field public au:[Lcom/google/android/apps/nexuslauncher/reflection/d/i;

.field public duration:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->clear()Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    .line 72
    return-void
.end method

.method public static ae([B)Lcom/google/android/apps/nexuslauncher/reflection/d/e;
    .locals 1

    .prologue
    .line 355
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/d/e;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/a;->mergeFrom(Lcom/google/protobuf/nano/a;[B)Lcom/google/protobuf/nano/a;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    return-object v0
.end method

.method public static af(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/d/e;
    .locals 1

    .prologue
    .line 361
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/d/e;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/reflection/d/e;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 75
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->am:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ap:Ljava/lang/String;

    .line 77
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->an:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->aq:Ljava/lang/String;

    .line 79
    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ah:J

    .line 80
    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ak:J

    .line 81
    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->al:J

    .line 82
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ai:Ljava/lang/String;

    .line 83
    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->aj:J

    .line 84
    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->duration:J

    .line 85
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/d/i;->emptyArray()[Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->au:[Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    .line 86
    sget-object v0, Lcom/google/protobuf/nano/f;->PN:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ao:[Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->at:Lcom/google/android/apps/nexuslauncher/reflection/d/f;

    .line 88
    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ar:Lcom/google/android/apps/nexuslauncher/reflection/d/g;

    .line 89
    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->as:Lcom/google/android/apps/nexuslauncher/reflection/d/h;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->cachedSize:I

    .line 91
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 8

    .prologue
    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 157
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 158
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->am:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->am:Ljava/lang/String;

    .line 159
    invoke-static {v4, v2}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ap:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ap:Ljava/lang/String;

    const/4 v3, 0x2

    .line 163
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->an:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 168
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->an:Ljava/lang/String;

    const/4 v3, 0x3

    .line 167
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 170
    :cond_2
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->aq:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 172
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->aq:Ljava/lang/String;

    const/4 v3, 0x4

    .line 171
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 174
    :cond_3
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ah:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    .line 176
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ah:J

    const/4 v4, 0x5

    .line 175
    invoke-static {v4, v2, v3}, Lcom/google/protobuf/nano/b;->Vz(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 178
    :cond_4
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ak:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    .line 180
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ak:J

    const/4 v4, 0x6

    .line 179
    invoke-static {v4, v2, v3}, Lcom/google/protobuf/nano/b;->Vz(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 182
    :cond_5
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->al:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_6

    .line 184
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->al:J

    const/4 v4, 0x7

    .line 183
    invoke-static {v4, v2, v3}, Lcom/google/protobuf/nano/b;->Vz(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 186
    :cond_6
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ai:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 188
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ai:Ljava/lang/String;

    const/16 v3, 0x8

    .line 187
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 190
    :cond_7
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->aj:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_8

    .line 192
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->aj:J

    const/16 v4, 0x9

    .line 191
    invoke-static {v4, v2, v3}, Lcom/google/protobuf/nano/b;->Vz(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 194
    :cond_8
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->duration:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_9

    .line 196
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->duration:J

    const/16 v4, 0xa

    .line 195
    invoke-static {v4, v2, v3}, Lcom/google/protobuf/nano/b;->Vz(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 198
    :cond_9
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->au:[Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->au:[Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    array-length v2, v2

    if-lez v2, :cond_c

    move v2, v0

    move v0, v1

    .line 199
    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->au:[Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    array-length v3, v3

    if-ge v0, v3, :cond_b

    .line 200
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->au:[Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    aget-object v3, v3, v0

    .line 201
    if-eqz v3, :cond_a

    .line 203
    const/16 v4, 0xb

    .line 202
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v3

    add-int/2addr v2, v3

    .line 199
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_b
    move v0, v2

    .line 207
    :cond_c
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ao:[Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ao:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_f

    move v2, v1

    move v3, v1

    .line 210
    :goto_1
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ao:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_e

    .line 211
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ao:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 212
    if-eqz v4, :cond_d

    .line 213
    add-int/lit8 v3, v3, 0x1

    .line 214
    invoke-static {v4}, Lcom/google/protobuf/nano/b;->Vq(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 210
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 218
    :cond_e
    add-int/2addr v0, v2

    .line 219
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 221
    :cond_f
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->at:Lcom/google/android/apps/nexuslauncher/reflection/d/f;

    if-eqz v1, :cond_10

    .line 223
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->at:Lcom/google/android/apps/nexuslauncher/reflection/d/f;

    const/16 v2, 0xd

    .line 222
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ar:Lcom/google/android/apps/nexuslauncher/reflection/d/g;

    if-eqz v1, :cond_11

    .line 227
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ar:Lcom/google/android/apps/nexuslauncher/reflection/d/g;

    const/16 v2, 0xe

    .line 226
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    :cond_11
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->as:Lcom/google/android/apps/nexuslauncher/reflection/d/h;

    if-eqz v1, :cond_12

    .line 231
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->as:Lcom/google/android/apps/nexuslauncher/reflection/d/h;

    const/16 v2, 0xf

    .line 230
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    :cond_12
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/d/e;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 241
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 242
    sparse-switch v0, :sswitch_data_0

    .line 246
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    return-object p0

    .line 244
    :sswitch_0
    return-object p0

    .line 252
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->am:Ljava/lang/String;

    goto :goto_0

    .line 256
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ap:Ljava/lang/String;

    goto :goto_0

    .line 260
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->an:Ljava/lang/String;

    goto :goto_0

    .line 264
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->aq:Ljava/lang/String;

    goto :goto_0

    .line 268
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wz()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ah:J

    goto :goto_0

    .line 272
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wz()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ak:J

    goto :goto_0

    .line 276
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wz()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->al:J

    goto :goto_0

    .line 280
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ai:Ljava/lang/String;

    goto :goto_0

    .line 284
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wz()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->aj:J

    goto :goto_0

    .line 288
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wz()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->duration:J

    goto :goto_0

    .line 293
    :sswitch_b
    const/16 v0, 0x5a

    .line 292
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WN(Lcom/google/protobuf/nano/c;I)I

    move-result v2

    .line 294
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->au:[Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    if-nez v0, :cond_2

    move v0, v1

    .line 296
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    .line 297
    if-eqz v0, :cond_1

    .line 298
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->au:[Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 301
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/d/i;-><init>()V

    aput-object v3, v2, v0

    .line 302
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    .line 303
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->au:[Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    array-length v0, v0

    goto :goto_1

    .line 306
    :cond_3
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/d/i;-><init>()V

    aput-object v3, v2, v0

    .line 307
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    .line 308
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->au:[Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    goto/16 :goto_0

    .line 313
    :sswitch_c
    const/16 v0, 0x62

    .line 312
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WN(Lcom/google/protobuf/nano/c;I)I

    move-result v2

    .line 314
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ao:[Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    .line 315
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 316
    if-eqz v0, :cond_4

    .line 317
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ao:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 320
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 321
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 314
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ao:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_3

    .line 324
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 325
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ao:[Ljava/lang/String;

    goto/16 :goto_0

    .line 329
    :sswitch_d
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->at:Lcom/google/android/apps/nexuslauncher/reflection/d/f;

    if-nez v0, :cond_7

    .line 330
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/d/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->at:Lcom/google/android/apps/nexuslauncher/reflection/d/f;

    .line 332
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->at:Lcom/google/android/apps/nexuslauncher/reflection/d/f;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    goto/16 :goto_0

    .line 336
    :sswitch_e
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ar:Lcom/google/android/apps/nexuslauncher/reflection/d/g;

    if-nez v0, :cond_8

    .line 337
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/d/g;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/d/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ar:Lcom/google/android/apps/nexuslauncher/reflection/d/g;

    .line 339
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ar:Lcom/google/android/apps/nexuslauncher/reflection/d/g;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    goto/16 :goto_0

    .line 343
    :sswitch_f
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->as:Lcom/google/android/apps/nexuslauncher/reflection/d/h;

    if-nez v0, :cond_9

    .line 344
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/d/h;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/d/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->as:Lcom/google/android/apps/nexuslauncher/reflection/d/h;

    .line 346
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->as:Lcom/google/android/apps/nexuslauncher/reflection/d/h;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    goto/16 :goto_0

    .line 242
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->am:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->am:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ap:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ap:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->an:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->an:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->aq:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->aq:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 109
    :cond_3
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ah:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    .line 110
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ah:J

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->Wc(IJ)V

    .line 112
    :cond_4
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ak:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    .line 113
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ak:J

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->Wc(IJ)V

    .line 115
    :cond_5
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->al:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    .line 116
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->al:J

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->Wc(IJ)V

    .line 118
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ai:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ai:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 121
    :cond_7
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->aj:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_8

    .line 122
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->aj:J

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->Wc(IJ)V

    .line 124
    :cond_8
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->duration:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_9

    .line 125
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->duration:J

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->Wc(IJ)V

    .line 127
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->au:[Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->au:[Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    array-length v0, v0

    if-lez v0, :cond_b

    move v0, v1

    .line 128
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->au:[Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    array-length v2, v2

    if-ge v0, v2, :cond_b

    .line 129
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->au:[Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    aget-object v2, v2, v0

    .line 130
    if-eqz v2, :cond_a

    .line 131
    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 128
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ao:[Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ao:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_d

    .line 136
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ao:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_d

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ao:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 138
    if-eqz v0, :cond_c

    .line 139
    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 136
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->at:Lcom/google/android/apps/nexuslauncher/reflection/d/f;

    if-eqz v0, :cond_e

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->at:Lcom/google/android/apps/nexuslauncher/reflection/d/f;

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 146
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ar:Lcom/google/android/apps/nexuslauncher/reflection/d/g;

    if-eqz v0, :cond_f

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ar:Lcom/google/android/apps/nexuslauncher/reflection/d/g;

    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 149
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->as:Lcom/google/android/apps/nexuslauncher/reflection/d/h;

    if-eqz v0, :cond_10

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->as:Lcom/google/android/apps/nexuslauncher/reflection/d/h;

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 152
    :cond_10
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 153
    return-void
.end method

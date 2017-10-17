.class public final Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# static fields
.field private static volatile _emptyArray:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;


# instance fields
.field public component:Ljava/lang/String;

.field public containerType:I

.field public gridX:I

.field public gridY:I

.field public itemId:Ljava/lang/String;

.field public itemType:I

.field public packageName:Ljava/lang/String;

.field public pageId:I

.field public spanX:I

.field public spanY:I

.field public type:I

.field public userType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 91
    invoke-virtual {p0}, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->clear()Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    .line 92
    return-void
.end method

.method public static emptyArray()[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->_emptyArray:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    if-nez v0, :cond_1

    .line 44
    sget-object v1, Lcom/google/protobuf/nano/d;->PH:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->_emptyArray:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    sput-object v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->_emptyArray:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 51
    :cond_1
    sget-object v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->_emptyArray:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 95
    iput v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->type:I

    .line 96
    iput v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->pageId:I

    .line 97
    iput v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridX:I

    .line 98
    iput v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridY:I

    .line 99
    iput v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->containerType:I

    .line 100
    iput v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemType:I

    .line 101
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->packageName:Ljava/lang/String;

    .line 102
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->component:Ljava/lang/String;

    .line 103
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemId:Ljava/lang/String;

    .line 104
    iput v2, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanX:I

    .line 105
    iput v2, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanY:I

    .line 106
    iput v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->userType:I

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->cachedSize:I

    .line 108
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 155
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 156
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->type:I

    if-eqz v1, :cond_0

    .line 158
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->type:I

    .line 157
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_0
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->pageId:I

    if-eqz v1, :cond_1

    .line 162
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->pageId:I

    const/4 v2, 0x2

    .line 161
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    :cond_1
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridX:I

    if-eqz v1, :cond_2

    .line 166
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridX:I

    const/4 v2, 0x3

    .line 165
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    :cond_2
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridY:I

    if-eqz v1, :cond_3

    .line 170
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridY:I

    const/4 v2, 0x4

    .line 169
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    :cond_3
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->containerType:I

    if-eqz v1, :cond_4

    .line 174
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->containerType:I

    const/4 v2, 0x5

    .line 173
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 176
    :cond_4
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemType:I

    if-eqz v1, :cond_5

    .line 178
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemType:I

    const/4 v2, 0x6

    .line 177
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 180
    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->packageName:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 182
    iget-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->packageName:Ljava/lang/String;

    const/4 v2, 0x7

    .line 181
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 184
    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->component:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 186
    iget-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->component:Ljava/lang/String;

    const/16 v2, 0x8

    .line 185
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 188
    :cond_7
    iget-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemId:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 190
    iget-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemId:Ljava/lang/String;

    const/16 v2, 0x9

    .line 189
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 192
    :cond_8
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanX:I

    if-eq v1, v3, :cond_9

    .line 194
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanX:I

    const/16 v2, 0xa

    .line 193
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 196
    :cond_9
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanY:I

    if-eq v1, v3, :cond_a

    .line 198
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanY:I

    const/16 v2, 0xb

    .line 197
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 200
    :cond_a
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->userType:I

    if-eqz v1, :cond_b

    .line 202
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->userType:I

    const/16 v2, 0xc

    .line 201
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 204
    :cond_b
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;
    .locals 1

    .prologue
    .line 212
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 213
    sparse-switch v0, :sswitch_data_0

    .line 217
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    return-object p0

    .line 215
    :sswitch_0
    return-object p0

    .line 223
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    .line 224
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 228
    :pswitch_0
    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->type:I

    goto :goto_0

    .line 234
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->pageId:I

    goto :goto_0

    .line 238
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridX:I

    goto :goto_0

    .line 242
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridY:I

    goto :goto_0

    .line 246
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    .line 247
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 252
    :pswitch_1
    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->containerType:I

    goto :goto_0

    .line 258
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    .line 259
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 264
    :pswitch_2
    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemType:I

    goto :goto_0

    .line 270
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 274
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->component:Ljava/lang/String;

    goto :goto_0

    .line 278
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemId:Ljava/lang/String;

    goto :goto_0

    .line 282
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanX:I

    goto :goto_0

    .line 286
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanY:I

    goto :goto_0

    .line 290
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    .line 291
    packed-switch v0, :pswitch_data_3

    goto :goto_0

    .line 294
    :pswitch_3
    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->userType:I

    goto :goto_0

    .line 213
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
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
    .end sparse-switch

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 247
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 259
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 291
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 114
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->type:I

    if-eqz v0, :cond_0

    .line 115
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->type:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 117
    :cond_0
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->pageId:I

    if-eqz v0, :cond_1

    .line 118
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->pageId:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 120
    :cond_1
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridX:I

    if-eqz v0, :cond_2

    .line 121
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridX:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 123
    :cond_2
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridY:I

    if-eqz v0, :cond_3

    .line 124
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridY:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 126
    :cond_3
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->containerType:I

    if-eqz v0, :cond_4

    .line 127
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->containerType:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 129
    :cond_4
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemType:I

    if-eqz v0, :cond_5

    .line 130
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemType:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->packageName:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 133
    iget-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->packageName:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 135
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->component:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->component:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 138
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemId:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemId:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 141
    :cond_8
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanX:I

    if-eq v0, v2, :cond_9

    .line 142
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanX:I

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 144
    :cond_9
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanY:I

    if-eq v0, v2, :cond_a

    .line 145
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanY:I

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 147
    :cond_a
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->userType:I

    if-eqz v0, :cond_b

    .line 148
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->userType:I

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 150
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 151
    return-void
.end method

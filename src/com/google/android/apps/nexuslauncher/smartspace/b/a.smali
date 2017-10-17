.class public final Lcom/google/android/apps/nexuslauncher/smartspace/b/a;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# instance fields
.field public cw:[Lcom/google/android/apps/nexuslauncher/smartspace/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1086
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 1087
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/b/a;->clear()Lcom/google/android/apps/nexuslauncher/smartspace/b/a;

    .line 1088
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/smartspace/b/a;
    .locals 1

    .prologue
    .line 1091
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->emptyArray()[Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/a;->cw:[Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    .line 1092
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/a;->cachedSize:I

    .line 1093
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1112
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v1

    .line 1113
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/a;->cw:[Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/a;->cw:[Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 1114
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/a;->cw:[Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1115
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/a;->cw:[Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    aget-object v2, v2, v0

    .line 1116
    if-eqz v2, :cond_0

    .line 1118
    const/4 v3, 0x1

    .line 1117
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1122
    :cond_1
    return v1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/smartspace/b/a;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1130
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 1131
    sparse-switch v0, :sswitch_data_0

    .line 1135
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1136
    return-object p0

    .line 1133
    :sswitch_0
    return-object p0

    .line 1142
    :sswitch_1
    const/16 v0, 0xa

    .line 1141
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WN(Lcom/google/protobuf/nano/c;I)I

    move-result v2

    .line 1143
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/a;->cw:[Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    if-nez v0, :cond_2

    move v0, v1

    .line 1145
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    .line 1146
    if-eqz v0, :cond_1

    .line 1147
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/a;->cw:[Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1149
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1150
    new-instance v3, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;-><init>()V

    aput-object v3, v2, v0

    .line 1151
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    .line 1152
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    .line 1149
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1143
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/a;->cw:[Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    array-length v0, v0

    goto :goto_1

    .line 1155
    :cond_3
    new-instance v3, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;-><init>()V

    aput-object v3, v2, v0

    .line 1156
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    .line 1157
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/a;->cw:[Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    goto :goto_0

    .line 1131
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 1125
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/b/a;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/smartspace/b/a;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1099
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/a;->cw:[Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/a;->cw:[Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 1100
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/a;->cw:[Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1101
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/a;->cw:[Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    aget-object v1, v1, v0

    .line 1102
    if-eqz v1, :cond_0

    .line 1103
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 1100
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1107
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 1108
    return-void
.end method

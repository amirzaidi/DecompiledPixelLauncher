.class public final Lcom/google/android/apps/nexuslauncher/smartspace/b/e;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# static fields
.field private static volatile cT:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;


# instance fields
.field public cQ:I

.field public cR:Ljava/lang/String;

.field public cS:I

.field public cU:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->clear()Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    .line 85
    return-void
.end method

.method public static emptyArray()[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cT:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    if-nez v0, :cond_1

    .line 61
    sget-object v1, Lcom/google/protobuf/nano/d;->PH:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cT:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    sput-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cT:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 68
    :cond_1
    sget-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cT:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/smartspace/b/e;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cR:Ljava/lang/String;

    .line 89
    iput v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cS:I

    .line 90
    iput v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cQ:I

    .line 91
    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cU:Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cachedSize:I

    .line 93
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 116
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cR:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cR:Ljava/lang/String;

    const/4 v2, 0x1

    .line 118
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    :cond_0
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cS:I

    if-eqz v1, :cond_1

    .line 123
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cS:I

    const/4 v2, 0x2

    .line 122
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_1
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cQ:I

    if-eqz v1, :cond_2

    .line 127
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cQ:I

    const/4 v2, 0x3

    .line 126
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cU:Z

    if-eqz v1, :cond_3

    .line 131
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cU:Z

    const/4 v2, 0x4

    .line 130
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VL(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/smartspace/b/e;
    .locals 1

    .prologue
    .line 141
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 142
    sparse-switch v0, :sswitch_data_0

    .line 146
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    return-object p0

    .line 144
    :sswitch_0
    return-object p0

    .line 152
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cR:Ljava/lang/String;

    goto :goto_0

    .line 156
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    .line 157
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 162
    :pswitch_0
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cS:I

    goto :goto_0

    .line 168
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    .line 169
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 174
    :pswitch_1
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cQ:I

    goto :goto_0

    .line 180
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cU:Z

    goto :goto_0

    .line 142
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 169
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cR:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cR:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 102
    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cS:I

    if-eqz v0, :cond_1

    .line 103
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cS:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 105
    :cond_1
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cQ:I

    if-eqz v0, :cond_2

    .line 106
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cQ:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 108
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cU:Z

    if-eqz v0, :cond_3

    .line 109
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cU:Z

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VG(IZ)V

    .line 111
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 112
    return-void
.end method

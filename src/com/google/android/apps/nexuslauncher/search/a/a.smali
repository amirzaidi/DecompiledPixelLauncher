.class public final Lcom/google/android/apps/nexuslauncher/search/a/a;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# instance fields
.field public ee:I

.field public ef:I

.field public eg:I

.field public eh:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 38
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/a/a;->clear()Lcom/google/android/apps/nexuslauncher/search/a/a;

    .line 39
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/search/a/a;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->ef:I

    .line 43
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->eg:I

    .line 44
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->eh:I

    .line 45
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->ee:I

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->cachedSize:I

    .line 47
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 70
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 71
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->ef:I

    if-eqz v1, :cond_0

    .line 73
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->ef:I

    const/4 v2, 0x1

    .line 72
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    :cond_0
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->eg:I

    if-eqz v1, :cond_1

    .line 77
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->eg:I

    const/4 v2, 0x2

    .line 76
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    :cond_1
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->eh:I

    if-eqz v1, :cond_2

    .line 81
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->eh:I

    const/4 v2, 0x3

    .line 80
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_2
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->ee:I

    if-eqz v1, :cond_3

    .line 85
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->ee:I

    const/4 v2, 0x4

    .line 84
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/search/a/a;
    .locals 1

    .prologue
    .line 95
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 96
    sparse-switch v0, :sswitch_data_0

    .line 100
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    return-object p0

    .line 98
    :sswitch_0
    return-object p0

    .line 106
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->ef:I

    goto :goto_0

    .line 110
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->eg:I

    goto :goto_0

    .line 114
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->eh:I

    goto :goto_0

    .line 118
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->ee:I

    goto :goto_0

    .line 96
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/search/a/a;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/search/a/a;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->ef:I

    if-eqz v0, :cond_0

    .line 54
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->ef:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 56
    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->eg:I

    if-eqz v0, :cond_1

    .line 57
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->eg:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 59
    :cond_1
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->eh:I

    if-eqz v0, :cond_2

    .line 60
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->eh:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 62
    :cond_2
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->ee:I

    if-eqz v0, :cond_3

    .line 63
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/a;->ee:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 65
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 66
    return-void
.end method

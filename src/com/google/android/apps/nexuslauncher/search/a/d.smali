.class public final Lcom/google/android/apps/nexuslauncher/search/a/d;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# instance fields
.field public eB:Lcom/google/android/apps/nexuslauncher/search/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 619
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/a/d;->clear()Lcom/google/android/apps/nexuslauncher/search/a/d;

    .line 620
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/search/a/d;
    .locals 1

    .prologue
    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->eB:Lcom/google/android/apps/nexuslauncher/search/a/c;

    .line 624
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->cachedSize:I

    .line 625
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 639
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 640
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->eB:Lcom/google/android/apps/nexuslauncher/search/a/c;

    if-eqz v1, :cond_0

    .line 642
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->eB:Lcom/google/android/apps/nexuslauncher/search/a/c;

    const/4 v2, 0x1

    .line 641
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 644
    :cond_0
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/search/a/d;
    .locals 1

    .prologue
    .line 652
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 653
    sparse-switch v0, :sswitch_data_0

    .line 657
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    return-object p0

    .line 655
    :sswitch_0
    return-object p0

    .line 663
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->eB:Lcom/google/android/apps/nexuslauncher/search/a/c;

    if-nez v0, :cond_1

    .line 664
    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/a/c;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/search/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->eB:Lcom/google/android/apps/nexuslauncher/search/a/c;

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->eB:Lcom/google/android/apps/nexuslauncher/search/a/c;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    goto :goto_0

    .line 653
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 647
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/search/a/d;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/search/a/d;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->eB:Lcom/google/android/apps/nexuslauncher/search/a/c;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->eB:Lcom/google/android/apps/nexuslauncher/search/a/c;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 634
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 635
    return-void
.end method

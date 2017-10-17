.class public Landroid/support/v4/app/a;
.super Landroid/support/v4/app/x;
.source "SourceFile"


# instance fields
.field XD:Z

.field XE:Z

.field XF:Landroid/support/v4/a/a;

.field XG:Z

.field final XH:Landroid/support/v4/app/J;

.field XI:Z

.field XJ:I

.field final mHandler:Landroid/os/Handler;

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 65
    invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V

    .line 79
    new-instance v0, Landroid/support/v4/app/h;

    invoke-direct {v0, p0}, Landroid/support/v4/app/h;-><init>(Landroid/support/v4/app/a;)V

    iput-object v0, p0, Landroid/support/v4/app/a;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Landroid/support/v4/app/u;

    invoke-direct {v0, p0}, Landroid/support/v4/app/u;-><init>(Landroid/support/v4/app/a;)V

    invoke-static {v0}, Landroid/support/v4/app/J;->amA(Landroid/support/v4/app/r;)Landroid/support/v4/app/J;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    .line 102
    iput-boolean v1, p0, Landroid/support/v4/app/a;->mStopped:Z

    .line 103
    iput-boolean v1, p0, Landroid/support/v4/app/a;->XG:Z

    .line 860
    return-void
.end method

.method private ajn(Landroid/support/v4/app/g;)I
    .locals 4

    .prologue
    const v3, 0xfffe

    .line 822
    iget-object v0, p0, Landroid/support/v4/app/a;->XF:Landroid/support/v4/a/a;

    invoke-virtual {v0}, Landroid/support/v4/a/a;->size()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 827
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/a;->XF:Landroid/support/v4/a/a;

    iget v1, p0, Landroid/support/v4/app/a;->XJ:I

    invoke-virtual {v0, v1}, Landroid/support/v4/a/a;->ahR(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 832
    iget v0, p0, Landroid/support/v4/app/a;->XJ:I

    .line 833
    iget-object v1, p0, Landroid/support/v4/app/a;->XF:Landroid/support/v4/a/a;

    iget-object v2, p1, Landroid/support/v4/app/g;->XV:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/a/a;->ahS(ILjava/lang/Object;)V

    .line 834
    iget v1, p0, Landroid/support/v4/app/a;->XJ:I

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v3

    iput v1, p0, Landroid/support/v4/app/a;->XJ:I

    .line 837
    return v0

    .line 823
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Too many pending Fragment activity results."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 828
    :cond_1
    iget v0, p0, Landroid/support/v4/app/a;->XJ:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v3

    iput v0, p0, Landroid/support/v4/app/a;->XJ:I

    goto :goto_0
.end method


# virtual methods
.method public ajf()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    return-object v0
.end method

.method ajg(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 643
    iget-boolean v0, p0, Landroid/support/v4/app/a;->XG:Z

    if-eqz v0, :cond_0

    .line 648
    if-nez p1, :cond_1

    .line 656
    :goto_0
    return-void

    .line 644
    :cond_0
    iput-boolean v1, p0, Landroid/support/v4/app/a;->XG:Z

    .line 645
    iput-boolean p1, p0, Landroid/support/v4/app/a;->XE:Z

    .line 646
    iget-object v0, p0, Landroid/support/v4/app/a;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 647
    invoke-virtual {p0}, Landroid/support/v4/app/a;->ajo()V

    goto :goto_0

    .line 653
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->alX()V

    .line 654
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/J;->alY(Z)V

    goto :goto_0
.end method

.method public ajh()V
    .locals 0

    .prologue
    .line 613
    invoke-virtual {p0}, Landroid/support/v4/app/a;->invalidateOptionsMenu()V

    .line 614
    return-void
.end method

.method public aji()Landroid/support/v4/app/aW;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->amm()Landroid/support/v4/app/aW;

    move-result-object v0

    return-object v0
.end method

.method protected ajj(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/support/v4/app/x;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected ajk()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->amw()V

    .line 464
    return-void
.end method

.method public ajl(Landroid/support/v4/app/g;)V
    .locals 0

    .prologue
    .line 684
    return-void
.end method

.method final ajm(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/J;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method ajo()V
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    iget-boolean v1, p0, Landroid/support/v4/app/a;->XE:Z

    invoke-virtual {v0, v1}, Landroid/support/v4/app/J;->alY(Z)V

    .line 668
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->ams()V

    .line 669
    return-void
.end method

.method public ajp(Landroid/support/v4/app/g;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 781
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/a;->Zz:Z

    .line 783
    if-eq p3, v1, :cond_0

    .line 787
    :try_start_0
    invoke-static {p3}, Landroid/support/v4/app/a;->amC(I)V

    .line 788
    invoke-direct {p0, p1}, Landroid/support/v4/app/a;->ajn(Landroid/support/v4/app/g;)I

    move-result v0

    .line 789
    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-static {p0, p2, v0, p4}, Landroid/support/v4/app/b;->ajq(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    iput-boolean v2, p0, Landroid/support/v4/app/a;->Zz:Z

    .line 794
    return-void

    .line 784
    :cond_0
    const/4 v0, -0x1

    :try_start_1
    invoke-static {p0, p2, v0, p4}, Landroid/support/v4/app/b;->ajq(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
    iput-boolean v2, p0, Landroid/support/v4/app/a;->Zz:Z

    .line 785
    return-void

    .line 792
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroid/support/v4/app/a;->Zz:Z

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 628
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/x;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 629
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 630
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 631
    const-string/jumbo v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 633
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 634
    iget-boolean v1, p0, Landroid/support/v4/app/a;->XD:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 635
    iget-boolean v1, p0, Landroid/support/v4/app/a;->XI:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 636
    iget-boolean v1, p0, Landroid/support/v4/app/a;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 637
    iget-boolean v1, p0, Landroid/support/v4/app/a;->XG:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 638
    iget-object v1, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/support/v4/app/J;->aml(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->amm()Landroid/support/v4/app/aW;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/aW;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 640
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->amp()V

    .line 135
    shr-int/lit8 v0, p1, 0x10

    .line 136
    if-nez v0, :cond_0

    .line 154
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/x;->onActivityResult(IILandroid/content/Intent;)V

    .line 155
    return-void

    .line 137
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 139
    iget-object v0, p0, Landroid/support/v4/app/a;->XF:Landroid/support/v4/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/a;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    iget-object v2, p0, Landroid/support/v4/app/a;->XF:Landroid/support/v4/a/a;

    invoke-virtual {v2, v1}, Landroid/support/v4/a/a;->ahP(I)V

    .line 141
    if-eqz v0, :cond_1

    .line 145
    iget-object v1, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/J;->alZ(Ljava/lang/String;)Landroid/support/v4/app/g;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_2

    .line 149
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-virtual {v1, v0, p2, p3}, Landroid/support/v4/app/g;->onActivityResult(IILandroid/content/Intent;)V

    .line 151
    :goto_0
    return-void

    .line 142
    :cond_1
    const-string/jumbo v0, "FragmentActivity"

    const-string/jumbo v1, "Activity result delivered for unknown Fragment."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void

    .line 147
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity result no fragment exists for who: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->amm()Landroid/support/v4/app/aW;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/support/v4/app/aW;->aqT()Z

    move-result v1

    .line 165
    if-nez v1, :cond_2

    .line 172
    :cond_0
    if-eqz v1, :cond_3

    .line 173
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/x;->onBackPressed()V

    .line 175
    :goto_0
    return-void

    .line 165
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v2, v3, :cond_0

    .line 170
    return-void

    .line 172
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/aW;->apn()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 266
    invoke-super {p0, p1}, Landroid/support/v4/app/x;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 267
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/J;->amx(Landroid/content/res/Configuration;)V

    .line 268
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 276
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/J;->amk(Landroid/support/v4/app/g;)V

    .line 278
    invoke-super {p0, p1}, Landroid/support/v4/app/x;->onCreate(Landroid/os/Bundle;)V

    .line 281
    invoke-virtual {p0}, Landroid/support/v4/app/a;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/v;

    .line 282
    if-nez v0, :cond_1

    .line 285
    :goto_0
    if-nez p1, :cond_2

    .line 307
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/a;->XF:Landroid/support/v4/a/a;

    if-eqz v0, :cond_6

    .line 312
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->amh()V

    .line 313
    return-void

    .line 283
    :cond_1
    iget-object v3, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    iget-object v4, v0, Landroid/support/v4/app/v;->Zx:Landroid/support/v4/a/b;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/J;->ame(Landroid/support/v4/a/b;)V

    goto :goto_0

    .line 286
    :cond_2
    const-string/jumbo v3, "android:support:fragments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 287
    iget-object v4, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_3
    invoke-virtual {v4, v3, v0}, Landroid/support/v4/app/J;->amv(Landroid/os/Parcelable;Landroid/support/v4/app/ax;)V

    .line 290
    const-string/jumbo v0, "android:support:next_request_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const-string/jumbo v0, "android:support:next_request_index"

    .line 292
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/a;->XJ:I

    .line 293
    const-string/jumbo v0, "android:support:request_indicies"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 294
    const-string/jumbo v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 295
    if-nez v1, :cond_5

    .line 297
    :cond_3
    const-string/jumbo v0, "FragmentActivity"

    const-string/jumbo v1, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 287
    :cond_4
    iget-object v0, v0, Landroid/support/v4/app/v;->Zw:Landroid/support/v4/app/ax;

    goto :goto_3

    .line 295
    :cond_5
    if-eqz v3, :cond_3

    array-length v0, v1

    array-length v4, v3

    if-ne v0, v4, :cond_3

    .line 299
    new-instance v0, Landroid/support/v4/a/a;

    array-length v4, v1

    invoke-direct {v0, v4}, Landroid/support/v4/a/a;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/a;->XF:Landroid/support/v4/a/a;

    move v0, v2

    .line 300
    :goto_4
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 301
    iget-object v4, p0, Landroid/support/v4/app/a;->XF:Landroid/support/v4/a/a;

    aget v5, v1, v0

    aget-object v6, v3, v0

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/a/a;->ahS(ILjava/lang/Object;)V

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 308
    :cond_6
    new-instance v0, Landroid/support/v4/a/a;

    invoke-direct {v0}, Landroid/support/v4/a/a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/a;->XF:Landroid/support/v4/a/a;

    .line 309
    iput v2, p0, Landroid/support/v4/app/a;->XJ:I

    goto :goto_2
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 320
    if-eqz p1, :cond_0

    .line 325
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/x;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0

    .line 321
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/x;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 322
    iget-object v1, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {p0}, Landroid/support/v4/app/a;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/J;->amg(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 323
    return v0
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/x;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/x;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 339
    invoke-super {p0}, Landroid/support/v4/app/x;->onDestroy()V

    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/a;->ajg(Z)V

    .line 343
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->amo()V

    .line 344
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->amb()V

    .line 345
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 352
    invoke-super {p0}, Landroid/support/v4/app/x;->onLowMemory()V

    .line 353
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->amu()V

    .line 354
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 361
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/x;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    sparse-switch p1, :sswitch_data_0

    .line 373
    return v1

    .line 362
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 367
    :sswitch_0
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/J;->amj(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 370
    :sswitch_1
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/J;->amd(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 365
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/J;->amz(Z)V

    .line 244
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 416
    invoke-super {p0, p1}, Landroid/support/v4/app/x;->onNewIntent(Landroid/content/Intent;)V

    .line 417
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->amp()V

    .line 418
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .prologue
    .line 382
    packed-switch p1, :pswitch_data_0

    .line 387
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/x;->onPanelClosed(ILandroid/view/Menu;)V

    .line 388
    return-void

    .line 384
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/J;->alV(Landroid/view/Menu;)V

    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 395
    invoke-super {p0}, Landroid/support/v4/app/x;->onPause()V

    .line 396
    iput-boolean v0, p0, Landroid/support/v4/app/a;->XI:Z

    .line 397
    iget-object v0, p0, Landroid/support/v4/app/a;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->amf()V

    .line 402
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/a;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 399
    invoke-virtual {p0}, Landroid/support/v4/app/a;->ajk()V

    goto :goto_0
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/J;->alU(Z)V

    .line 259
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 450
    invoke-super {p0}, Landroid/support/v4/app/x;->onPostResume()V

    .line 451
    iget-object v0, p0, Landroid/support/v4/app/a;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    invoke-virtual {p0}, Landroid/support/v4/app/a;->ajk()V

    .line 453
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->amy()Z

    .line 454
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 471
    if-eqz p1, :cond_1

    .line 476
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/x;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 471
    :cond_1
    if-eqz p3, :cond_0

    .line 472
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/a;->ajj(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 473
    iget-object v1, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v1, p3}, Landroid/support/v4/app/J;->amc(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 474
    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .prologue
    const v3, 0xffff

    .line 749
    shr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v3

    .line 750
    if-nez v0, :cond_0

    .line 766
    :goto_0
    return-void

    .line 751
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 753
    iget-object v0, p0, Landroid/support/v4/app/a;->XF:Landroid/support/v4/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/a;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 754
    iget-object v2, p0, Landroid/support/v4/app/a;->XF:Landroid/support/v4/a/a;

    invoke-virtual {v2, v1}, Landroid/support/v4/a/a;->ahP(I)V

    .line 755
    if-eqz v0, :cond_1

    .line 759
    iget-object v1, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/J;->alZ(Ljava/lang/String;)Landroid/support/v4/app/g;

    move-result-object v1

    .line 760
    if-eqz v1, :cond_2

    .line 763
    and-int v0, p1, v3

    invoke-virtual {v1, v0, p2, p3}, Landroid/support/v4/app/g;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 756
    :cond_1
    const-string/jumbo v0, "FragmentActivity"

    const-string/jumbo v1, "Activity result delivered for unknown Fragment."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    return-void

    .line 761
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity result no fragment exists for who: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 439
    invoke-super {p0}, Landroid/support/v4/app/x;->onResume()V

    .line 440
    iget-object v0, p0, Landroid/support/v4/app/a;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/a;->XI:Z

    .line 442
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->amy()Z

    .line 443
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 494
    iget-boolean v0, p0, Landroid/support/v4/app/a;->mStopped:Z

    if-nez v0, :cond_1

    .line 498
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/a;->ajf()Ljava/lang/Object;

    move-result-object v0

    .line 500
    iget-object v1, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v1}, Landroid/support/v4/app/J;->amr()Landroid/support/v4/app/ax;

    move-result-object v1

    .line 501
    iget-object v2, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v2}, Landroid/support/v4/app/J;->ama()Landroid/support/v4/a/b;

    move-result-object v2

    .line 503
    if-eqz v1, :cond_2

    .line 507
    :cond_0
    new-instance v3, Landroid/support/v4/app/v;

    invoke-direct {v3}, Landroid/support/v4/app/v;-><init>()V

    .line 508
    iput-object v0, v3, Landroid/support/v4/app/v;->Zy:Ljava/lang/Object;

    .line 509
    iput-object v1, v3, Landroid/support/v4/app/v;->Zw:Landroid/support/v4/app/ax;

    .line 510
    iput-object v2, v3, Landroid/support/v4/app/v;->Zx:Landroid/support/v4/a/b;

    .line 511
    return-object v3

    .line 495
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/a;->ajg(Z)V

    goto :goto_0

    .line 503
    :cond_2
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 504
    return-object v3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 519
    invoke-super {p0, p1}, Landroid/support/v4/app/x;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 520
    iget-object v1, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v1}, Landroid/support/v4/app/J;->amn()Landroid/os/Parcelable;

    move-result-object v1

    .line 521
    if-nez v1, :cond_0

    .line 524
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/a;->XF:Landroid/support/v4/a/a;

    invoke-virtual {v1}, Landroid/support/v4/a/a;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 536
    :goto_1
    return-void

    .line 522
    :cond_0
    const-string/jumbo v2, "android:support:fragments"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 525
    :cond_1
    iget v1, p0, Landroid/support/v4/app/a;->XJ:I

    const-string/jumbo v2, "android:support:next_request_index"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 527
    iget-object v1, p0, Landroid/support/v4/app/a;->XF:Landroid/support/v4/a/a;

    invoke-virtual {v1}, Landroid/support/v4/a/a;->size()I

    move-result v1

    new-array v2, v1, [I

    .line 528
    iget-object v1, p0, Landroid/support/v4/app/a;->XF:Landroid/support/v4/a/a;

    invoke-virtual {v1}, Landroid/support/v4/a/a;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    move v1, v0

    .line 529
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/a;->XF:Landroid/support/v4/a/a;

    invoke-virtual {v0}, Landroid/support/v4/a/a;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 533
    const-string/jumbo v0, "android:support:request_indicies"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 534
    const-string/jumbo v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 530
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/a;->XF:Landroid/support/v4/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/a;->ahQ(I)I

    move-result v0

    aput v0, v2, v1

    .line 531
    iget-object v0, p0, Landroid/support/v4/app/a;->XF:Landroid/support/v4/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/a;->ahO(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    .line 529
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method protected onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 544
    invoke-super {p0}, Landroid/support/v4/app/x;->onStart()V

    .line 546
    iput-boolean v0, p0, Landroid/support/v4/app/a;->mStopped:Z

    .line 547
    iput-boolean v0, p0, Landroid/support/v4/app/a;->XG:Z

    .line 548
    iget-object v0, p0, Landroid/support/v4/app/a;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    iget-boolean v0, p0, Landroid/support/v4/app/a;->XD:Z

    if-eqz v0, :cond_0

    .line 555
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->amp()V

    .line 556
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->amy()Z

    .line 558
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->alX()V

    .line 562
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->alW()V

    .line 563
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->amq()V

    .line 564
    return-void

    .line 551
    :cond_0
    iput-boolean v1, p0, Landroid/support/v4/app/a;->XD:Z

    .line 552
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->amt()V

    goto :goto_0
.end method

.method public onStateNotSaved()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->amp()V

    .line 426
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 571
    invoke-super {p0}, Landroid/support/v4/app/x;->onStop()V

    .line 573
    iput-boolean v1, p0, Landroid/support/v4/app/a;->mStopped:Z

    .line 574
    iget-object v0, p0, Landroid/support/v4/app/a;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 576
    iget-object v0, p0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->ami()V

    .line 577
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 706
    iget-boolean v0, p0, Landroid/support/v4/app/a;->Zz:Z

    if-eqz v0, :cond_1

    .line 711
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/x;->startActivityForResult(Landroid/content/Intent;I)V

    .line 712
    return-void

    .line 707
    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 708
    invoke-static {p2}, Landroid/support/v4/app/a;->amC(I)V

    goto :goto_0
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/x;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 0

    .prologue
    .line 65
    invoke-super/range {p0 .. p6}, Landroid/support/v4/app/x;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 65
    invoke-super/range {p0 .. p7}, Landroid/support/v4/app/x;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

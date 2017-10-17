.class Landroid/support/v4/app/aU;
.super Landroid/support/v4/app/F;
.source "SourceFile"


# static fields
.field static DEBUG:Z


# instance fields
.field aek:Landroid/support/v4/app/r;

.field final ael:Landroid/support/v4/a/a;

.field final aem:Ljava/lang/String;

.field aen:Z

.field final aeo:Landroid/support/v4/a/a;

.field mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/aU;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/support/v4/app/r;Z)V
    .locals 1

    .prologue
    .line 526
    invoke-direct {p0}, Landroid/support/v4/app/F;-><init>()V

    .line 194
    new-instance v0, Landroid/support/v4/a/a;

    invoke-direct {v0}, Landroid/support/v4/a/a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aU;->aeo:Landroid/support/v4/a/a;

    .line 200
    new-instance v0, Landroid/support/v4/a/a;

    invoke-direct {v0}, Landroid/support/v4/a/a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aU;->ael:Landroid/support/v4/a/a;

    .line 527
    iput-object p1, p0, Landroid/support/v4/app/aU;->aem:Ljava/lang/String;

    .line 528
    iput-object p2, p0, Landroid/support/v4/app/aU;->aek:Landroid/support/v4/app/r;

    .line 529
    iput-boolean p3, p0, Landroid/support/v4/app/aU;->mStarted:Z

    .line 530
    return-void
.end method


# virtual methods
.method arm()V
    .locals 2

    .prologue
    .line 829
    iget-boolean v0, p0, Landroid/support/v4/app/aU;->aen:Z

    if-eqz v0, :cond_0

    .line 837
    :goto_0
    sget-boolean v0, Landroid/support/v4/app/aU;->DEBUG:Z

    if-nez v0, :cond_3

    .line 838
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/aU;->ael:Landroid/support/v4/a/a;

    invoke-virtual {v0}, Landroid/support/v4/a/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-gez v1, :cond_4

    .line 841
    iget-object v0, p0, Landroid/support/v4/app/aU;->ael:Landroid/support/v4/a/a;

    invoke-virtual {v0}, Landroid/support/v4/a/a;->clear()V

    .line 842
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/aU;->aek:Landroid/support/v4/app/r;

    .line 843
    return-void

    .line 830
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/aU;->DEBUG:Z

    if-nez v0, :cond_1

    .line 831
    :goto_3
    iget-object v0, p0, Landroid/support/v4/app/aU;->aeo:Landroid/support/v4/a/a;

    invoke-virtual {v0}, Landroid/support/v4/a/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4
    if-gez v1, :cond_2

    .line 834
    iget-object v0, p0, Landroid/support/v4/app/aU;->aeo:Landroid/support/v4/a/a;

    invoke-virtual {v0}, Landroid/support/v4/a/a;->clear()V

    goto :goto_0

    .line 830
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Destroying Active in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 832
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aU;->aeo:Landroid/support/v4/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/a;->ahO(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    invoke-virtual {v0}, Landroid/support/v4/app/U;->ano()V

    .line 831
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4

    .line 837
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Destroying Inactive in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 839
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/aU;->ael:Landroid/support/v4/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/a;->ahO(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    invoke-virtual {v0}, Landroid/support/v4/app/U;->ano()V

    .line 838
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2
.end method

.method arn(Landroid/support/v4/app/r;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Landroid/support/v4/app/aU;->aek:Landroid/support/v4/app/r;

    .line 534
    return-void
.end method

.method aro()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 790
    sget-boolean v0, Landroid/support/v4/app/aU;->DEBUG:Z

    if-nez v0, :cond_0

    .line 791
    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/app/aU;->mStarted:Z

    if-eqz v0, :cond_1

    .line 798
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/aU;->aen:Z

    .line 799
    iput-boolean v2, p0, Landroid/support/v4/app/aU;->mStarted:Z

    .line 800
    iget-object v0, p0, Landroid/support/v4/app/aU;->aeo:Landroid/support/v4/a/a;

    invoke-virtual {v0}, Landroid/support/v4/a/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-gez v1, :cond_2

    .line 803
    return-void

    .line 790
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Retaining in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 792
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 793
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Called doRetain when not started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LoaderManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 795
    return-void

    .line 801
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aU;->aeo:Landroid/support/v4/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/a;->ahO(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    invoke-virtual {v0}, Landroid/support/v4/app/U;->ank()V

    .line 800
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1
.end method

.method arp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 806
    iget-boolean v0, p0, Landroid/support/v4/app/aU;->aen:Z

    if-nez v0, :cond_1

    .line 814
    :cond_0
    return-void

    .line 807
    :cond_1
    sget-boolean v0, Landroid/support/v4/app/aU;->DEBUG:Z

    if-nez v0, :cond_2

    .line 809
    :goto_0
    iput-boolean v2, p0, Landroid/support/v4/app/aU;->aen:Z

    .line 810
    iget-object v0, p0, Landroid/support/v4/app/aU;->aeo:Landroid/support/v4/a/a;

    invoke-virtual {v0}, Landroid/support/v4/a/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_0

    .line 811
    iget-object v0, p0, Landroid/support/v4/app/aU;->aeo:Landroid/support/v4/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/a;->ahO(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    invoke-virtual {v0}, Landroid/support/v4/app/U;->ann()V

    .line 810
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 807
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Finished Retaining in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method arq()V
    .locals 3

    .prologue
    .line 817
    iget-object v0, p0, Landroid/support/v4/app/aU;->aeo:Landroid/support/v4/a/a;

    invoke-virtual {v0}, Landroid/support/v4/a/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 820
    return-void

    .line 818
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aU;->aeo:Landroid/support/v4/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/a;->ahO(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/U;->ZZ:Z

    .line 817
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method arr()V
    .locals 3

    .prologue
    .line 757
    sget-boolean v0, Landroid/support/v4/app/aU;->DEBUG:Z

    if-nez v0, :cond_0

    .line 758
    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/app/aU;->mStarted:Z

    if-nez v0, :cond_1

    .line 765
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/aU;->mStarted:Z

    .line 769
    iget-object v0, p0, Landroid/support/v4/app/aU;->aeo:Landroid/support/v4/a/a;

    invoke-virtual {v0}, Landroid/support/v4/a/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-gez v1, :cond_2

    .line 772
    return-void

    .line 757
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Starting in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 759
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Called doStart when already started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LoaderManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 762
    return-void

    .line 770
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aU;->aeo:Landroid/support/v4/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/a;->ahO(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    invoke-virtual {v0}, Landroid/support/v4/app/U;->start()V

    .line 769
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1
.end method

.method ars()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 775
    sget-boolean v0, Landroid/support/v4/app/aU;->DEBUG:Z

    if-nez v0, :cond_0

    .line 776
    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/app/aU;->mStarted:Z

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Landroid/support/v4/app/aU;->aeo:Landroid/support/v4/a/a;

    invoke-virtual {v0}, Landroid/support/v4/a/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-gez v1, :cond_2

    .line 786
    iput-boolean v2, p0, Landroid/support/v4/app/aU;->mStarted:Z

    .line 787
    return-void

    .line 775
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Stopping in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 777
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 778
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Called doStop when not started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LoaderManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 780
    return-void

    .line 784
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aU;->aeo:Landroid/support/v4/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/a;->ahO(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    invoke-virtual {v0}, Landroid/support/v4/app/U;->stop()V

    .line 783
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1
.end method

.method art()V
    .locals 2

    .prologue
    .line 823
    iget-object v0, p0, Landroid/support/v4/app/aU;->aeo:Landroid/support/v4/a/a;

    invoke-virtual {v0}, Landroid/support/v4/a/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 826
    return-void

    .line 824
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aU;->aeo:Landroid/support/v4/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/a;->ahO(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    invoke-virtual {v0}, Landroid/support/v4/app/U;->anl()V

    .line 823
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public aru()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 883
    iget-object v0, p0, Landroid/support/v4/app/aU;->aeo:Landroid/support/v4/a/a;

    invoke-virtual {v0}, Landroid/support/v4/a/a;->size()I

    move-result v4

    move v2, v1

    move v3, v1

    .line 884
    :goto_0
    if-lt v2, v4, :cond_0

    .line 888
    return v3

    .line 885
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aU;->aeo:Landroid/support/v4/a/a;

    invoke-virtual {v0, v2}, Landroid/support/v4/a/a;->ahO(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    .line 886
    iget-boolean v5, v0, Landroid/support/v4/app/U;->mStarted:Z

    if-nez v5, :cond_2

    :cond_1
    move v0, v1

    :goto_1
    or-int/2addr v3, v0

    .line 884
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 886
    :cond_2
    iget-boolean v0, v0, Landroid/support/v4/app/U;->aak:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 858
    iget-object v0, p0, Landroid/support/v4/app/aU;->aeo:Landroid/support/v4/a/a;

    invoke-virtual {v0}, Landroid/support/v4/a/a;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 868
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aU;->ael:Landroid/support/v4/a/a;

    invoke-virtual {v0}, Landroid/support/v4/a/a;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 878
    :cond_1
    return-void

    .line 859
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Active Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 861
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aU;->aeo:Landroid/support/v4/a/a;

    invoke-virtual {v0}, Landroid/support/v4/a/a;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 862
    iget-object v0, p0, Landroid/support/v4/app/aU;->aeo:Landroid/support/v4/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/a;->ahO(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    .line 863
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/app/aU;->aeo:Landroid/support/v4/a/a;

    invoke-virtual {v4, v1}, Landroid/support/v4/a/a;->ahQ(I)I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 864
    const-string/jumbo v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/U;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 865
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/U;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 861
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 869
    :cond_3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Inactive Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 871
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/aU;->ael:Landroid/support/v4/a/a;

    invoke-virtual {v0}, Landroid/support/v4/a/a;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 872
    iget-object v0, p0, Landroid/support/v4/app/aU;->ael:Landroid/support/v4/a/a;

    invoke-virtual {v0, v2}, Landroid/support/v4/a/a;->ahO(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U;

    .line 873
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/aU;->ael:Landroid/support/v4/a/a;

    invoke-virtual {v3, v2}, Landroid/support/v4/a/a;->ahQ(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 874
    const-string/jumbo v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/U;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/U;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 871
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 848
    const-string/jumbo v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    iget-object v1, p0, Landroid/support/v4/app/aU;->aek:Landroid/support/v4/app/r;

    invoke-static {v1, v0}, Landroid/support/v4/a/k;->aix(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 852
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

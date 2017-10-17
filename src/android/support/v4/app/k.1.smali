.class public Landroid/support/v4/app/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final YQ:Landroid/support/v4/app/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 953
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 955
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 957
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    .line 959
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_3

    .line 961
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_4

    .line 963
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_5

    .line 966
    new-instance v0, Landroid/support/v4/app/w;

    invoke-direct {v0}, Landroid/support/v4/app/w;-><init>()V

    sput-object v0, Landroid/support/v4/app/k;->YQ:Landroid/support/v4/app/j;

    .line 968
    :goto_0
    return-void

    .line 954
    :cond_0
    new-instance v0, Landroid/support/v4/app/H;

    invoke-direct {v0}, Landroid/support/v4/app/H;-><init>()V

    sput-object v0, Landroid/support/v4/app/k;->YQ:Landroid/support/v4/app/j;

    goto :goto_0

    .line 956
    :cond_1
    new-instance v0, Landroid/support/v4/app/am;

    invoke-direct {v0}, Landroid/support/v4/app/am;-><init>()V

    sput-object v0, Landroid/support/v4/app/k;->YQ:Landroid/support/v4/app/j;

    goto :goto_0

    .line 958
    :cond_2
    new-instance v0, Landroid/support/v4/app/aw;

    invoke-direct {v0}, Landroid/support/v4/app/aw;-><init>()V

    sput-object v0, Landroid/support/v4/app/k;->YQ:Landroid/support/v4/app/j;

    goto :goto_0

    .line 960
    :cond_3
    new-instance v0, Landroid/support/v4/app/N;

    invoke-direct {v0}, Landroid/support/v4/app/N;-><init>()V

    sput-object v0, Landroid/support/v4/app/k;->YQ:Landroid/support/v4/app/j;

    goto :goto_0

    .line 962
    :cond_4
    new-instance v0, Landroid/support/v4/app/l;

    invoke-direct {v0}, Landroid/support/v4/app/l;-><init>()V

    sput-object v0, Landroid/support/v4/app/k;->YQ:Landroid/support/v4/app/j;

    goto :goto_0

    .line 964
    :cond_5
    new-instance v0, Landroid/support/v4/app/aj;

    invoke-direct {v0}, Landroid/support/v4/app/aj;-><init>()V

    sput-object v0, Landroid/support/v4/app/k;->YQ:Landroid/support/v4/app/j;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4474
    return-void
.end method

.method public static alm(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 4823
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 4825
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 4828
    const/4 v0, 0x0

    return-object v0

    .line 4824
    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object v0

    .line 4826
    :cond_1
    invoke-static {p0}, Landroid/support/v4/app/aF;->aom(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static aln(Landroid/support/v4/app/D;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 947
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 950
    return-void

    .line 947
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aO;

    .line 948
    invoke-interface {p0, v0}, Landroid/support/v4/app/D;->ajA(Landroid/support/v4/app/T;)V

    goto :goto_0
.end method

.class public Landroid/support/v4/app/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final Xg:Landroid/support/v4/app/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 949
    invoke-static {}, Landroid/support/v4/os/a;->isAtLeastO()Z

    move-result v0

    if-nez v0, :cond_0

    .line 951
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 953
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    .line 955
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_3

    .line 957
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_4

    .line 959
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_5

    .line 962
    new-instance v0, Landroid/support/v4/app/v;

    invoke-direct {v0}, Landroid/support/v4/app/v;-><init>()V

    sput-object v0, Landroid/support/v4/app/i;->Xg:Landroid/support/v4/app/h;

    .line 964
    :goto_0
    return-void

    .line 950
    :cond_0
    new-instance v0, Landroid/support/v4/app/F;

    invoke-direct {v0}, Landroid/support/v4/app/F;-><init>()V

    sput-object v0, Landroid/support/v4/app/i;->Xg:Landroid/support/v4/app/h;

    goto :goto_0

    .line 952
    :cond_1
    new-instance v0, Landroid/support/v4/app/an;

    invoke-direct {v0}, Landroid/support/v4/app/an;-><init>()V

    sput-object v0, Landroid/support/v4/app/i;->Xg:Landroid/support/v4/app/h;

    goto :goto_0

    .line 954
    :cond_2
    new-instance v0, Landroid/support/v4/app/ay;

    invoke-direct {v0}, Landroid/support/v4/app/ay;-><init>()V

    sput-object v0, Landroid/support/v4/app/i;->Xg:Landroid/support/v4/app/h;

    goto :goto_0

    .line 956
    :cond_3
    new-instance v0, Landroid/support/v4/app/L;

    invoke-direct {v0}, Landroid/support/v4/app/L;-><init>()V

    sput-object v0, Landroid/support/v4/app/i;->Xg:Landroid/support/v4/app/h;

    goto :goto_0

    .line 958
    :cond_4
    new-instance v0, Landroid/support/v4/app/j;

    invoke-direct {v0}, Landroid/support/v4/app/j;-><init>()V

    sput-object v0, Landroid/support/v4/app/i;->Xg:Landroid/support/v4/app/h;

    goto :goto_0

    .line 960
    :cond_5
    new-instance v0, Landroid/support/v4/app/aj;

    invoke-direct {v0}, Landroid/support/v4/app/aj;-><init>()V

    sput-object v0, Landroid/support/v4/app/i;->Xg:Landroid/support/v4/app/h;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3934
    return-void
.end method

.method public static ajZ(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 4283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 4285
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 4288
    const/4 v0, 0x0

    return-object v0

    .line 4284
    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object v0

    .line 4286
    :cond_1
    invoke-static {p0}, Landroid/support/v4/app/aJ;->anj(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static aka(Landroid/support/v4/app/X;Landroid/support/v4/app/z;)V
    .locals 7

    .prologue
    .line 892
    if-nez p1, :cond_1

    .line 918
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    instance-of v0, p1, Landroid/support/v4/app/aG;

    if-nez v0, :cond_2

    .line 900
    instance-of v0, p1, Landroid/support/v4/app/ax;

    if-nez v0, :cond_3

    .line 907
    instance-of v0, p1, Landroid/support/v4/app/aC;

    if-eqz v0, :cond_0

    .line 908
    check-cast p1, Landroid/support/v4/app/aC;

    .line 909
    iget-object v1, p1, Landroid/support/v4/app/aC;->XU:Ljava/lang/CharSequence;

    iget-boolean v2, p1, Landroid/support/v4/app/aC;->XW:Z

    iget-object v3, p1, Landroid/support/v4/app/aC;->XV:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/aC;->aaV:Landroid/graphics/Bitmap;

    iget-object v5, p1, Landroid/support/v4/app/aC;->aaX:Landroid/graphics/Bitmap;

    iget-boolean v6, p1, Landroid/support/v4/app/aC;->aaW:Z

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v4/app/aJ;->anm(Landroid/support/v4/app/X;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 894
    :cond_2
    check-cast p1, Landroid/support/v4/app/aG;

    .line 895
    iget-object v0, p1, Landroid/support/v4/app/aG;->XU:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/aG;->XW:Z

    iget-object v2, p1, Landroid/support/v4/app/aG;->XV:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/aG;->abr:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/aJ;->anl(Landroid/support/v4/app/X;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 901
    :cond_3
    check-cast p1, Landroid/support/v4/app/ax;

    .line 902
    iget-object v0, p1, Landroid/support/v4/app/ax;->XU:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/ax;->XW:Z

    iget-object v2, p1, Landroid/support/v4/app/ax;->XV:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/ax;->aaS:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/aJ;->ani(Landroid/support/v4/app/X;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method static akb(Landroid/support/v4/app/C;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 884
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 887
    return-void

    .line 884
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aS;

    .line 885
    invoke-interface {p0, v0}, Landroid/support/v4/app/C;->aim(Landroid/support/v4/app/S;)V

    goto :goto_0
.end method

.method static akc(Landroid/support/v4/app/X;Landroid/support/v4/app/z;)V
    .locals 10

    .prologue
    .line 923
    if-nez p1, :cond_0

    .line 946
    :goto_0
    return-void

    .line 924
    :cond_0
    instance-of v0, p1, Landroid/support/v4/app/q;

    if-nez v0, :cond_1

    .line 943
    invoke-static {p0, p1}, Landroid/support/v4/app/i;->aka(Landroid/support/v4/app/X;Landroid/support/v4/app/z;)V

    goto :goto_0

    .line 925
    :cond_1
    check-cast p1, Landroid/support/v4/app/q;

    .line 926
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 927
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 928
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 929
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 930
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 932
    iget-object v0, p1, Landroid/support/v4/app/q;->XI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 939
    iget-object v1, p1, Landroid/support/v4/app/q;->XJ:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/support/v4/app/q;->XK:Ljava/lang/CharSequence;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Landroid/support/v4/app/as;->amT(Landroid/support/v4/app/X;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 932
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/al;

    .line 933
    invoke-virtual {v0}, Landroid/support/v4/app/al;->amP()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    invoke-virtual {v0}, Landroid/support/v4/app/al;->amQ()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    invoke-virtual {v0}, Landroid/support/v4/app/al;->amL()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    invoke-virtual {v0}, Landroid/support/v4/app/al;->amM()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 937
    invoke-virtual {v0}, Landroid/support/v4/app/al;->amN()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

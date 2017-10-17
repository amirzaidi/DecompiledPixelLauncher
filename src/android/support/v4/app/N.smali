.class Landroid/support/v4/app/N;
.super Landroid/support/v4/app/l;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 796
    invoke-direct {p0}, Landroid/support/v4/app/l;-><init>()V

    return-void
.end method


# virtual methods
.method public all(Landroid/support/v4/app/Z;Landroid/support/v4/app/aq;)Landroid/app/Notification;
    .locals 29

    .prologue
    .line 799
    new-instance v2, Landroid/support/v4/app/L;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/Z;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Z;->abs:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/Z;->aaZ:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/Z;->aba:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/Z;->abz:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/support/v4/app/Z;->abj:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/support/v4/app/Z;->abi:I

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/Z;->abx:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/app/Z;->abg:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/support/v4/app/Z;->abh:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/app/Z;->abd:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/v4/app/Z;->abq:I

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/app/Z;->abk:Z

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/Z;->abw:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/Z;->abu:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/Z;->abt:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Z;->abf:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/Z;->abb:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Z;->aaX:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Z;->abp:Landroid/os/Bundle;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Z;->abE:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/Z;->abl:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Z;->aaY:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Z;->abc:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Z;->abA:Landroid/widget/RemoteViews;

    move-object/from16 v27, v0

    .line 805
    invoke-static/range {p1 .. p1}, Landroid/support/v4/app/Z;->anO(Landroid/support/v4/app/Z;)I

    move-result v28

    invoke-direct/range {v2 .. v28}, Landroid/support/v4/app/L;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/util/ArrayList;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;I)V

    .line 806
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/Z;->aaV:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/support/v4/app/k;->aln(Landroid/support/v4/app/D;Ljava/util/ArrayList;)V

    .line 807
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/Z;->abC:Landroid/support/v4/app/A;

    if-nez v3, :cond_0

    .line 810
    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/aq;->anX(Landroid/support/v4/app/Z;Landroid/support/v4/app/Y;)Landroid/app/Notification;

    move-result-object v2

    .line 811
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/Z;->abC:Landroid/support/v4/app/A;

    if-nez v3, :cond_1

    .line 814
    :goto_1
    return-object v2

    .line 808
    :cond_0
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/Z;->abC:Landroid/support/v4/app/A;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/A;->alS(Landroid/support/v4/app/Y;)V

    goto :goto_0

    .line 812
    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/Z;->abC:Landroid/support/v4/app/A;

    invoke-static {v2}, Landroid/support/v4/app/k;->alm(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/A;->alO(Landroid/os/Bundle;)V

    goto :goto_1
.end method

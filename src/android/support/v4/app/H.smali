.class Landroid/support/v4/app/H;
.super Landroid/support/v4/app/am;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 919
    invoke-direct {p0}, Landroid/support/v4/app/am;-><init>()V

    return-void
.end method


# virtual methods
.method public all(Landroid/support/v4/app/Z;Landroid/support/v4/app/aq;)Landroid/app/Notification;
    .locals 43

    .prologue
    .line 923
    new-instance v3, Landroid/support/v4/app/f;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Z;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/Z;->abs:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/Z;->aaZ:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/Z;->aba:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/support/v4/app/Z;->abz:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/support/v4/app/Z;->abj:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/support/v4/app/Z;->abi:I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/app/Z;->abx:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/support/v4/app/Z;->abg:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/support/v4/app/Z;->abh:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/v4/app/Z;->abd:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/support/v4/app/Z;->abq:I

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/Z;->abk:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/Z;->abw:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/Z;->abu:Z

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/Z;->abt:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Z;->abf:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/Z;->abb:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Z;->aaW:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Z;->aaX:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Z;->abp:Landroid/os/Bundle;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/Z;->aaU:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/Z;->abo:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Z;->aby:Landroid/app/Notification;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Z;->abE:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/Z;->abl:Z

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Z;->aaY:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Z;->abF:[Ljava/lang/CharSequence;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Z;->abc:Landroid/widget/RemoteViews;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Z;->abA:Landroid/widget/RemoteViews;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Z;->abv:Landroid/widget/RemoteViews;

    move-object/from16 v34, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Z;->abr:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/Z;->mBadgeIcon:I

    move/from16 v36, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Z;->abn:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/support/v4/app/Z;->abB:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/Z;->abm:Z

    move/from16 v40, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/Z;->abD:Z

    move/from16 v41, v0

    .line 932
    invoke-static/range {p1 .. p1}, Landroid/support/v4/app/Z;->anO(Landroid/support/v4/app/Z;)I

    move-result v42

    invoke-direct/range {v3 .. v42}, Landroid/support/v4/app/f;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;IILandroid/app/Notification;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/CharSequence;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Ljava/lang/String;ILjava/lang/String;JZZI)V

    .line 933
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/Z;->aaV:Ljava/util/ArrayList;

    invoke-static {v3, v2}, Landroid/support/v4/app/k;->aln(Landroid/support/v4/app/D;Ljava/util/ArrayList;)V

    .line 934
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/Z;->abC:Landroid/support/v4/app/A;

    if-nez v2, :cond_0

    .line 937
    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/aq;->anX(Landroid/support/v4/app/Z;Landroid/support/v4/app/Y;)Landroid/app/Notification;

    move-result-object v2

    .line 938
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/Z;->abC:Landroid/support/v4/app/A;

    if-nez v3, :cond_1

    .line 941
    :goto_1
    return-object v2

    .line 935
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/Z;->abC:Landroid/support/v4/app/A;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/A;->alS(Landroid/support/v4/app/Y;)V

    goto :goto_0

    .line 939
    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/Z;->abC:Landroid/support/v4/app/A;

    invoke-static {v2}, Landroid/support/v4/app/k;->alm(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/A;->alO(Landroid/os/Bundle;)V

    goto :goto_1
.end method

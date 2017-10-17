.class Landroid/support/v4/app/an;
.super Landroid/support/v4/app/ay;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 835
    invoke-direct {p0}, Landroid/support/v4/app/ay;-><init>()V

    return-void
.end method


# virtual methods
.method public ajY(Landroid/support/v4/app/Y;Landroid/support/v4/app/ar;)Landroid/app/Notification;
    .locals 35

    .prologue
    .line 839
    new-instance v2, Landroid/support/v4/app/ap;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/Y;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Y;->ZN:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/Y;->Zu:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/Y;->Zv:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/Y;->ZU:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/support/v4/app/Y;->ZE:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/support/v4/app/Y;->ZD:I

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/Y;->ZS:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/app/Y;->ZB:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/support/v4/app/Y;->ZC:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/app/Y;->Zy:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/v4/app/Y;->ZL:I

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/app/Y;->ZF:Z

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/Y;->ZR:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/Y;->ZP:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/Y;->ZO:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Y;->ZA:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/Y;->Zw:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Y;->Zr:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Y;->Zs:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Y;->ZK:Landroid/os/Bundle;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/Y;->Zp:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/Y;->ZJ:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Y;->ZT:Landroid/app/Notification;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Y;->ZZ:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/Y;->ZG:Z

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Y;->Zt:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Y;->aaa:[Ljava/lang/CharSequence;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Y;->Zx:Landroid/widget/RemoteViews;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Y;->ZV:Landroid/widget/RemoteViews;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Y;->ZQ:Landroid/widget/RemoteViews;

    move-object/from16 v33, v0

    .line 846
    invoke-static/range {p1 .. p1}, Landroid/support/v4/app/Y;->amB(Landroid/support/v4/app/Y;)I

    move-result v34

    invoke-direct/range {v2 .. v34}, Landroid/support/v4/app/ap;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;IILandroid/app/Notification;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/CharSequence;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;I)V

    .line 847
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/Y;->Zq:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/support/v4/app/i;->akb(Landroid/support/v4/app/C;Ljava/util/ArrayList;)V

    .line 848
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/Y;->ZX:Landroid/support/v4/app/z;

    invoke-static {v2, v3}, Landroid/support/v4/app/i;->akc(Landroid/support/v4/app/X;Landroid/support/v4/app/z;)V

    .line 849
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ar;->amS(Landroid/support/v4/app/Y;Landroid/support/v4/app/X;)Landroid/app/Notification;

    move-result-object v2

    .line 850
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/Y;->ZX:Landroid/support/v4/app/z;

    if-nez v3, :cond_0

    .line 853
    :goto_0
    return-object v2

    .line 851
    :cond_0
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/Y;->ZX:Landroid/support/v4/app/z;

    invoke-static {v2}, Landroid/support/v4/app/i;->ajZ(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/z;->akz(Landroid/os/Bundle;)V

    goto :goto_0
.end method

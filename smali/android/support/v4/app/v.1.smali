.class Landroid/support/v4/app/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/h;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    return-void
.end method


# virtual methods
.method public ajY(Landroid/support/v4/app/Y;Landroid/support/v4/app/ar;)Landroid/app/Notification;
    .locals 16

    .prologue
    .line 658
    new-instance v2, Landroid/support/v4/app/A;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/Y;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Y;->ZN:Landroid/app/Notification;

    .line 660
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Y;->amA()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Y;->amx()Ljava/lang/CharSequence;

    move-result-object v6

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

    invoke-direct/range {v2 .. v15}, Landroid/support/v4/app/A;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)V

    .line 663
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ar;->amS(Landroid/support/v4/app/Y;Landroid/support/v4/app/X;)Landroid/app/Notification;

    move-result-object v2

    return-object v2
.end method

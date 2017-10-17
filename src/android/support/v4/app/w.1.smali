.class Landroid/support/v4/app/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/j;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    return-void
.end method


# virtual methods
.method public all(Landroid/support/v4/app/Z;Landroid/support/v4/app/aq;)Landroid/app/Notification;
    .locals 16

    .prologue
    .line 690
    new-instance v2, Landroid/support/v4/app/B;

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

    invoke-direct/range {v2 .. v15}, Landroid/support/v4/app/B;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)V

    .line 695
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/aq;->anX(Landroid/support/v4/app/Z;Landroid/support/v4/app/Y;)Landroid/app/Notification;

    move-result-object v2

    return-object v2
.end method

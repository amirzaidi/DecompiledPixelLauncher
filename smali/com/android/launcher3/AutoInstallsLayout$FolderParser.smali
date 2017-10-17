.class Lcom/android/launcher3/AutoInstallsLayout$FolderParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/AutoInstallsLayout$TagParser;


# instance fields
.field private final mFolderElements:Ljava/util/HashMap;

.field final synthetic this$0:Lcom/android/launcher3/AutoInstallsLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/AutoInstallsLayout;)V
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p1}, Lcom/android/launcher3/AutoInstallsLayout;->getFolderElementsMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;Ljava/util/HashMap;)V

    .line 535
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/AutoInstallsLayout;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    iput-object p2, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->mFolderElements:Ljava/util/HashMap;

    .line 539
    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 12

    .prologue
    .line 545
    const-string/jumbo v0, "title"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v0

    .line 546
    if-eqz v0, :cond_0

    .line 547
    iget-object v1, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v1, v1, Lcom/android/launcher3/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 552
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v1, v1, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "itemType"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 554
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "spanX"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 555
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "spanY"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 556
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "_id"

    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v2, v2, Lcom/android/launcher3/AutoInstallsLayout;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    invoke-interface {v2}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->generateNewItemId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 557
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    iget-object v1, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v1, v1, Lcom/android/launcher3/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v2, v2, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 558
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 560
    const-wide/16 v0, -0x1

    return-wide v0

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 563
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 564
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 567
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 568
    const/4 v0, 0x0

    move v1, v0

    .line 569
    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v7, 0x3

    if-ne v0, v7, :cond_3

    .line 570
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v6, :cond_5

    .line 571
    :cond_3
    const/4 v7, 0x2

    if-ne v0, v7, :cond_2

    .line 574
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 575
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v7, "container"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 576
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v7, "rank"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 578
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->mFolderElements:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AutoInstallsLayout$TagParser;

    .line 579
    if-eqz v0, :cond_4

    .line 580
    invoke-interface {v0, p1}, Lcom/android/launcher3/AutoInstallsLayout$TagParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;)J

    move-result-wide v8

    .line 581
    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-ltz v0, :cond_8

    .line 582
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    .line 586
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid folder item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    .line 597
    invoke-static {v2, v3}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 598
    new-instance v1, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, v1, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 600
    const-wide/16 v0, -0x1

    .line 604
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 605
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 606
    const-string/jumbo v0, "container"

    invoke-static {v4, v2, v0}, Lcom/android/launcher3/AutoInstallsLayout;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 607
    const-string/jumbo v0, "screen"

    invoke-static {v4, v2, v0}, Lcom/android/launcher3/AutoInstallsLayout;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 608
    const-string/jumbo v0, "cellX"

    invoke-static {v4, v2, v0}, Lcom/android/launcher3/AutoInstallsLayout;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 609
    const-string/jumbo v0, "cellY"

    invoke-static {v4, v2, v0}, Lcom/android/launcher3/AutoInstallsLayout;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 611
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 612
    iget-object v3, p0, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v3, v3, Lcom/android/launcher3/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "favorites"

    .line 613
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 612
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 616
    :cond_6
    :goto_3
    return-wide v0

    :cond_7
    move-wide v0, v2

    goto :goto_3

    :cond_8
    move v0, v1

    goto/16 :goto_2
.end method

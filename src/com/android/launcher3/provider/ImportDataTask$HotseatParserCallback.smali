.class Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;


# instance fields
.field private final mExistingApps:Ljava/util/HashSet;

.field private final mExistingItems:Lcom/android/launcher3/util/LongArrayMap;

.field private final mOutOps:Ljava/util/ArrayList;

.field private final mRequiredSize:I

.field private mStartItemId:I


# direct methods
.method constructor <init>(Ljava/util/HashSet;Lcom/android/launcher3/util/LongArrayMap;Ljava/util/ArrayList;II)V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-object p1, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mExistingApps:Ljava/util/HashSet;

    .line 418
    iput-object p2, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mExistingItems:Lcom/android/launcher3/util/LongArrayMap;

    .line 419
    iput-object p3, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mOutOps:Ljava/util/ArrayList;

    .line 420
    iput p5, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mRequiredSize:I

    .line 421
    iput p4, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mStartItemId:I

    .line 422
    return-void
.end method


# virtual methods
.method public generateNewItemId()J
    .locals 2

    .prologue
    .line 426
    iget v0, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mStartItemId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mStartItemId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 431
    iget-object v0, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mExistingItems:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mRequiredSize:I

    if-lt v0, v1, :cond_0

    .line 433
    return-wide v2

    .line 437
    :cond_0
    :try_start_0
    const-string/jumbo v0, "intent"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 441
    invoke-static {v4}, Lcom/android/launcher3/provider/ImportDataTask;->-wrap1(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mExistingApps:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 444
    :cond_1
    return-wide v2

    .line 438
    :catch_0
    move-exception v0

    .line 439
    return-wide v2

    .line 446
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mExistingApps:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-wide v0, v2

    .line 450
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mExistingItems:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 451
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    goto :goto_0

    .line 453
    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mExistingItems:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v5, v0, v1, v4}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 454
    const-string/jumbo v4, "screen"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 455
    iget-object v0, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mOutOps:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    return-wide v2
.end method

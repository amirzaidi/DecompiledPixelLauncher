.class Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;
.super Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;
.source "SourceFile"


# instance fields
.field private final mItems:Ljava/util/ArrayList;

.field private final mValues:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/android/launcher3/model/ModelWriter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/ModelWriter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    .line 300
    iput-object p3, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->mValues:Ljava/util/ArrayList;

    .line 301
    iput-object p2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->mItems:Ljava/util/ArrayList;

    .line 302
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 306
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 307
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 308
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 310
    iget-wide v6, v0, Lcom/android/launcher3/ItemInfo;->id:J

    .line 311
    invoke-static {v6, v7}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v5

    .line 312
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 314
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-virtual {p0, v0, v6, v7}, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->updateItemArrays(Lcom/android/launcher3/ItemInfo;J)V

    .line 308
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 318
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v0}, Lcom/android/launcher3/model/ModelWriter;->-get1(Lcom/android/launcher3/model/ModelWriter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_1
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

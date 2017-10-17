.class Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;
.super Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;
.source "SourceFile"


# instance fields
.field private final mItem:Lcom/android/launcher3/ItemInfo;

.field private final mItemId:J

.field private final mWriter:Lcom/android/launcher3/util/ContentWriter;

.field final synthetic this$0:Lcom/android/launcher3/model/ModelWriter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/util/ContentWriter;)V
    .locals 2

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    .line 282
    iput-object p2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mItem:Lcom/android/launcher3/ItemInfo;

    .line 283
    iput-object p3, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mWriter:Lcom/android/launcher3/util/ContentWriter;

    .line 284
    iget-wide v0, p2, Lcom/android/launcher3/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mItemId:J

    .line 285
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 289
    iget-wide v0, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mItemId:J

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v1}, Lcom/android/launcher3/model/ModelWriter;->-get1(Lcom/android/launcher3/model/ModelWriter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mWriter:Lcom/android/launcher3/util/ContentWriter;

    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v3}, Lcom/android/launcher3/model/ModelWriter;->-get1(Lcom/android/launcher3/model/ModelWriter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/ContentWriter;->getValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mItem:Lcom/android/launcher3/ItemInfo;

    iget-wide v2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mItemId:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->updateItemArrays(Lcom/android/launcher3/ItemInfo;J)V

    .line 292
    return-void
.end method

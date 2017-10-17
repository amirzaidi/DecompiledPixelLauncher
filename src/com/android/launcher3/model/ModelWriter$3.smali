.class final Lcom/android/launcher3/model/ModelWriter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/ModelWriter;

.field final synthetic val$info:Lcom/android/launcher3/FolderInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/FolderInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$3;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iput-object p2, p0, Lcom/android/launcher3/model/ModelWriter$3;->val$info:Lcom/android/launcher3/FolderInfo;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 264
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$3;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v0}, Lcom/android/launcher3/model/ModelWriter;->-get1(Lcom/android/launcher3/model/ModelWriter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 265
    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter$3;->val$info:Lcom/android/launcher3/FolderInfo;

    iget-wide v4, v3, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-virtual {v0, v1, v2, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$3;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v1}, Lcom/android/launcher3/model/ModelWriter;->-get0(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$3;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v2}, Lcom/android/launcher3/model/ModelWriter;->-get1(Lcom/android/launcher3/model/ModelWriter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter$3;->val$info:Lcom/android/launcher3/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;Ljava/lang/Iterable;)V

    .line 268
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$3;->val$info:Lcom/android/launcher3/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 270
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$3;->val$info:Lcom/android/launcher3/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-static {v2, v3}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$3;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v0}, Lcom/android/launcher3/model/ModelWriter;->-get0(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$3;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v1}, Lcom/android/launcher3/model/ModelWriter;->-get1(Lcom/android/launcher3/model/ModelWriter;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher3/ItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter$3;->val$info:Lcom/android/launcher3/FolderInfo;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/ItemInfo;)V

    .line 272
    return-void
.end method

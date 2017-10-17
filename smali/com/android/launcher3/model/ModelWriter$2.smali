.class final Lcom/android/launcher3/model/ModelWriter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/ModelWriter;

.field final synthetic val$items:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/ModelWriter;Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$2;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iput-object p2, p0, Lcom/android/launcher3/model/ModelWriter$2;->val$items:Ljava/lang/Iterable;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 248
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$2;->val$items:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 249
    iget-wide v2, v0, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v2, v3}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 250
    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter$2;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v3}, Lcom/android/launcher3/model/ModelWriter;->-get1(Lcom/android/launcher3/model/ModelWriter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 252
    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$2;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v2}, Lcom/android/launcher3/model/ModelWriter;->-get0(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter$2;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v3}, Lcom/android/launcher3/model/ModelWriter;->-get1(Lcom/android/launcher3/model/ModelWriter;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/launcher3/ItemInfo;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/ItemInfo;)V

    goto :goto_0

    .line 254
    :cond_0
    return-void
.end method

.class final Lcom/android/launcher3/model/ModelWriter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/ModelWriter;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lcom/android/launcher3/ItemInfo;

.field final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;

.field final synthetic val$writer:Lcom/android/launcher3/util/ContentWriter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/ModelWriter;Landroid/content/ContentResolver;Lcom/android/launcher3/util/ContentWriter;Lcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$1;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iput-object p2, p0, Lcom/android/launcher3/model/ModelWriter$1;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/launcher3/model/ModelWriter$1;->val$writer:Lcom/android/launcher3/util/ContentWriter;

    iput-object p4, p0, Lcom/android/launcher3/model/ModelWriter$1;->val$item:Lcom/android/launcher3/ItemInfo;

    iput-object p5, p0, Lcom/android/launcher3/model/ModelWriter$1;->val$stackTrace:[Ljava/lang/StackTraceElement;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$1;->val$cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$1;->val$writer:Lcom/android/launcher3/util/ContentWriter;

    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter$1;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v3}, Lcom/android/launcher3/model/ModelWriter;->-get1(Lcom/android/launcher3/model/ModelWriter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/ContentWriter;->getValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$1;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v0}, Lcom/android/launcher3/model/ModelWriter;->-get0(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v1

    monitor-enter v1

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$1;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$1;->val$item:Lcom/android/launcher3/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/ItemInfo;->id:J

    iget-object v4, p0, Lcom/android/launcher3/model/ModelWriter$1;->val$item:Lcom/android/launcher3/ItemInfo;

    iget-object v5, p0, Lcom/android/launcher3/model/ModelWriter$1;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/launcher3/model/ModelWriter;->-wrap0(Lcom/android/launcher3/model/ModelWriter;JLcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 222
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$1;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v0}, Lcom/android/launcher3/model/ModelWriter;->-get0(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$1;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v2}, Lcom/android/launcher3/model/ModelWriter;->-get1(Lcom/android/launcher3/model/ModelWriter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter$1;->val$item:Lcom/android/launcher3/ItemInfo;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 224
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

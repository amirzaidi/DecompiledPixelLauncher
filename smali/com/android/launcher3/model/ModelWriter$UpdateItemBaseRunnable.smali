.class abstract Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mStackTrace:[Ljava/lang/StackTraceElement;

.field final synthetic this$0:Lcom/android/launcher3/model/ModelWriter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/ModelWriter;)V
    .locals 1

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->mStackTrace:[Ljava/lang/StackTraceElement;

    .line 330
    return-void
.end method


# virtual methods
.method protected updateItemArrays(Lcom/android/launcher3/ItemInfo;J)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x64

    const-wide/16 v4, -0x65

    .line 334
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v0}, Lcom/android/launcher3/model/ModelWriter;->-get0(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v1

    monitor-enter v1

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->mStackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v0, p2, p3, p1, v2}, Lcom/android/launcher3/model/ModelWriter;->-wrap0(Lcom/android/launcher3/model/ModelWriter;JLcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 337
    iget-wide v2, p1, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    .line 338
    iget-wide v2, p1, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v0}, Lcom/android/launcher3/model/ModelWriter;->-get0(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v2, p1, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "item: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " container being set to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 344
    iget-wide v2, p1, Lcom/android/launcher3/ItemInfo;->container:J

    .line 343
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 344
    const-string/jumbo v2, ", not in the list of folders"

    .line 343
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    const-string/jumbo v2, "ModelWriter"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v0}, Lcom/android/launcher3/model/ModelWriter;->-get0(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 353
    if-eqz v0, :cond_3

    .line 354
    iget-wide v2, v0, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 355
    iget-wide v2, v0, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 356
    :cond_1
    iget v2, v0, Lcom/android/launcher3/ItemInfo;->itemType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    monitor-exit v1

    .line 372
    return-void

    .line 361
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v2}, Lcom/android/launcher3/model/ModelWriter;->-get0(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 362
    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v2}, Lcom/android/launcher3/model/ModelWriter;->-get0(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 369
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v2}, Lcom/android/launcher3/model/ModelWriter;->-get0(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

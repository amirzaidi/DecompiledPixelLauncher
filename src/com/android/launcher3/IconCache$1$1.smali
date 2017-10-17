.class final Lcom/android/launcher3/IconCache$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/IconCache$1;

.field final synthetic val$caller:Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;

.field final synthetic val$info:Lcom/android/launcher3/ItemInfoWithIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher3/IconCache$1;Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;Lcom/android/launcher3/ItemInfoWithIcon;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/IconCache$1$1;->this$1:Lcom/android/launcher3/IconCache$1;

    iput-object p2, p0, Lcom/android/launcher3/IconCache$1$1;->val$caller:Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;

    iput-object p3, p0, Lcom/android/launcher3/IconCache$1$1;->val$info:Lcom/android/launcher3/ItemInfoWithIcon;

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/launcher3/IconCache$1$1;->val$caller:Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;

    iget-object v1, p0, Lcom/android/launcher3/IconCache$1$1;->val$info:Lcom/android/launcher3/ItemInfoWithIcon;

    invoke-interface {v0, v1}, Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;->reapplyItemInfo(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 411
    return-void
.end method

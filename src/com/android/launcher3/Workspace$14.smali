.class final Lcom/android/launcher3/Workspace$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$14;->this$0:Lcom/android/launcher3/Workspace;

    iput-wide p2, p0, Lcom/android/launcher3/Workspace$14;->val$id:J

    .line 3697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 3701
    if-eqz p1, :cond_0

    iget-wide v2, p1, Lcom/android/launcher3/ItemInfo;->id:J

    iget-wide v4, p0, Lcom/android/launcher3/Workspace$14;->val$id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.class final Lcom/android/launcher3/dynamicui/ExtractionUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/dynamicui/ExtractionUtils$1;->val$context:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ExtractionUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/dynamicui/ExtractionUtils;->-wrap0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ExtractionUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/dynamicui/ExtractionUtils;->startColorExtractionService(Landroid/content/Context;)V

    .line 55
    :cond_0
    return-void
.end method

.class final Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;
.super Landroid/support/v7/widget/h;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 274
    invoke-direct {p0}, Landroid/support/v7/widget/h;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->-get0(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 277
    return-void
.end method

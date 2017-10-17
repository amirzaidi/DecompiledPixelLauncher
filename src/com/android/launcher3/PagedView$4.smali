.class final Lcom/android/launcher3/PagedView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/PagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/PagedView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/PagedView$4;->this$0:Lcom/android/launcher3/PagedView;

    .line 2082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/android/launcher3/PagedView$4;->this$0:Lcom/android/launcher3/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->onEndReordering()V

    .line 2088
    iget-object v0, p0, Lcom/android/launcher3/PagedView$4;->this$0:Lcom/android/launcher3/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->enableFreeScroll()Z

    .line 2089
    return-void
.end method

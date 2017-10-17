.class final Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$2;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$2;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$2;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$2;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-static {v0, v2}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->-set0(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;Z)Z

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$2;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-static {v0, v2}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->-set1(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;Z)Z

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$2;->this$0:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->-wrap0(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)V

    .line 81
    return-void
.end method

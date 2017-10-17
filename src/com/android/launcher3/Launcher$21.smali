.class final Lcom/android/launcher3/Launcher$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$21;->this$0:Lcom/android/launcher3/Launcher;

    .line 2923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2929
    iget-object v0, p0, Lcom/android/launcher3/Launcher$21;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->-get0(Lcom/android/launcher3/Launcher;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocusFromTouch()Z

    .line 2930
    return-void
.end method

.class final Lcom/android/launcher3/Workspace$7;
.super Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Landroid/view/ViewGroup;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$7;->this$0:Lcom/android/launcher3/Workspace;

    .line 2203
    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;-><init>(Landroid/view/ViewGroup;I)V

    .line 1
    return-void
.end method


# virtual methods
.method protected enableAccessibleDrag(Z)V
    .locals 2

    .prologue
    .line 2207
    invoke-super {p0, p1}, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->enableAccessibleDrag(Z)V

    .line 2208
    iget-object v0, p0, Lcom/android/launcher3/Workspace$7;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/Workspace$7;->setEnableForLayout(Lcom/android/launcher3/CellLayout;Z)V

    .line 2212
    iget-object v1, p0, Lcom/android/launcher3/Workspace$7;->this$0:Lcom/android/launcher3/Workspace;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2213
    return-void

    .line 2212
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace$7;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    goto :goto_0
.end method

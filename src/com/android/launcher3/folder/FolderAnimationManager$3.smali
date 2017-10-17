.class final Lcom/android/launcher3/folder/FolderAnimationManager$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderAnimationManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderAnimationManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    .line 214
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 217
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 218
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-get0(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setTranslationX(F)V

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-get0(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setTranslationY(F)V

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-get0(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setTranslationZ(F)V

    .line 221
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-get0(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/Folder;->setScaleX(F)V

    .line 222
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$3;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-get0(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/Folder;->setScaleY(F)V

    .line 223
    return-void
.end method

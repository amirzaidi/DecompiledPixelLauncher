.class final Lcom/android/launcher3/folder/FolderIcon$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderIcon;

.field final synthetic val$previewImage:Lcom/android/launcher3/folder/PreviewImageView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/folder/PreviewImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon$4;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderIcon$4;->val$previewImage:Lcom/android/launcher3/folder/PreviewImageView;

    .line 631
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$4;->val$previewImage:Lcom/android/launcher3/folder/PreviewImageView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewImageView;->removeFromParent()V

    .line 636
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$4;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->setVisibility(I)V

    .line 637
    return-void
.end method

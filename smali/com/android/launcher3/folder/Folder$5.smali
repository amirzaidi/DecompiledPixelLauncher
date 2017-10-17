.class final Lcom/android/launcher3/folder/Folder$5;
.super Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;Landroid/view/ViewGroup;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$5;->this$0:Lcom/android/launcher3/folder/Folder;

    .line 291
    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;-><init>(Landroid/view/ViewGroup;I)V

    .line 1
    return-void
.end method


# virtual methods
.method protected enableAccessibleDrag(Z)V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0, p1}, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->enableAccessibleDrag(Z)V

    .line 297
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$5;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->-get0(Lcom/android/launcher3/folder/Folder;)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 298
    const/4 v0, 0x4

    .line 297
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 300
    return-void

    .line 299
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

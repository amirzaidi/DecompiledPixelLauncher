.class final Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

.field final synthetic val$cellX:I

.field final synthetic val$cellY:I

.field final synthetic val$cl:Lcom/android/launcher3/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;Lcom/android/launcher3/CellLayout;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$3;->this$1:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$3;->val$cl:Lcom/android/launcher3/CellLayout;

    iput p3, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$3;->val$cellX:I

    iput p4, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$3;->val$cellY:I

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$3;->this$1:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$3;->val$cl:Lcom/android/launcher3/CellLayout;

    iget v2, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$3;->val$cellX:I

    iget v3, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$3;->val$cellY:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->-wrap4(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;Lcom/android/launcher3/CellLayout;II)V

    .line 797
    return-void
.end method

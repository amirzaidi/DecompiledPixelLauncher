.class final Lcom/android/launcher3/folder/Folder$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;

.field final synthetic val$lastChild:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$14;->this$0:Lcom/android/launcher3/folder/Folder;

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder$14;->val$lastChild:Landroid/view/View;

    .line 1247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1250
    const/16 v0, 0x3d

    if-ne p2, v0, :cond_0

    .line 1251
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    .line 1252
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$14;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1253
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$14;->val$lastChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    return v0

    :cond_0
    move v0, v1

    .line 1250
    goto :goto_0

    .line 1255
    :cond_1
    return v1
.end method

.class final Lcom/android/launcher3/folder/Folder$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;

.field final synthetic val$item:Lcom/android/launcher3/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/ShortcutInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$16;->this$0:Lcom/android/launcher3/folder/Folder;

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder$16;->val$item:Lcom/android/launcher3/ShortcutInfo;

    .line 1392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$16;->val$item:Lcom/android/launcher3/ShortcutInfo;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

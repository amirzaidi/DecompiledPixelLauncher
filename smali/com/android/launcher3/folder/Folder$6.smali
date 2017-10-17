.class final Lcom/android/launcher3/folder/Folder$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$6;->this$0:Lcom/android/launcher3/folder/Folder;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$6;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ExtendedEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$6;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/Folder;->-set0(Lcom/android/launcher3/folder/Folder;Z)Z

    .line 347
    return-void
.end method

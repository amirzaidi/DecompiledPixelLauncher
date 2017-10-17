.class final Lcom/android/launcher3/Launcher$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$19;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$19;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/Launcher$19;->val$packageName:Ljava/lang/String;

    .line 2353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 2356
    iget-object v0, p0, Lcom/android/launcher3/Launcher$19;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$19;->val$v:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/Launcher$19;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Launcher;->-wrap0(Lcom/android/launcher3/Launcher;Landroid/view/View;Ljava/lang/String;)V

    .line 2357
    return-void
.end method

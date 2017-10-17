.class final Lcom/android/launcher3/model/LoaderTask$1;
.super Lcom/android/launcher3/util/Provider;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/LoaderTask;

.field final synthetic val$c:Lcom/android/launcher3/model/LoaderCursor;

.field final synthetic val$finalInfo:Lcom/android/launcher3/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/LoaderTask;Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/ShortcutInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask$1;->this$0:Lcom/android/launcher3/model/LoaderTask;

    iput-object p2, p0, Lcom/android/launcher3/model/LoaderTask$1;->val$c:Lcom/android/launcher3/model/LoaderCursor;

    iput-object p3, p0, Lcom/android/launcher3/model/LoaderTask$1;->val$finalInfo:Lcom/android/launcher3/ShortcutInfo;

    .line 464
    invoke-direct {p0}, Lcom/android/launcher3/util/Provider;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public get()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask$1;->val$c:Lcom/android/launcher3/model/LoaderCursor;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask$1;->val$finalInfo:Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/LoaderCursor;->loadIcon(Lcom/android/launcher3/ShortcutInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask$1;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

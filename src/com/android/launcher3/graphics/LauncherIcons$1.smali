.class final Lcom/android/launcher3/graphics/LauncherIcons$1;
.super Lcom/android/launcher3/util/Provider;
.source "SourceFile"


# instance fields
.field final synthetic val$fallbackIcon:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/graphics/LauncherIcons$1;->val$fallbackIcon:Landroid/graphics/Bitmap;

    .line 325
    invoke-direct {p0}, Lcom/android/launcher3/util/Provider;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public get()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherIcons$1;->val$fallbackIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/LauncherIcons$1;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

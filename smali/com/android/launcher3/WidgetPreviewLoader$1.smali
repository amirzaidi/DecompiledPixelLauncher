.class final Lcom/android/launcher3/WidgetPreviewLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/WidgetPreviewLoader;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/WidgetPreviewLoader;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/WidgetPreviewLoader$1;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iput-object p2, p0, Lcom/android/launcher3/WidgetPreviewLoader$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/android/launcher3/WidgetPreviewLoader$1;->call()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

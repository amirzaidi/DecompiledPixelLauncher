.class final Lcom/android/launcher3/dragndrop/DragView$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/dragndrop/DragView$3;

.field final synthetic val$info:Lcom/android/launcher3/ItemInfo;

.field final synthetic val$mask:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/DragView$3;Landroid/graphics/Path;Lcom/android/launcher3/ItemInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->this$1:Lcom/android/launcher3/dragndrop/DragView$3;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->val$mask:Landroid/graphics/Path;

    iput-object p3, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->val$info:Lcom/android/launcher3/ItemInfo;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 245
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->this$1:Lcom/android/launcher3/dragndrop/DragView$3;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->val$mask:Landroid/graphics/Path;

    invoke-static {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->-set5(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Path;)Landroid/graphics/Path;

    .line 246
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->this$1:Lcom/android/launcher3/dragndrop/DragView$3;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->this$1:Lcom/android/launcher3/dragndrop/DragView$3;

    iget-object v1, v1, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v1}, Lcom/android/launcher3/dragndrop/DragView;->-get2(Lcom/android/launcher3/dragndrop/DragView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->addView(Landroid/view/View;)V

    .line 247
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->this$1:Lcom/android/launcher3/dragndrop/DragView$3;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->this$1:Lcom/android/launcher3/dragndrop/DragView$3;

    iget-object v1, v1, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v1}, Lcom/android/launcher3/dragndrop/DragView;->-get4(Lcom/android/launcher3/dragndrop/DragView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->addView(Landroid/view/View;)V

    .line 248
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->this$1:Lcom/android/launcher3/dragndrop/DragView$3;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/dragndrop/DragView;->setWillNotDraw(Z)V

    .line 250
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->val$info:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/ItemInfo;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 252
    invoke-virtual {v0, v2}, Lcom/android/launcher3/FastBitmapDrawable;->setIsDisabled(Z)V

    .line 253
    invoke-virtual {v0}, Lcom/android/launcher3/FastBitmapDrawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->this$1:Lcom/android/launcher3/dragndrop/DragView$3;

    iget-object v1, v1, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v1}, Lcom/android/launcher3/dragndrop/DragView;->-get2(Lcom/android/launcher3/dragndrop/DragView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 255
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->this$1:Lcom/android/launcher3/dragndrop/DragView$3;

    iget-object v1, v1, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v1}, Lcom/android/launcher3/dragndrop/DragView;->-get4(Lcom/android/launcher3/dragndrop/DragView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 256
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView$3$1;->this$1:Lcom/android/launcher3/dragndrop/DragView$3;

    iget-object v1, v1, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v1}, Lcom/android/launcher3/dragndrop/DragView;->-get1(Lcom/android/launcher3/dragndrop/DragView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 258
    :cond_0
    return-void
.end method

.class final Lcom/android/launcher3/dragndrop/DragView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/DragView;

.field final synthetic val$info:Lcom/android/launcher3/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/ItemInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/DragView$3;->val$info:Lcom/android/launcher3/ItemInfo;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 217
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v0}, Lcom/android/launcher3/dragndrop/DragView;->-get5(Lcom/android/launcher3/dragndrop/DragView;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    .line 218
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView$3;->val$info:Lcom/android/launcher3/ItemInfo;

    invoke-static {v0, v3, v1, v2}, Lcom/android/launcher3/dragndrop/DragView;->-wrap2(Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/LauncherAppState;[Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 221
    instance-of v3, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v3, :cond_0

    .line 222
    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v3}, Lcom/android/launcher3/dragndrop/DragView;->-get3(Lcom/android/launcher3/dragndrop/DragView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 223
    iget-object v4, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v4}, Lcom/android/launcher3/dragndrop/DragView;->-get3(Lcom/android/launcher3/dragndrop/DragView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 224
    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 225
    iget-object v5, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v5}, Lcom/android/launcher3/dragndrop/DragView;->-get5(Lcom/android/launcher3/dragndrop/DragView;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 226
    const v6, 0x7f0b006e

    .line 225
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 227
    iget-object v6, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v6}, Lcom/android/launcher3/dragndrop/DragView;->-get5(Lcom/android/launcher3/dragndrop/DragView;)Lcom/android/launcher3/Launcher;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/graphics/IconNormalizer;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/IconNormalizer;

    move-result-object v6

    invoke-virtual {v6, v0, v7, v7, v7}, Lcom/android/launcher3/graphics/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v6

    .line 228
    int-to-float v7, v3

    sub-float/2addr v7, v5

    int-to-float v8, v3

    div-float/2addr v7, v8

    .line 227
    mul-float/2addr v6, v7

    .line 229
    invoke-virtual {v0, v11, v11, v3, v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 231
    iget-object v7, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v7, v0, v6}, Lcom/android/launcher3/dragndrop/DragView;->-wrap0(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/drawable/AdaptiveIconDrawable;F)Landroid/graphics/Path;

    move-result-object v7

    .line 232
    iget-object v8, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v9, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v9, v10, v6}, Lcom/android/launcher3/dragndrop/DragView;->-wrap4(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/drawable/Drawable;F)Landroid/widget/ImageView;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/launcher3/dragndrop/DragView;->-set4(Lcom/android/launcher3/dragndrop/DragView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 233
    iget-object v8, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v9, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v9, v0, v6}, Lcom/android/launcher3/dragndrop/DragView;->-wrap4(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/drawable/Drawable;F)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/launcher3/dragndrop/DragView;->-set3(Lcom/android/launcher3/dragndrop/DragView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 234
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v6, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    neg-int v8, v3

    div-int/lit8 v8, v8, 0x4

    div-int/lit8 v9, v3, 0x4

    sget-object v10, Landroid/support/a/b;->agN:Landroid/support/a/i;

    invoke-static {v6, v8, v9, v10}, Lcom/android/launcher3/dragndrop/DragView;->-wrap3(Lcom/android/launcher3/dragndrop/DragView;IILandroid/support/a/i;)Landroid/support/a/a;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/launcher3/dragndrop/DragView;->-set6(Lcom/android/launcher3/dragndrop/DragView;Landroid/support/a/a;)Landroid/support/a/a;

    .line 235
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v6, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    neg-int v8, v4

    div-int/lit8 v8, v8, 0x4

    div-int/lit8 v9, v4, 0x4

    sget-object v10, Landroid/support/a/b;->agJ:Landroid/support/a/i;

    invoke-static {v6, v8, v9, v10}, Lcom/android/launcher3/dragndrop/DragView;->-wrap3(Lcom/android/launcher3/dragndrop/DragView;IILandroid/support/a/i;)Landroid/support/a/a;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/launcher3/dragndrop/DragView;->-set7(Lcom/android/launcher3/dragndrop/DragView;Landroid/support/a/a;)Landroid/support/a/a;

    .line 237
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v6, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v8, p0, Lcom/android/launcher3/dragndrop/DragView$3;->val$info:Lcom/android/launcher3/ItemInfo;

    aget-object v2, v2, v11

    invoke-static {v6, v8, v1, v2}, Lcom/android/launcher3/dragndrop/DragView;->-wrap1(Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/LauncherAppState;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->-set2(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 238
    float-to-int v0, v5

    div-int/lit8 v0, v0, 0x2

    .line 239
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView$3;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v1}, Lcom/android/launcher3/dragndrop/DragView;->-get1(Lcom/android/launcher3/dragndrop/DragView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sub-int v2, v3, v0

    sub-int v3, v4, v0

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 241
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/launcher3/dragndrop/DragView$3$1;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView$3;->val$info:Lcom/android/launcher3/ItemInfo;

    invoke-direct {v1, p0, v7, v2}, Lcom/android/launcher3/dragndrop/DragView$3$1;-><init>(Lcom/android/launcher3/dragndrop/DragView$3;Landroid/graphics/Path;Lcom/android/launcher3/ItemInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    :cond_0
    return-void
.end method

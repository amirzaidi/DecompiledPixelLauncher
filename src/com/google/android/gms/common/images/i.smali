.class public abstract Lcom/google/android/gms/common/images/i;
.super Ljava/lang/Object;


# instance fields
.field protected mF:I

.field final mG:Lcom/google/android/gms/common/images/f;


# direct methods
.method private pI(Landroid/content/Context;Lcom/google/android/gms/internal/cy;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method pH(Landroid/content/Context;Lcom/google/android/gms/internal/cy;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/images/i;->mF:I

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0, p3, v2, v2}, Lcom/google/android/gms/common/images/i;->pw(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/images/i;->mF:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/images/i;->pI(Landroid/content/Context;Lcom/google/android/gms/internal/cy;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method pJ(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .locals 3

    invoke-static {p2}, Lcom/google/android/gms/common/internal/m;->ko(Ljava/lang/Object;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p3, v1, v2}, Lcom/google/android/gms/common/images/i;->pw(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method protected abstract pw(Landroid/graphics/drawable/Drawable;ZZZ)V
.end method

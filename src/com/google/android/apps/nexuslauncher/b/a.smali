.class public Lcom/google/android/apps/nexuslauncher/b/a;
.super Lcom/android/launcher3/FastBitmapDrawable;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private fa:Lcom/google/android/apps/nexuslauncher/b/b;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/google/android/apps/nexuslauncher/b/b;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 20
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/b/a;->fa:Lcom/google/android/apps/nexuslauncher/b/b;

    .line 21
    return-void
.end method

.method private dD()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 56
    invoke-virtual {p0, p0}, Lcom/google/android/apps/nexuslauncher/b/a;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 59
    rem-long v2, v0, v4

    sub-long/2addr v0, v2

    add-long/2addr v0, v4

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/b/a;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 60
    return-void
.end method


# virtual methods
.method public dE(Lcom/google/android/apps/nexuslauncher/b/b;)V
    .locals 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/b/a;->fa:Lcom/google/android/apps/nexuslauncher/b/b;

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->fa:Lcom/google/android/apps/nexuslauncher/b/b;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->fa:Lcom/google/android/apps/nexuslauncher/b/b;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/b/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/b/a;->invalidateSelf()V

    .line 68
    return-void
.end method

.method public dF(Ljava/util/TimeZone;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->fa:Lcom/google/android/apps/nexuslauncher/b/b;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->fa:Lcom/google/android/apps/nexuslauncher/b/b;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/nexuslauncher/b/b;->dH(Ljava/util/TimeZone;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/b/a;->invalidateSelf()V

    .line 76
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/android/launcher3/FastBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 34
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->fa:Lcom/google/android/apps/nexuslauncher/b/b;

    if-nez v0, :cond_0

    .line 35
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->fa:Lcom/google/android/apps/nexuslauncher/b/b;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/b/b;->dG()Z

    .line 39
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/b/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/b/a;->fa:Lcom/google/android/apps/nexuslauncher/b/b;

    iget v1, v1, Lcom/google/android/apps/nexuslauncher/b/b;->scale:F

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/b/a;->fa:Lcom/google/android/apps/nexuslauncher/b/b;

    iget v2, v2, Lcom/google/android/apps/nexuslauncher/b/b;->scale:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->fa:Lcom/google/android/apps/nexuslauncher/b/b;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 43
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/b/a;->dD()V

    .line 44
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/android/launcher3/FastBitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 26
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->fa:Lcom/google/android/apps/nexuslauncher/b/b;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->fa:Lcom/google/android/apps/nexuslauncher/b/b;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 29
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->fa:Lcom/google/android/apps/nexuslauncher/b/b;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/b/b;->dG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/b/a;->invalidateSelf()V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/b/a;->dD()V

    goto :goto_0
.end method

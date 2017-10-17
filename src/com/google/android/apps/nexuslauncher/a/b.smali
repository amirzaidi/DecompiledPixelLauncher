.class public Lcom/google/android/apps/nexuslauncher/a/b;
.super Lcom/android/launcher3/FastBitmapDrawable;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final dr:Lcom/google/android/apps/nexuslauncher/a/a;

.field private final ds:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/google/android/apps/nexuslauncher/a/a;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 23
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/b;->ds:Ljava/util/Calendar;

    .line 24
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/a/b;->dr:Lcom/google/android/apps/nexuslauncher/a/a;

    .line 25
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x64

    .line 29
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/BubbleTextView;

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/a/b;->drawInternal(Landroid/graphics/Canvas;)V

    .line 31
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/b;->dr:Lcom/google/android/apps/nexuslauncher/a/a;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/a/a;->cO()Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    invoke-super {p0, p1}, Lcom/android/launcher3/FastBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 36
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/b;->ds:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/a/b;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/a/b;->dr:Lcom/google/android/apps/nexuslauncher/a/a;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/a/b;->ds:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/nexuslauncher/a/a;->cM(Ljava/util/Calendar;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 44
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 46
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/a/b;->dr:Lcom/google/android/apps/nexuslauncher/a/a;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/a/a;->cN()F

    move-result v2

    .line 47
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    invoke-virtual {p1, v2, v2, v3, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 48
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 50
    invoke-virtual {p0, p0}, Lcom/google/android/apps/nexuslauncher/a/b;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 53
    rem-long v2, v0, v4

    sub-long/2addr v0, v2

    add-long/2addr v0, v4

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/a/b;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 54
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/a/b;->invalidateSelf()V

    .line 59
    return-void
.end method

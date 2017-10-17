.class public Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;
.super Lcom/google/android/apps/nexuslauncher/qsb/e;
.source "SourceFile"


# instance fields
.field private cg:Z

.field private ch:Z

.field private ci:Landroid/animation/AnimatorSet;

.field private cj:Z

.field private final ck:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/nexuslauncher/qsb/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/h;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/h;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->ck:Landroid/content/BroadcastReceiver;

    .line 68
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bO()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cg:Z

    .line 69
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bJ()V

    .line 70
    invoke-virtual {p0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/qsb/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 72
    return-void
.end method

.method static bH(Lcom/android/launcher3/Launcher;)I
    .locals 3

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 250
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 249
    add-int/2addr v0, v1

    return v0
.end method

.method private bI()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cj:Z

    .line 199
    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->ch:Z

    .line 200
    invoke-direct {p0, v1, v1}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bQ(ZZ)V

    .line 201
    return-void
.end method

.method private bJ()V
    .locals 3

    .prologue
    .line 97
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 98
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cg:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120017

    .line 97
    :goto_0
    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 99
    const v0, 0x7f040026

    invoke-static {v1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 100
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cg:Z

    if-eqz v0, :cond_1

    const v0, -0x33000001    # -1.3421772E8f

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bz(I)V

    .line 101
    return-void

    .line 98
    :cond_0
    const v0, 0x7f120016

    goto :goto_0

    .line 100
    :cond_1
    const v0, -0x66050506

    goto :goto_1
.end method

.method private bK(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 204
    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cj:Z

    .line 205
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->ch:Z

    if-eqz v0, :cond_0

    .line 206
    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->ch:Z

    .line 207
    invoke-direct {p0, v1, p1}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bQ(ZZ)V

    .line 209
    :cond_0
    return-void
.end method

.method private bL()Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 157
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 158
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getLocationInWindow([I)V

    .line 160
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 161
    aget v2, v0, v4

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 162
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 164
    const v0, 0x7f0e0040

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cd:Landroid/view/View;

    invoke-static {v1, v0, v2}, Lcom/google/android/apps/nexuslauncher/qsb/f;->bV(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private bM()V
    .locals 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cg:Z

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bO()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 89
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cg:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cg:Z

    .line 90
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->removeAllViews()V

    .line 91
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bJ()V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bE()Landroid/content/SharedPreferences;

    .line 94
    :cond_0
    return-void
.end method

.method private bN()V
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cj:Z

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bI()V

    goto :goto_0
.end method

.method private bO()Z
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c008c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bP()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 130
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/f;

    invoke-direct {v0, p0, v5}, Lcom/google/android/apps/nexuslauncher/qsb/f;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/e;Z)V

    .line 131
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->build()[B

    move-result-object v1

    .line 132
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v3}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->dY()Lcom/google/android/libraries/a/a/d;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/google/android/libraries/a/a/d;->startSearch([BLandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 134
    const-string/jumbo v1, "key_hotseat_qsb_tap_count"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "key_hotseat_qsb_tap_count"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bN()V

    .line 138
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bL()Landroid/content/Intent;

    move-result-object v1

    new-instance v3, Lcom/google/android/apps/nexuslauncher/qsb/i;

    invoke-direct {v3, p0}, Lcom/google/android/apps/nexuslauncher/qsb/i;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)V

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 153
    return-void
.end method

.method private bQ(ZZ)V
    .locals 10

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 212
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->ci:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->ci:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 216
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->ci:Landroid/animation/AnimatorSet;

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->ci:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/j;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/j;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 226
    if-eqz p1, :cond_2

    .line 227
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->ci:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 229
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 230
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 229
    new-array v2, v6, [F

    .line 230
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v3}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Hotseat;->getHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    aput v3, v2, v5

    .line 229
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 231
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 232
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->ci:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 233
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->ci:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->ci:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 243
    if-nez p2, :cond_1

    .line 244
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->ci:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 246
    :cond_1
    return-void

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->ci:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v6, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 236
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 237
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 236
    new-array v2, v6, [F

    .line 237
    aput v7, v2, v5

    .line 236
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 238
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 239
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->ci:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 240
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->ci:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0
.end method

.method static synthetic bR(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->ci:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic bS(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->ci:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic bT(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bM()V

    return-void
.end method

.method static synthetic bU(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bN()V

    return-void
.end method


# virtual methods
.method protected bw(I)I
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int v0, v1, v0

    return v0
.end method

.method protected by()V
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bH(Lcom/android/launcher3/Launcher;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 118
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 76
    invoke-super {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->onAttachedToWindow()V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->ck:Landroid/content/BroadcastReceiver;

    .line 78
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/e;->onClick(Landroid/view/View;)V

    .line 123
    if-ne p1, p0, :cond_0

    .line 124
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bA(I)V

    .line 125
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bP()V

    .line 127
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->onDetachedFromWindow()V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->ck:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/e;->onWindowFocusChanged(Z)V

    .line 180
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cj:Z

    if-eqz v0, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bI()V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    if-eqz p1, :cond_0

    .line 183
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bK(Z)V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/e;->onWindowVisibilityChanged(I)V

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bK(Z)V

    .line 195
    return-void
.end method

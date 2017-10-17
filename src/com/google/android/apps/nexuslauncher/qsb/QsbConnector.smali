.class public Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final l:Landroid/util/Property;


# instance fields
.field private m:I

.field private n:Landroid/animation/ObjectAnimator;

.field private final o:I

.field private final p:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/g;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "overlayAlpha"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/nexuslauncher/qsb/g;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 30
    sput-object v0, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->l:Landroid/util/Property;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/h;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/h;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;)V

    .line 43
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->p:Landroid/content/BroadcastReceiver;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->m:I

    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->o:I

    .line 67
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->n:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->n:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 137
    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->n:Landroid/animation/ObjectAnimator;

    .line 139
    :cond_0
    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 88
    const-string/jumbo v2, "com.google.android.googlequicksearchbox"

    .line 87
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 89
    const-string/jumbo v2, "bg_pixel_qsb_connector"

    const-string/jumbo v3, "drawable"

    const-string/jumbo v4, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 90
    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 98
    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->setBackgroundResource(I)V

    .line 102
    :goto_1
    return-void

    .line 93
    :catch_0
    move-exception v1

    .line 95
    const-string/jumbo v2, "QsbConnector"

    const-string/jumbo v3, "Error loading connector background"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private j(I)V
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->m:I

    if-eq v0, p1, :cond_0

    .line 143
    iput p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->m:I

    .line 144
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->invalidate()V

    .line 146
    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;)I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->m:I

    return v0
.end method

.method static synthetic l(Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->i()V

    return-void
.end method

.method static synthetic m(Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->j(I)V

    return-void
.end method


# virtual methods
.method public g(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    if-eqz p1, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->h()V

    .line 125
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->j(I)V

    .line 126
    sget-object v0, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->l:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->n:Landroid/animation/ObjectAnimator;

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->n:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->n:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->j(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 71
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 72
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->i()V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->p:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 74
    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "android.intent.action.PACKAGE_CHANGED"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 75
    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 73
    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/util/a;->cA([Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->m:I

    if-lez v0, :cond_0

    .line 110
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->o:I

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->m:I

    invoke-static {v0, v1}, Landroid/support/v4/b/a;->arc(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 112
    :cond_0
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->h()V

    .line 119
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    return v0
.end method

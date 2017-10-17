.class public abstract Lcom/google/android/apps/nexuslauncher/qsb/f;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static T:Ljava/lang/String;

.field private static U:Ljava/lang/String;


# instance fields
.field protected P:Landroid/view/View;

.field protected final Q:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

.field protected R:Z

.field protected S:Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;

.field private V:F

.field private W:Landroid/animation/ObjectAnimator;

.field private final X:Landroid/content/BroadcastReceiver;

.field private Y:Z

.field private Z:I

.field private aa:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/qsb/f;->T:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string/jumbo v0, "android.intent.action.VOICE_ASSIST"

    sput-object v0, Lcom/google/android/apps/nexuslauncher/qsb/f;->U:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "com.google.android.googlequicksearchbox.TEXT_ASSIST"

    sput-object v0, Lcom/google/android/apps/nexuslauncher/qsb/f;->T:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->Z:I

    .line 93
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/q;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/q;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/f;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->X:Landroid/content/BroadcastReceiver;

    .line 102
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->Q:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    .line 103
    return-void
.end method

.method private U()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->aa:Z

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->Y:Z

    .line 305
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->P:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->P:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 308
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->W:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->W:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->W:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->S:Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->S:Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->setAlpha(F)V

    .line 316
    :cond_1
    return-void
.end method

.method private V(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 319
    iput-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->aa:Z

    .line 320
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->Y:Z

    if-eqz v0, :cond_1

    .line 321
    iput-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->Y:Z

    .line 322
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->P:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->P:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 325
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->W:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->W:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 328
    if-nez p1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->W:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->S:Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->S:Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->setAlpha(F)V

    .line 335
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->S:Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->g(Z)V

    .line 338
    :cond_1
    return-void
.end method

.method private W(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 234
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 235
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->P:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 237
    aget v1, v0, v3

    .line 238
    aget v2, v0, v5

    .line 239
    aget v3, v0, v3

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->P:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 240
    aget v0, v0, v5

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->P:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    .line 241
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 243
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0, v4, v0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->v(Landroid/graphics/Rect;Landroid/content/Intent;)V

    .line 245
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 247
    const v1, 0x7f0e0063

    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 248
    if-eqz v1, :cond_0

    .line 249
    const-string/jumbo v2, "source_mic_offset"

    invoke-direct {p0, v1, v4}, Lcom/google/android/apps/nexuslauncher/qsb/f;->X(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 251
    :cond_0
    const-string/jumbo v1, "source_round_left"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 252
    const-string/jumbo v1, "source_round_right"

    .line 251
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 253
    const-string/jumbo v1, "source_logo_offset"

    const v2, 0x7f0e0062

    invoke-virtual {p0, v2}, Lcom/google/android/apps/nexuslauncher/qsb/f;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/google/android/apps/nexuslauncher/qsb/f;->X(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v2

    .line 251
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 254
    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 255
    const/high16 v1, 0x50000000

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private X(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 260
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 261
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 263
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 264
    const/4 v2, 0x0

    aget v2, v0, v2

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 265
    const/4 v2, 0x1

    aget v0, v0, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 266
    return-object v1
.end method

.method private Y()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 354
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/util/a;->cB(Landroid/content/Context;)Z

    move-result v3

    .line 355
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->P:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 356
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->P:Landroid/view/View;

    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->S:Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->S:Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->setVisibility(I)V

    .line 361
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 356
    goto :goto_0

    :cond_3
    move v1, v2

    .line 359
    goto :goto_1
.end method

.method private Z(Landroid/content/SharedPreferences;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 193
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/f;->w(Landroid/content/SharedPreferences;)Z

    move-result v2

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->S:Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 195
    :goto_0
    if-eqz v2, :cond_2

    xor-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    .line 196
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->Q:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 197
    const v2, 0x7f040022

    .line 196
    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->S:Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->S:Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/f;->addView(Landroid/view/View;I)V

    .line 203
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 194
    goto :goto_0

    .line 199
    :cond_2
    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->S:Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->removeView(Landroid/view/View;)V

    .line 201
    iput-object v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->S:Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;

    goto :goto_1
.end method

.method private aa()V
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->aa:Z

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->U()V

    goto :goto_0
.end method

.method private ab(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 342
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    const v2, 0x10008000

    .line 342
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 344
    const-string/jumbo v2, "com.google.android.googlequicksearchbox"

    .line 342
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 347
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 348
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.google.android.googlequicksearchbox"

    const-string/jumbo v3, ".SearchActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 347
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->showAppDetailsForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method static synthetic ac(Lcom/google/android/apps/nexuslauncher/qsb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->Y()V

    return-void
.end method

.method static synthetic ad(Lcom/google/android/apps/nexuslauncher/qsb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->aa()V

    return-void
.end method

.method static synthetic ae(Lcom/google/android/apps/nexuslauncher/qsb/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/f;->ab(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public G(Landroid/content/SharedPreferences;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 106
    const-string/jumbo v0, "opa_enabled"

    invoke-interface {p1, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 107
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->isDemoUser()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->R:Z

    .line 108
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->R:Z

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->u(Z)I

    move-result v0

    .line 110
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->Z:I

    if-ne v0, v2, :cond_1

    .line 111
    return-void

    :cond_0
    move v0, v1

    .line 107
    goto :goto_0

    .line 114
    :cond_1
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->Z:I

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->P:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->P:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->removeView(Landroid/view/View;)V

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->Z:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->P:Landroid/view/View;

    .line 119
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    const v2, 0x7f0b009b

    .line 119
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->V:F

    .line 121
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->P:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->addView(Landroid/view/View;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->P:Landroid/view/View;

    .line 124
    const-string/jumbo v2, "elevation"

    .line 123
    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 124
    const/4 v4, 0x0

    aput v4, v3, v1

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->V:F

    aput v1, v3, v5

    .line 123
    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->W:Landroid/animation/ObjectAnimator;

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->W:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 127
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->Y:Z

    if-eqz v0, :cond_3

    .line 128
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->U()V

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->P:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->P:Landroid/view/View;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/b;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/qsb/b;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 133
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->R:Z

    if-eqz v0, :cond_4

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->P:Landroid/view/View;

    const v1, 0x7f0e0063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    :cond_4
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 145
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 148
    const-string/jumbo v1, "com.android.launcher3.device.prefs"

    .line 147
    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 149
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->G(Landroid/content/SharedPreferences;)V

    .line 150
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->Q:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->useVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 154
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 155
    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->Z(Landroid/content/SharedPreferences;)V

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->X:Landroid/content/BroadcastReceiver;

    .line 159
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.intent.action.PACKAGE_CHANGED"

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/util/a;->cA([Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v2

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->Y()V

    .line 161
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->Q:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/qsb/c;->p(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->Q:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 209
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->cz(I)V

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0063

    if-ne v0, v1, :cond_1

    .line 214
    sget-object v0, Lcom/google/android/apps/nexuslauncher/qsb/f;->U:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->ab(Ljava/lang/String;)V

    .line 230
    :goto_1
    return-void

    .line 211
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 216
    :cond_1
    const-string/jumbo v0, "com.google.nexuslauncher.FAST_TEXT_SEARCH"

    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->W(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 217
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Lcom/google/android/apps/nexuslauncher/qsb/r;

    invoke-direct {v3, p0}, Lcom/google/android/apps/nexuslauncher/qsb/r;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/f;)V

    .line 228
    const/4 v5, 0x0

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    .line 217
    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 165
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 166
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 167
    const-string/jumbo v1, "com.android.launcher3.device.prefs"

    const/4 v2, 0x0

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->Q:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->useVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->X:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 175
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 179
    const-string/jumbo v0, "opa_enabled"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/f;->G(Landroid/content/SharedPreferences;)V

    .line 181
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->Y()V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const-string/jumbo v0, "pref_enable_minus_one"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/f;->Z(Landroid/content/SharedPreferences;)V

    .line 184
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->Y()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 287
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 289
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->aa:Z

    if-eqz v0, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->U()V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    if-eqz p1, :cond_0

    .line 292
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->V(Z)V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->V(Z)V

    .line 300
    return-void
.end method

.method protected abstract u(Z)I
.end method

.method protected v(Landroid/graphics/Rect;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method protected w(Landroid/content/SharedPreferences;)Z
    .locals 2

    .prologue
    .line 189
    const-string/jumbo v0, "pref_enable_minus_one"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

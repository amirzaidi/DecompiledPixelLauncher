.class public Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;
.super Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;
.source "SourceFile"


# instance fields
.field private eR:Landroid/icu/text/DateFormat;

.field private final eS:Landroid/content/BroadcastReceiver;

.field private eT:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Lcom/google/android/apps/nexuslauncher/graphics/a;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/graphics/a;-><init>(Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->eS:Landroid/content/BroadcastReceiver;

    .line 40
    return-void
.end method

.method private dr(Z)V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->eR:Landroid/icu/text/DateFormat;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c009d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->eR:Landroid/icu/text/DateFormat;

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->eR:Landroid/icu/text/DateFormat;

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->eR:Landroid/icu/text/DateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method

.method private ds()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->eS:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    return-void
.end method

.method private dt()V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->eS:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 65
    return-void
.end method

.method static synthetic du(Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->dr(Z)V

    return-void
.end method


# virtual methods
.method public onVisibilityAggregated(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->onVisibilityAggregated(Z)V

    .line 45
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->eT:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 46
    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->eT:Z

    .line 47
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->ds()V

    .line 48
    invoke-direct {p0, v1}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->dr(Z)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->eT:Z

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->dt()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->eT:Z

    goto :goto_0
.end method

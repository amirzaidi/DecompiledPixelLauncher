.class public Lcom/google/android/apps/nexuslauncher/qsb/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static INITIAL_LOAD_TIMEOUT:J

.field private static O:Lcom/google/android/apps/nexuslauncher/qsb/d;


# instance fields
.field private K:Lcom/google/android/apps/nexuslauncher/qsb/a;

.field private L:Z

.field private final M:Lcom/google/android/apps/nexuslauncher/util/c;

.field private final N:Lcom/android/launcher3/Alarm;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/google/android/apps/nexuslauncher/qsb/d;->INITIAL_LOAD_TIMEOUT:J

    .line 24
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->L:Z

    .line 58
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->mListeners:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Lcom/google/android/apps/nexuslauncher/util/c;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/util/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->M:Lcom/google/android/apps/nexuslauncher/util/c;

    .line 61
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->N:Lcom/android/launcher3/Alarm;

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->N:Lcom/android/launcher3/Alarm;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/o;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/o;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/d;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 69
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/d;->P()V

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->N:Lcom/android/launcher3/Alarm;

    sget-wide v2, Lcom/google/android/apps/nexuslauncher/qsb/d;->INITIAL_LOAD_TIMEOUT:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->K:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/d;->O(Lcom/google/android/apps/nexuslauncher/qsb/a;)V

    .line 74
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/p;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/p;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/d;)V

    .line 79
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    .line 80
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    aput-object v2, v1, v4

    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 81
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 79
    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/util/a;->cA([Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    return-void
.end method

.method private O(Lcom/google/android/apps/nexuslauncher/qsb/a;)V
    .locals 6

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->M:Lcom/google/android/apps/nexuslauncher/util/c;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/util/c;->cE()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    if-nez v0, :cond_0

    .line 90
    return-void

    .line 92
    :cond_0
    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-direct {v1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/a;-><init>(Landroid/os/Bundle;)V

    .line 93
    iget-object v0, v1, Lcom/google/android/apps/nexuslauncher/qsb/a;->d:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    .line 94
    iget v0, v1, Lcom/google/android/apps/nexuslauncher/qsb/a;->b:I

    iget v2, p1, Lcom/google/android/apps/nexuslauncher/qsb/a;->b:I

    if-ne v0, v2, :cond_1

    .line 95
    iget-wide v2, v1, Lcom/google/android/apps/nexuslauncher/qsb/a;->a:J

    iget-wide v4, p1, Lcom/google/android/apps/nexuslauncher/qsb/a;->a:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 96
    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 97
    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->K:Lcom/google/android/apps/nexuslauncher/qsb/a;

    .line 98
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/d;->R()V

    .line 100
    :cond_1
    return-void
.end method

.method private P()V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/nexuslauncher/qsb/a;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->K:Lcom/google/android/apps/nexuslauncher/qsb/a;

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.google.android.apps.gsa.weatherwidget.ENABLE_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    const-string/jumbo v2, "com.google.android.googlequicksearchbox"

    .line 108
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 110
    const/high16 v2, 0x10000000

    .line 108
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method private Q(Lcom/android/launcher3/Alarm;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->K:Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->d:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->L:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/nexuslauncher/qsb/a;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->K:Lcom/google/android/apps/nexuslauncher/qsb/a;

    .line 136
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/d;->R()V

    .line 138
    :cond_1
    return-void
.end method

.method private R()V
    .locals 4

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->L:Z

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/qsb/e;

    .line 124
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->K:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-interface {v0, v2}, Lcom/google/android/apps/nexuslauncher/qsb/e;->D(Lcom/google/android/apps/nexuslauncher/qsb/a;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->N:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->K:Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->d:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->N:Lcom/android/launcher3/Alarm;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->K:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 131
    :cond_1
    return-void
.end method

.method static synthetic S(Lcom/google/android/apps/nexuslauncher/qsb/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/d;->P()V

    return-void
.end method

.method static synthetic T(Lcom/google/android/apps/nexuslauncher/qsb/d;Lcom/android/launcher3/Alarm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/d;->Q(Lcom/android/launcher3/Alarm;)V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/qsb/d;
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 43
    sget-object v0, Lcom/google/android/apps/nexuslauncher/qsb/d;->O:Lcom/google/android/apps/nexuslauncher/qsb/d;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/qsb/d;->O:Lcom/google/android/apps/nexuslauncher/qsb/d;

    .line 46
    :cond_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/qsb/d;->O:Lcom/google/android/apps/nexuslauncher/qsb/d;

    return-object v0
.end method


# virtual methods
.method public L(Lcom/google/android/apps/nexuslauncher/qsb/e;)Lcom/google/android/apps/nexuslauncher/qsb/a;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->L:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->K:Lcom/google/android/apps/nexuslauncher/qsb/a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public M(Lcom/google/android/apps/nexuslauncher/qsb/e;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method public N(Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/android/apps/nexuslauncher/qsb/a;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->K:Lcom/google/android/apps/nexuslauncher/qsb/a;

    .line 116
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/d;->R()V

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->M:Lcom/google/android/apps/nexuslauncher/util/c;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->K:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/util/c;->cG(Landroid/os/Bundle;)V

    .line 119
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 162
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "WeatherManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->K:Lcom/google/android/apps/nexuslauncher/qsb/a;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mCachedData = null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  views "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->K:Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/qsb/a;->d:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  gsaVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->K:Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget v1, v1, Lcom/google/android/apps/nexuslauncher/qsb/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  gsaUpdateTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->K:Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget-wide v2, v1, Lcom/google/android/apps/nexuslauncher/qsb/a;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  publishTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->K:Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget-wide v2, v1, Lcom/google/android/apps/nexuslauncher/qsb/a;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  elapsedDuration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->K:Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget-wide v4, v1, Lcom/google/android/apps/nexuslauncher/qsb/a;->c:J

    sub-long/2addr v2, v4

    .line 172
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

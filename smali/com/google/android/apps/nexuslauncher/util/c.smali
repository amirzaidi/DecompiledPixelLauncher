.class public Lcom/google/android/apps/nexuslauncher/util/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final de:Landroid/appwidget/AppWidgetManager;

.field private final df:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/util/c;->de:Landroid/appwidget/AppWidgetManager;

    .line 32
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/util/c;->de:Landroid/appwidget/AppWidgetManager;

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/util/c;->cF(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/util/c;->df:I

    .line 33
    return-void
.end method

.method private cF(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)I
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 46
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 48
    const-string/jumbo v0, "bundle_store_widget_id"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 49
    if-ne v3, v2, :cond_2

    move v0, v1

    .line 51
    :goto_0
    new-instance v5, Landroid/content/ComponentName;

    const-class v6, Lcom/google/android/apps/nexuslauncher/util/DummyWidget;

    invoke-direct {v5, p1, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    if-nez v0, :cond_5

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/util/c;->de:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 58
    :cond_0
    :goto_1
    if-eqz v1, :cond_4

    .line 59
    new-instance v1, Landroid/appwidget/AppWidgetHost;

    const/16 v0, 0x800

    invoke-direct {v1, p1, v0}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 61
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 64
    if-eqz v5, :cond_3

    .line 65
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 66
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/util/c;->de:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3, v0, v5}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 67
    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    move v0, v2

    .line 71
    :cond_1
    :goto_2
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "bundle_store_widget_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    :goto_3
    return v0

    .line 49
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_3

    :cond_5
    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public cE()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 36
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/util/c;->df:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/util/c;->de:Landroid/appwidget/AppWidgetManager;

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/util/c;->df:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cG(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/util/c;->df:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/util/c;->de:Landroid/appwidget/AppWidgetManager;

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/util/c;->df:I

    invoke-virtual {v0, v1, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    .line 43
    :cond_0
    return-void
.end method

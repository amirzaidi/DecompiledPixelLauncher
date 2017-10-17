.class public Lcom/google/android/apps/nexuslauncher/qsb/WeatherUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 18
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/d;->get(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/qsb/d;

    move-result-object v1

    .line 19
    const-string/jumbo v0, "com.google.android.apps.nexuslauncher.weather_view"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 18
    invoke-virtual {v1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/d;->N(Landroid/widget/RemoteViews;)V

    .line 20
    return-void
.end method

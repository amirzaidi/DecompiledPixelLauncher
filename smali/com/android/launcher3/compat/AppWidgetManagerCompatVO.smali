.class Lcom/android/launcher3/compat/AppWidgetManagerCompatVO;
.super Lcom/android/launcher3/compat/AppWidgetManagerCompatVL;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/AppWidgetManagerCompatVL;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getAllProviders(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 35
    if-nez p1, :cond_0

    .line 36
    invoke-super {p0, v0}, Lcom/android/launcher3/compat/AppWidgetManagerCompatVL;->getAllProviders(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/compat/AppWidgetManagerCompatVO;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    .line 39
    iget-object v2, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/google/android/apps/nexuslauncher/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs cA([Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "com.google.android.googlequicksearchbox"

    invoke-static {v0, p0}, Lcom/google/android/apps/nexuslauncher/util/a;->cC(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method

.method public static cB(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    return v3
.end method

.method public static varargs cC(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 17
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 18
    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p1, v0

    .line 19
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    const-string/jumbo v0, "package"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2, p0, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 23
    return-object v2
.end method

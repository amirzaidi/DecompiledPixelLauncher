.class public Lcom/google/android/apps/nexuslauncher/smartspace/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final di:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

.field public final dj:Z

.field public final dk:Landroid/content/pm/PackageInfo;

.field public final dl:J

.field public final intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/smartspace/b/b;Landroid/content/Intent;ZJLandroid/content/pm/PackageInfo;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a;->di:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    .line 31
    iput-boolean p3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a;->dj:Z

    .line 32
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a;->intent:Landroid/content/Intent;

    .line 33
    iput-wide p4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a;->dl:J

    .line 34
    iput-object p6, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a;->dk:Landroid/content/pm/PackageInfo;

    .line 35
    return-void
.end method

.method private static ch(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ci(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a;->di:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cx:Lcom/google/android/apps/nexuslauncher/smartspace/b/f;

    .line 39
    if-nez v1, :cond_0

    .line 41
    return-object v5

    .line 44
    :cond_0
    iget-object v0, v1, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cV:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/a;->intent:Landroid/content/Intent;

    invoke-static {v0, v2}, Lcom/google/android/apps/nexuslauncher/smartspace/a;->ch(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 45
    if-eqz v0, :cond_1

    .line 46
    return-object v0

    .line 50
    :cond_1
    :try_start_0
    iget-object v0, v1, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cW:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    iget-object v0, v1, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cW:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 52
    invoke-static {v2, v0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 54
    :cond_2
    iget-object v0, v1, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cX:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 56
    const-string/jumbo v2, "com.google.android.googlequicksearchbox"

    .line 55
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    iget-object v2, v1, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cX:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 59
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    .line 58
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string/jumbo v0, "NewCardInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrieving bitmap uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cW:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " gsaRes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cX:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_3
    return-object v5
.end method

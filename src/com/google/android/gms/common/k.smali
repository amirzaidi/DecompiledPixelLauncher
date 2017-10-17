.class public Lcom/google/android/gms/common/k;
.super Ljava/lang/Object;


# static fields
.field private static kH:Ljava/lang/String;

.field public static final kI:I

.field private static final kJ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static kK:Z

.field public static kL:Z

.field static kM:Z

.field private static kN:I

.field private static kO:Z

.field static final kP:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/common/k;->ok()I

    move-result v0

    sput v0, Lcom/google/android/gms/common/k;->kI:I

    sput-boolean v1, Lcom/google/android/gms/common/k;->kK:Z

    sput-boolean v1, Lcom/google/android/gms/common/k;->kL:Z

    sput-boolean v1, Lcom/google/android/gms/common/k;->kM:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/k;->kH:Ljava/lang/String;

    sput v1, Lcom/google/android/gms/common/k;->kN:I

    sput-boolean v1, Lcom/google/android/gms/common/k;->kO:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/k;->kP:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/k;->kJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static oc(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static od()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static oe(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/aG;->uS(Landroid/content/Context;)Lcom/google/android/gms/internal/bc;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/bc;->xE(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private static of(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/common/k;->kO:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/k;->os(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static og(Landroid/content/Context;I)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/common/a/g;->jE(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static oh(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/k;->of(Landroid/content/Context;)V

    sget-boolean v0, Lcom/google/android/gms/common/k;->kM:Z

    return v0
.end method

.method static oi(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "com.google.android.gms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/a/n;->jU()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v4, 0x2000

    :try_start_0
    invoke-virtual {v0, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v3, :cond_6

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_7

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/common/a/j;->jI()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_6
    :try_start_1
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    return v0

    :cond_7
    invoke-static {p0}, Lcom/google/android/gms/common/k;->oj(Landroid/content/Context;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    return v2
.end method

.method public static oj(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/common/a/n;->jW()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v2

    :cond_1
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "restricted_profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private static ok()I
    .locals 1

    sget v0, Lcom/google/android/gms/common/internal/p;->fG:I

    return v0
.end method

.method public static ol(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/k;->oh(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/k;->od()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public static om(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public static on(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/common/k;->kP:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x28c4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static oo(Landroid/content/Context;)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/common/k;->kJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/common/k;->of(Landroid/content/Context;)V

    sget v0, Lcom/google/android/gms/common/k;->kN:I

    if-eqz v0, :cond_1

    sget v0, Lcom/google/android/gms/common/k;->kN:I

    sget v1, Lcom/google/android/gms/common/k;->kI:I

    if-ne v0, v1, :cond_2

    return-void

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "A required meta-data tag in your app\'s AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    sget v1, Lcom/google/android/gms/common/k;->kI:I

    sget v2, Lcom/google/android/gms/common/k;->kN:I

    const-string/jumbo v3, "com.google.android.gms.version"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit16 v5, v5, 0x122

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "The meta-data tag in your app\'s AndroidManifest.xml does not have the right value.  Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " but found "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".  You must have the following declaration within the <application> element:     <meta-data android:name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" android:value=\"@integer/google_play_services_version\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static op(Landroid/content/Context;)I
    .locals 8

    const/16 v7, 0x9

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "com.google.android.gms"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    invoke-static {p0}, Lcom/google/android/gms/common/a/c;->jx(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    if-nez v1, :cond_3

    :goto_3
    :try_start_1
    const-string/jumbo v5, "com.google.android.gms"

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    invoke-static {p0}, Lcom/google/android/gms/common/j;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/j;

    move-result-object v6

    if-nez v1, :cond_4

    sget-object v0, Lcom/google/android/gms/common/c;->kz:[Lcom/google/android/gms/common/l;

    invoke-virtual {v6, v5, v0}, Lcom/google/android/gms/common/j;->nZ(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/l;)Lcom/google/android/gms/common/l;

    move-result-object v0

    if-eqz v0, :cond_6

    :cond_0
    sget v0, Lcom/google/android/gms/common/k;->kI:I

    invoke-static {v0}, Lcom/google/android/gms/common/a/k;->jJ(I)I

    move-result v0

    iget v1, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Lcom/google/android/gms/common/a/k;->jJ(I)I

    move-result v1

    if-lt v1, v0, :cond_7

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_8

    :goto_4
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_9

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v5, "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included."

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/k;->oo(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    :try_start_2
    const-string/jumbo v0, "com.android.vending"

    const/16 v5, 0x2040

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_3

    :catch_1
    move-exception v0

    const-string/jumbo v0, "GooglePlayServicesUtil"

    const-string/jumbo v1, "Google Play Store is missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :catch_2
    move-exception v0

    const-string/jumbo v0, "GooglePlayServicesUtil"

    const-string/jumbo v1, "Google Play services is missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    sget-object v1, Lcom/google/android/gms/common/c;->kz:[Lcom/google/android/gms/common/l;

    invoke-virtual {v6, v0, v1}, Lcom/google/android/gms/common/j;->nZ(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/l;)Lcom/google/android/gms/common/l;

    move-result-object v0

    if-eqz v0, :cond_5

    new-array v1, v3, [Lcom/google/android/gms/common/l;

    aput-object v0, v1, v2

    invoke-virtual {v6, v5, v1}, Lcom/google/android/gms/common/j;->nZ(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/l;)Lcom/google/android/gms/common/l;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GooglePlayServicesUtil"

    const-string/jumbo v1, "Google Play services signature invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_5
    const-string/jumbo v0, "GooglePlayServicesUtil"

    const-string/jumbo v1, "Google Play Store signature invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_6
    const-string/jumbo v0, "GooglePlayServicesUtil"

    const-string/jumbo v1, "Google Play services signature invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_7
    sget v0, Lcom/google/android/gms/common/k;->kI:I

    iget v1, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x4d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Google Play services out of date.  Requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " but found "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GooglePlayServicesUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    return v0

    :cond_8
    :try_start_3
    const-string/jumbo v0, "com.google.android.gms"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    goto/16 :goto_4

    :catch_3
    move-exception v0

    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Google Play services missing when getting application info."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_9
    const/4 v0, 0x3

    return v0
.end method

.method static oq(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x12 -> :sswitch_0
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method public static or(Landroid/content/Context;I)Z
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1

    :cond_1
    const-string/jumbo v0, "com.google.android.gms"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/k;->oi(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static os(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/k;->kH:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/aG;->uS(Landroid/content/Context;)Lcom/google/android/gms/internal/bc;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/D;->it(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/google/android/gms/common/k;->kN:I

    const-string/jumbo v1, "com.google.android.gms"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/bc;->xC(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/common/k;->kM:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    sput-boolean v5, Lcom/google/android/gms/common/k;->kO:Z

    return-void

    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/common/j;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/j;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/common/l;

    sget-object v3, Lcom/google/android/gms/common/c;->kz:[Lcom/google/android/gms/common/l;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/j;->nZ(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/l;)Lcom/google/android/gms/common/l;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/common/k;->kM:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Cannot find Google Play services package name."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sput-boolean v5, Lcom/google/android/gms/common/k;->kO:Z

    throw v0
.end method

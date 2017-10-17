.class public Lcom/android/launcher3/util/PackageUserKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHashCode:I

.field public mPackageName:Ljava/lang/String;

.field public mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 28
    return-void
.end method

.method public static fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p0}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public static fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/util/PackageUserKey;
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method private update(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/PackageUserKey;->mHashCode:I

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 55
    instance-of v1, p1, Lcom/android/launcher3/util/PackageUserKey;

    if-nez v1, :cond_0

    return v0

    .line 56
    :cond_0
    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    .line 57
    iget-object v1, p0, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    iget-object v1, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/android/launcher3/util/PackageUserKey;->mHashCode:I

    return v0
.end method

.method public updateFromItemInfo(Lcom/android/launcher3/ItemInfo;)Z
    .locals 2

    .prologue
    .line 41
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->supportsShortcuts(Lcom/android/launcher3/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 43
    const/4 v0, 0x1

    return v0

    .line 45
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

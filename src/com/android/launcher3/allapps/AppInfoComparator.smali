.class public Lcom/android/launcher3/allapps/AppInfoComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final mLabelComparator:Lcom/android/launcher3/util/LabelComparator;

.field private final mMyUser:Landroid/os/UserHandle;

.field private final mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppInfoComparator;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 39
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppInfoComparator;->mMyUser:Landroid/os/UserHandle;

    .line 40
    new-instance v0, Lcom/android/launcher3/util/LabelComparator;

    invoke-direct {v0}, Lcom/android/launcher3/util/LabelComparator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppInfoComparator;->mLabelComparator:Lcom/android/launcher3/util/LabelComparator;

    .line 41
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/AppInfo;Lcom/android/launcher3/AppInfo;)I
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppInfoComparator;->mLabelComparator:Lcom/android/launcher3/util/LabelComparator;

    iget-object v1, p1, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/LabelComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    return v0

    .line 52
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v1, p2, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    return v0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppInfoComparator;->mMyUser:Landroid/os/UserHandle;

    iget-object v1, p1, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    const/4 v0, -0x1

    return v0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppInfoComparator;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v1, p1, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppInfoComparator;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v2, p2, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 43
    check-cast p1, Lcom/android/launcher3/AppInfo;

    check-cast p2, Lcom/android/launcher3/AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/AppInfoComparator;->compare(Lcom/android/launcher3/AppInfo;Lcom/android/launcher3/AppInfo;)I

    move-result v0

    return v0
.end method

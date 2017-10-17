.class public Lcom/android/launcher3/badge/FolderBadgeInfo;
.super Lcom/android/launcher3/badge/BadgeInfo;
.source "SourceFile"


# instance fields
.field private mNumNotifications:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/badge/BadgeInfo;-><init>(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 33
    return-void
.end method


# virtual methods
.method public addBadgeInfo(Lcom/android/launcher3/badge/BadgeInfo;)V
    .locals 3

    .prologue
    .line 36
    if-nez p1, :cond_0

    .line 37
    return-void

    .line 39
    :cond_0
    iget v0, p0, Lcom/android/launcher3/badge/FolderBadgeInfo;->mNumNotifications:I

    invoke-virtual {p1}, Lcom/android/launcher3/badge/BadgeInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/badge/FolderBadgeInfo;->mNumNotifications:I

    .line 41
    iget v0, p0, Lcom/android/launcher3/badge/FolderBadgeInfo;->mNumNotifications:I

    const/4 v1, 0x0

    const/16 v2, 0x3e7

    .line 40
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/badge/FolderBadgeInfo;->mNumNotifications:I

    .line 42
    return-void
.end method

.method public getNotificationCount()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public hasBadge()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 60
    iget v1, p0, Lcom/android/launcher3/badge/FolderBadgeInfo;->mNumNotifications:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public subtractBadgeInfo(Lcom/android/launcher3/badge/BadgeInfo;)V
    .locals 3

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    return-void

    .line 48
    :cond_0
    iget v0, p0, Lcom/android/launcher3/badge/FolderBadgeInfo;->mNumNotifications:I

    invoke-virtual {p1}, Lcom/android/launcher3/badge/BadgeInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/badge/FolderBadgeInfo;->mNumNotifications:I

    .line 50
    iget v0, p0, Lcom/android/launcher3/badge/FolderBadgeInfo;->mNumNotifications:I

    const/4 v1, 0x0

    const/16 v2, 0x3e7

    .line 49
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/badge/FolderBadgeInfo;->mNumNotifications:I

    .line 51
    return-void
.end method

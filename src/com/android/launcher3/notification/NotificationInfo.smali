.class public Lcom/android/launcher3/notification/NotificationInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final autoCancel:Z

.field public final dismissable:Z

.field public final intent:Landroid/app/PendingIntent;

.field private mBadgeIcon:I

.field private mIconColor:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsIconLarge:Z

.field public final notificationKey:Ljava/lang/String;

.field public final packageUserKey:Lcom/android/launcher3/util/PackageUserKey;

.field public final text:Ljava/lang/CharSequence;

.field public final title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p2}, Lcom/android/launcher3/util/PackageUserKey;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/notification/NotificationInfo;->packageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    .line 63
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    .line 64
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 65
    iget-object v4, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/notification/NotificationInfo;->title:Ljava/lang/CharSequence;

    .line 66
    iget-object v4, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.text"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/notification/NotificationInfo;->text:Ljava/lang/CharSequence;

    .line 68
    invoke-virtual {v3}, Landroid/app/Notification;->getBadgeIconType()I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/notification/NotificationInfo;->mBadgeIcon:I

    .line 71
    iget v4, p0, Lcom/android/launcher3/notification/NotificationInfo;->mBadgeIcon:I

    if-ne v4, v1, :cond_1

    .line 72
    :goto_0
    if-nez v0, :cond_2

    .line 74
    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->color:I

    iput v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconColor:I

    .line 77
    iput-boolean v2, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIsIconLarge:Z

    .line 83
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v5

    .line 86
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    .line 84
    invoke-virtual {v5, v6}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    iput v2, p0, Lcom/android/launcher3/notification/NotificationInfo;->mBadgeIcon:I

    .line 89
    :cond_0
    iget-object v0, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->intent:Landroid/app/PendingIntent;

    .line 90
    iget v0, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->autoCancel:Z

    .line 91
    iget v0, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    :goto_3
    iput-boolean v1, p0, Lcom/android/launcher3/notification/NotificationInfo;->dismissable:Z

    .line 92
    return-void

    .line 71
    :cond_1
    invoke-virtual {v3}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    iput-boolean v1, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIsIconLarge:Z

    goto :goto_1

    :cond_3
    move v0, v2

    .line 90
    goto :goto_2

    :cond_4
    move v1, v2

    .line 91
    goto :goto_3
.end method


# virtual methods
.method public getIconForBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIsIconLarge:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 116
    :cond_0
    iget v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconColor:I

    invoke-static {p1, v0, p2}, Lcom/android/launcher3/graphics/IconPalette;->resolveContrastColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconColor:I

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 120
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 121
    iget v1, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 122
    return-object v0
.end method

.method public isIconLarge()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIsIconLarge:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v8

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 97
    invoke-static {p1, v2, v2, v0, v1}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->intent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logNotificationLaunch(Landroid/view/View;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->autoCancel:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->cancelNotification(Ljava/lang/String;)V

    .line 108
    :cond_0
    invoke-static {v8}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->close(Z)V

    .line 109
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0
.end method

.method public shouldShowIconInBadge()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 132
    iget-boolean v2, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIsIconLarge:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/launcher3/notification/NotificationInfo;->mBadgeIcon:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIsIconLarge:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/launcher3/notification/NotificationInfo;->mBadgeIcon:I

    if-eq v2, v0, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

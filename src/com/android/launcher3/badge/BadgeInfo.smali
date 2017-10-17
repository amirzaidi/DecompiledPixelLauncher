.class public Lcom/android/launcher3/badge/BadgeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mNotificationIcon:Landroid/graphics/Shader;

.field private mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

.field private mNotificationKeys:Ljava/util/List;

.field private mPackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

.field private mTotalCount:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/launcher3/badge/BadgeInfo;->mPackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    .line 68
    return-void
.end method


# virtual methods
.method public addOrUpdateNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 75
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 77
    :goto_0
    if-eqz v0, :cond_2

    .line 78
    iget v1, v0, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    iget v2, p1, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    if-ne v1, v2, :cond_1

    .line 79
    const/4 v0, 0x0

    return v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationKeyData;

    goto :goto_0

    .line 82
    :cond_1
    iget v1, p0, Lcom/android/launcher3/badge/BadgeInfo;->mTotalCount:I

    iget v2, v0, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/badge/BadgeInfo;->mTotalCount:I

    .line 83
    iget v1, p0, Lcom/android/launcher3/badge/BadgeInfo;->mTotalCount:I

    iget v2, p1, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/badge/BadgeInfo;->mTotalCount:I

    .line 84
    iget v1, p1, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    iput v1, v0, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    .line 85
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 88
    if-eqz v0, :cond_3

    .line 89
    iget v1, p0, Lcom/android/launcher3/badge/BadgeInfo;->mTotalCount:I

    iget v2, p1, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/badge/BadgeInfo;->mTotalCount:I

    .line 91
    :cond_3
    return v0
.end method

.method public getNotificationCount()I
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/android/launcher3/badge/BadgeInfo;->mTotalCount:I

    const/16 v1, 0x3e7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getNotificationIconForBadge(Landroid/content/Context;III)Landroid/graphics/Shader;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    if-nez v0, :cond_0

    .line 130
    return-object v1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationIcon:Landroid/graphics/Shader;

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/notification/NotificationInfo;->getIconForBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 135
    mul-int/lit8 v1, p4, 0x2

    sub-int v1, p3, v1

    .line 136
    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 137
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 138
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 139
    int-to-float v3, p4

    int-to-float v4, p4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 140
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 141
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 142
    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 141
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationIcon:Landroid/graphics/Shader;

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationIcon:Landroid/graphics/Shader;

    return-object v0
.end method

.method public getNotificationKeys()Ljava/util/List;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    return-object v0
.end method

.method public hasNotificationToShow()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIconLarge()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationInfo;->isIconLarge()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    iget v1, p0, Lcom/android/launcher3/badge/BadgeInfo;->mTotalCount:I

    iget v2, p1, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/badge/BadgeInfo;->mTotalCount:I

    .line 102
    :cond_0
    return v0
.end method

.method public setNotificationToShow(Lcom/android/launcher3/notification/NotificationInfo;)V
    .locals 1

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationIcon:Landroid/graphics/Shader;

    .line 116
    return-void
.end method

.method public shouldBeInvalidated(Lcom/android/launcher3/badge/BadgeInfo;)Z
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeInfo;->mPackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    iget-object v1, p1, Lcom/android/launcher3/badge/BadgeInfo;->mPackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/PackageUserKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/android/launcher3/badge/BadgeInfo;->getNotificationCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/badge/BadgeInfo;->getNotificationCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/launcher3/badge/BadgeInfo;->hasNotificationToShow()Z

    move-result v0

    .line 160
    :goto_0
    return v0

    .line 161
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

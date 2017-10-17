.class Landroid/support/v4/app/aJ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static abt:Ljava/lang/reflect/Field;

.field private static final abu:Ljava/lang/Object;

.field private static abv:Z

.field private static final abw:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/aJ;->abu:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/aJ;->abw:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static ani(Landroid/support/v4/app/X;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 199
    new-instance v0, Landroid/app/Notification$InboxStyle;

    invoke-interface {p0}, Landroid/support/v4/app/X;->ain()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 200
    invoke-virtual {v0, p1}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object v1

    .line 201
    if-nez p2, :cond_0

    .line 204
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    return-void

    .line 202
    :cond_0
    invoke-virtual {v1, p3}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_0

    .line 204
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 205
    invoke-virtual {v1, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_1
.end method

.method public static anj(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 229
    sget-object v1, Landroid/support/v4/app/aJ;->abu:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_0
    sget-boolean v0, Landroid/support/v4/app/aJ;->abv:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 234
    :try_start_1
    sget-object v0, Landroid/support/v4/app/aJ;->abt:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 244
    :goto_0
    sget-object v0, Landroid/support/v4/app/aJ;->abt:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    if-eqz v0, :cond_3

    .line 249
    :goto_1
    :try_start_2
    monitor-exit v1

    return-object v0

    .line 231
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v4

    .line 235
    :cond_1
    :try_start_3
    const-class v0, Landroid/app/Notification;

    const-string/jumbo v2, "extras"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 241
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 242
    sput-object v0, Landroid/support/v4/app/aJ;->abt:Ljava/lang/reflect/Field;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    :try_start_4
    const-string/jumbo v2, "NotificationCompat"

    const-string/jumbo v3, "Unable to access notification extras"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    :goto_2
    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/v4/app/aJ;->abv:Z

    .line 256
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v4

    .line 237
    :cond_2
    :try_start_5
    const-string/jumbo v0, "NotificationCompat"

    const-string/jumbo v2, "Notification.extras field is not of type Bundle"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/v4/app/aJ;->abv:Z
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 239
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-object v4

    .line 246
    :cond_3
    :try_start_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 247
    sget-object v2, Landroid/support/v4/app/aJ;->abt:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 252
    :catch_1
    move-exception v0

    .line 253
    :try_start_8
    const-string/jumbo v2, "NotificationCompat"

    const-string/jumbo v3, "Unable to access notification extras"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method public static ank(Ljava/util/List;)Landroid/util/SparseArray;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 212
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 221
    return-object v1

    .line 213
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 214
    if-nez v0, :cond_1

    .line 212
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 215
    :cond_1
    if-eqz v1, :cond_2

    .line 218
    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 216
    :cond_2
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    goto :goto_2
.end method

.method public static anl(Landroid/support/v4/app/X;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 173
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-interface {p0}, Landroid/support/v4/app/X;->ain()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 174
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    .line 175
    invoke-virtual {v0, p4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    .line 176
    if-nez p2, :cond_0

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {v0, p3}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    goto :goto_0
.end method

.method public static anm(Landroid/support/v4/app/X;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .locals 2

    .prologue
    .line 185
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    invoke-interface {p0}, Landroid/support/v4/app/X;->ain()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 186
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    .line 187
    invoke-virtual {v0, p4}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    .line 188
    if-nez p6, :cond_0

    .line 191
    :goto_0
    if-nez p2, :cond_1

    .line 194
    :goto_1
    return-void

    .line 189
    :cond_0
    invoke-virtual {v0, p5}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {v0, p3}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    goto :goto_1
.end method

.method public static ann(Landroid/app/Notification$Builder;Landroid/support/v4/app/S;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/support/v4/app/S;->getIcon()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/app/S;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/app/S;->alT()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 283
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/S;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 284
    invoke-virtual {p1}, Landroid/support/v4/app/S;->alR()[Landroid/support/v4/app/at;

    move-result-object v1

    if-nez v1, :cond_0

    .line 288
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/app/S;->alU()[Landroid/support/v4/app/at;

    move-result-object v1

    if-nez v1, :cond_1

    .line 292
    :goto_1
    const-string/jumbo v1, "android.support.allowGeneratedReplies"

    .line 293
    invoke-virtual {p1}, Landroid/support/v4/app/S;->alS()Z

    move-result v2

    .line 292
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 294
    return-object v0

    .line 285
    :cond_0
    const-string/jumbo v1, "android.support.remoteInputs"

    .line 286
    invoke-virtual {p1}, Landroid/support/v4/app/S;->alR()[Landroid/support/v4/app/at;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/app/aU;->anY([Landroid/support/v4/app/at;)[Landroid/os/Bundle;

    move-result-object v2

    .line 285
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    .line 289
    :cond_1
    const-string/jumbo v1, "android.support.dataRemoteInputs"

    .line 290
    invoke-virtual {p1}, Landroid/support/v4/app/S;->alU()[Landroid/support/v4/app/at;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/app/aU;->anY([Landroid/support/v4/app/at;)[Landroid/os/Bundle;

    move-result-object v2

    .line 289
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_1
.end method

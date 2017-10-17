.class Landroid/support/v4/app/aF;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static acN:Ljava/lang/reflect/Field;

.field private static final acO:Ljava/lang/Object;

.field private static acP:Z

.field private static final acQ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/aF;->acO:Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/aF;->acQ:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static aom(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 223
    sget-object v1, Landroid/support/v4/app/aF;->acO:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    :try_start_0
    sget-boolean v0, Landroid/support/v4/app/aF;->acP:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 228
    :try_start_1
    sget-object v0, Landroid/support/v4/app/aF;->acN:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 238
    :goto_0
    sget-object v0, Landroid/support/v4/app/aF;->acN:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    if-eqz v0, :cond_3

    .line 243
    :goto_1
    :try_start_2
    monitor-exit v1

    return-object v0

    .line 225
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v4

    .line 229
    :cond_1
    :try_start_3
    const-class v0, Landroid/app/Notification;

    const-string/jumbo v2, "extras"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 235
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 236
    sput-object v0, Landroid/support/v4/app/aF;->acN:Ljava/lang/reflect/Field;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    :try_start_4
    const-string/jumbo v2, "NotificationCompat"

    const-string/jumbo v3, "Unable to access notification extras"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    :goto_2
    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/v4/app/aF;->acP:Z

    .line 250
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v4

    .line 231
    :cond_2
    :try_start_5
    const-string/jumbo v0, "NotificationCompat"

    const-string/jumbo v2, "Notification.extras field is not of type Bundle"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/v4/app/aF;->acP:Z
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 233
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-object v4

    .line 240
    :cond_3
    :try_start_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 241
    sget-object v2, Landroid/support/v4/app/aF;->acN:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 246
    :catch_1
    move-exception v0

    .line 247
    :try_start_8
    const-string/jumbo v2, "NotificationCompat"

    const-string/jumbo v3, "Unable to access notification extras"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method public static aon(Ljava/util/List;)Landroid/util/SparseArray;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 206
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 215
    return-object v1

    .line 207
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 208
    if-nez v0, :cond_1

    .line 206
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 209
    :cond_1
    if-eqz v1, :cond_2

    .line 212
    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 210
    :cond_2
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    goto :goto_2
.end method

.method public static aoo(Landroid/app/Notification$Builder;Landroid/support/v4/app/T;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 277
    invoke-virtual {p1}, Landroid/support/v4/app/T;->getIcon()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/app/T;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/app/T;->ani()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 278
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/T;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 279
    invoke-virtual {p1}, Landroid/support/v4/app/T;->ang()[Landroid/support/v4/app/as;

    move-result-object v1

    if-nez v1, :cond_0

    .line 283
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/app/T;->anj()[Landroid/support/v4/app/as;

    move-result-object v1

    if-nez v1, :cond_1

    .line 287
    :goto_1
    const-string/jumbo v1, "android.support.allowGeneratedReplies"

    .line 288
    invoke-virtual {p1}, Landroid/support/v4/app/T;->anh()Z

    move-result v2

    .line 287
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 289
    return-object v0

    .line 280
    :cond_0
    const-string/jumbo v1, "android.support.remoteInputs"

    .line 281
    invoke-virtual {p1}, Landroid/support/v4/app/T;->ang()[Landroid/support/v4/app/as;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/app/aP;->aoZ([Landroid/support/v4/app/as;)[Landroid/os/Bundle;

    move-result-object v2

    .line 280
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    .line 284
    :cond_1
    const-string/jumbo v1, "android.support.dataRemoteInputs"

    .line 285
    invoke-virtual {p1}, Landroid/support/v4/app/T;->anj()[Landroid/support/v4/app/as;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/app/aP;->aoZ([Landroid/support/v4/app/as;)[Landroid/os/Bundle;

    move-result-object v2

    .line 284
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_1
.end method

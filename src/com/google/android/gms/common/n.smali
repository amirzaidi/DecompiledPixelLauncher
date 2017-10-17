.class public final Lcom/google/android/gms/common/n;
.super Lcom/google/android/gms/common/k;


# static fields
.field public static final kT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/gms/common/k;->kI:I

    sput v0, Lcom/google/android/gms/common/n;->kT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/k;-><init>()V

    return-void
.end method

.method private static ow(ILandroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 9

    const v4, 0x108008a

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/common/n;->oe(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/I;->iL(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {p1, p0, v2}, Lcom/google/android/gms/common/internal/I;->iI(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/common/a/c;->jx(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    sget v3, Lcom/google/android/gms/R$string;->common_google_play_services_notification_ticker:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/common/a/n;->jV()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Landroid/support/v4/app/Y;

    invoke-direct {v3, p1}, Landroid/support/v4/app/Y;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Y;->amu(I)Landroid/support/v4/app/Y;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/Y;->amC(Ljava/lang/CharSequence;)Landroid/support/v4/app/Y;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/app/Y;->amv(J)Landroid/support/v4/app/Y;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v4/app/Y;->amE(Z)Landroid/support/v4/app/Y;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/support/v4/app/Y;->amF(Landroid/app/PendingIntent;)Landroid/support/v4/app/Y;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Y;->amz(Ljava/lang/CharSequence;)Landroid/support/v4/app/Y;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Y;->amw(Ljava/lang/CharSequence;)Landroid/support/v4/app/Y;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Y;->build()Landroid/app/Notification;

    move-result-object v0

    :cond_0
    :goto_1
    move-object v1, v0

    invoke-static {p0}, Lcom/google/android/gms/common/n;->oq(I)Z

    move-result v0

    if-nez v0, :cond_6

    const v0, 0x9b6d

    move v2, v0

    :goto_2
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez p2, :cond_7

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_3
    return-void

    :cond_1
    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_notification_ticker:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/common/a/n;->jZ()Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/l;->hs(Z)V

    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/google/android/gms/R$drawable;->common_ic_googleplayservices:I

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v2, Lcom/google/android/gms/R$drawable;->common_full_open_on_phone:I

    sget v3, Lcom/google/android/gms/R$string;->common_open_on_phone:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, p3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/a/n;->jS()Z

    move-result v1

    if-nez v1, :cond_4

    :goto_4
    invoke-static {}, Lcom/google/android/gms/common/a/n;->jZ()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    :goto_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.support.localOnly"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    goto :goto_4

    :cond_5
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_5

    :cond_6
    const/16 v0, 0x28c4

    sget-object v2, Lcom/google/android/gms/common/n;->kP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v2, v0

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v0, p2, v2, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_3
.end method

.method public static ox(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/k;->om(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method static oy(ILandroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/common/n;->ow(ILandroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.class public Lcom/google/android/gms/common/a;
.super Lcom/google/android/gms/common/f;


# static fields
.field public static final np:I

.field private static final nq:Lcom/google/android/gms/common/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/a;

    invoke-direct {v0}, Lcom/google/android/gms/common/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/a;->nq:Lcom/google/android/gms/common/a;

    sget v0, Lcom/google/android/gms/common/f;->nu:I

    sput v0, Lcom/google/android/gms/common/a;->np:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/f;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/android/gms/common/a;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/a;->nq:Lcom/google/android/gms/common/a;

    return-object v0
.end method


# virtual methods
.method public qA(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;)Landroid/app/PendingIntent;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->qk()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->qh()I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/common/a/c;->ml(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/gms/common/a;->qn(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->ql()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x2a

    goto :goto_0
.end method

.method public qB(Landroid/content/Context;I)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/common/f;->qB(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public qm(Landroid/content/Context;Lcom/google/android/gms/internal/bs;)Lcom/google/android/gms/internal/bq;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/bq;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/bq;-><init>(Lcom/google/android/gms/internal/bs;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/bq;->zn(Landroid/content/Context;)V

    const-string/jumbo v0, "com.google.android.gms"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/a;->qF(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/bs;->zp()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bq;->zo()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public qn(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/f;->qn(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public qo(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/a;->qA(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;)Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->qh()I

    move-result v1

    invoke-static {p1, v0, p3}, Lcom/google/android/gms/common/api/GoogleApiActivity;->hF(Landroid/content/Context;Landroid/app/PendingIntent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/common/n;->rk(ILandroid/content/Context;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public final qp(I)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/common/f;->qp(I)Z

    move-result v0

    return v0
.end method

.method public qq(Landroid/app/Activity;Lcom/google/android/gms/internal/aw;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 2

    const-string/jumbo v0, "d"

    invoke-virtual {p0, p1, p3, v0}, Lcom/google/android/gms/common/a;->qv(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p2, v0, p4}, Lcom/google/android/gms/common/internal/P;->lV(Lcom/google/android/gms/internal/aw;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/P;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0, p5}, Lcom/google/android/gms/common/a;->qw(Landroid/content/Context;ILcom/google/android/gms/common/internal/P;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "GooglePlayServicesErrorDialog"

    invoke-virtual {p0, p1, v0, v1, p5}, Lcom/google/android/gms/common/a;->qr(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method qr(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    instance-of v0, p1, Landroid/support/v4/app/a;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/a/n;->mJ()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "This Activity does not support Fragments."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/support/v4/app/a;

    invoke-virtual {p1}, Landroid/support/v4/app/a;->aji()Landroid/support/v4/app/aW;

    move-result-object v0

    invoke-static {p2, p4}, Lcom/google/android/gms/common/m;->rh(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/m;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/google/android/gms/common/m;->rg(Landroid/support/v4/app/aW;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {p2, p4}, Lcom/google/android/gms/common/o;->rl(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/o;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/google/android/gms/common/o;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public qs(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 1

    const-string/jumbo v0, "d"

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/common/a;->qv(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/google/android/gms/common/internal/P;->lW(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/P;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/google/android/gms/common/a;->qw(Landroid/content/Context;ILcom/google/android/gms/common/internal/P;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public qt(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/a;->qs(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "GooglePlayServicesErrorDialog"

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/google/android/gms/common/a;->qr(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public qu(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v0, Landroid/widget/ProgressBar;

    const v1, 0x101007a

    invoke-direct {v0, p1, v6, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-static {p1}, Lcom/google/android/gms/common/n;->qQ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/gms/R$string;->common_google_play_services_updating_text:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/google/android/gms/R$string;->common_google_play_services_updating_title:I

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v0, ""

    invoke-virtual {v1, v0, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string/jumbo v1, "GooglePlayServicesUpdatingDialog"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/common/a;->qr(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v0
.end method

.method public qv(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/f;->qv(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method qw(Landroid/content/Context;ILcom/google/android/gms/common/internal/P;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/google/android/gms/common/a/c;->ml(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/android/gms/common/a/n;->mP()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    :goto_1
    if-eqz v0, :cond_5

    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/common/k;->qQ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/I;->lv(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-nez p4, :cond_6

    :goto_3
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/I;->lt(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    :goto_4
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/I;->lx(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_5
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v0

    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    const/16 p2, 0x2a

    goto :goto_0

    :cond_4
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    const v4, 0x1010309

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Theme.Dialog.Alert"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    :cond_8
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_5
.end method

.method public qx(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/f;->qx(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public qy(I)Landroid/content/Intent;
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/common/f;->qy(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public qz(Landroid/content/Context;)I
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/common/f;->qz(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

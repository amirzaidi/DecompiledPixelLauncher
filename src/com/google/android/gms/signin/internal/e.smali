.class public Lcom/google/android/gms/signin/internal/e;
.super Lcom/google/android/gms/common/internal/R;

# interfaces
.implements Lcom/google/android/gms/internal/bm;


# instance fields
.field private final JU:Z

.field private JV:Ljava/lang/Integer;

.field private final JW:Lcom/google/android/gms/common/internal/a;

.field private final JX:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/a;Landroid/os/Bundle;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)V
    .locals 7

    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/R;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)V

    iput-boolean p3, p0, Lcom/google/android/gms/signin/internal/e;->JU:Z

    iput-object p4, p0, Lcom/google/android/gms/signin/internal/e;->JW:Lcom/google/android/gms/common/internal/a;

    iput-object p5, p0, Lcom/google/android/gms/signin/internal/e;->JX:Landroid/os/Bundle;

    invoke-virtual {p4}, Lcom/google/android/gms/common/internal/a;->gt()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/signin/internal/e;->JV:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/a;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)V
    .locals 8

    invoke-static {p4}, Lcom/google/android/gms/signin/internal/e;->Qb(Lcom/google/android/gms/common/internal/a;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/signin/internal/e;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/a;Landroid/os/Bundle;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)V

    return-void
.end method

.method private Qa()Lcom/google/android/gms/common/internal/ResolveAccountRequest;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/e;->JW:Lcom/google/android/gms/common/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/a;->gr()Landroid/accounts/Account;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string/jumbo v3, "<<default account>>"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    new-instance v2, Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    iget-object v3, p0, Lcom/google/android/gms/signin/internal/e;->JV:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/common/internal/ResolveAccountRequest;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/a/a;->Ph(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/a/a;->Pg()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    goto :goto_0
.end method

.method public static Qb(Lcom/google/android/gms/common/internal/a;)Landroid/os/Bundle;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->gu()Lcom/google/android/gms/internal/cd;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->gt()Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    const-string/jumbo v4, "com.google.android.gms.signin.internal.clientRequestedAccount"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-nez v1, :cond_1

    :goto_0
    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v3, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cd;->BL()Z

    move-result v1

    const-string/jumbo v3, "com.google.android.gms.signin.internal.offlineAccessRequested"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cd;->BO()Z

    move-result v1

    const-string/jumbo v3, "com.google.android.gms.signin.internal.idTokenRequested"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cd;->BK()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "com.google.android.gms.signin.internal.serverClientId"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cd;->BP()Z

    move-result v1

    const-string/jumbo v3, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cd;->BN()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "com.google.android.gms.signin.internal.hostedDomain"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cd;->BI()Z

    move-result v1

    const-string/jumbo v3, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cd;->BM()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cd;->BJ()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cd;->BJ()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo v3, "com.google.android.gms.signin.internal.realClientLibraryVersion"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cd;->BM()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string/jumbo v1, "com.google.android.gms.signin.internal.authApiSignInModuleVersion"

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2
.end method


# virtual methods
.method protected PZ(Landroid/os/IBinder;)Lcom/google/android/gms/signin/internal/zze;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/signin/internal/zze$zza;->zzqy(Landroid/os/IBinder;)Lcom/google/android/gms/signin/internal/zze;

    move-result-object v0

    return-object v0
.end method

.method public dZ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/signin/internal/e;->JU:Z

    return v0
.end method

.method protected gw()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method protected gx()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method protected synthetic gz(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/signin/internal/e;->PZ(Landroid/os/IBinder;)Lcom/google/android/gms/signin/internal/zze;

    move-result-object v0

    return-object v0
.end method

.method protected io()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/e;->JW:Lcom/google/android/gms/common/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/a;->go()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/e;->JX:Landroid/os/Bundle;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/e;->JX:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/e;->JW:Lcom/google/android/gms/common/internal/a;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/a;->go()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.google.android.gms.signin.internal.realClientPackageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public yu()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/w;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/w;-><init>(Lcom/google/android/gms/common/internal/x;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/signin/internal/e;->ee(Lcom/google/android/gms/common/internal/c;)V

    return-void
.end method

.method public yv()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/e;->hY()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/zze;

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/e;->JV:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/signin/internal/zze;->zzajw(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "SignInClientImpl"

    const-string/jumbo v1, "Remote service probably died when clearAccountFromSessionStore is called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public yw(Lcom/google/android/gms/common/internal/zzq;Z)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/e;->hY()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/zze;

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/e;->JV:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/gms/signin/internal/zze;->zza(Lcom/google/android/gms/common/internal/zzq;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "SignInClientImpl"

    const-string/jumbo v1, "Remote service probably died when saveDefaultAccount is called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public yx(Lcom/google/android/gms/signin/internal/zzd;)V
    .locals 3

    const-string/jumbo v0, "Expecting a valid ISignInCallbacks"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/l;->ho(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/e;->Qa()Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/e;->hY()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/zze;

    new-instance v2, Lcom/google/android/gms/signin/internal/SignInRequest;

    invoke-direct {v2, v1}, Lcom/google/android/gms/signin/internal/SignInRequest;-><init>(Lcom/google/android/gms/common/internal/ResolveAccountRequest;)V

    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/signin/internal/zze;->zza(Lcom/google/android/gms/signin/internal/SignInRequest;Lcom/google/android/gms/signin/internal/zzd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SignInClientImpl"

    const-string/jumbo v2, "Remote service probably died when signIn is called"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v1, Lcom/google/android/gms/signin/internal/SignInResponse;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/signin/internal/SignInResponse;-><init>(I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/signin/internal/zzd;->zzb(Lcom/google/android/gms/signin/internal/SignInResponse;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v1, "SignInClientImpl"

    const-string/jumbo v2, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

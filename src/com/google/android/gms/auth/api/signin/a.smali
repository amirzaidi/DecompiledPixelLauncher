.class public final Lcom/google/android/gms/auth/api/signin/a;
.super Ljava/lang/Object;


# instance fields
.field private KY:Z

.field private KZ:Z

.field private La:Z

.field private Lb:Ljava/lang/String;

.field private Lc:Ljava/util/Set;

.field private Ld:Ljava/lang/String;

.field private Le:Landroid/accounts/Account;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/a;->Lc:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public Qv()Lcom/google/android/gms/auth/api/signin/a;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/a;->Lc:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->Lp:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public Qw()Lcom/google/android/gms/auth/api/signin/a;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/a;->Lc:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->Lh:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 9

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/a;->La:Z

    if-nez v0, :cond_0

    :goto_0
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/a;->Lc:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/a;->Le:Landroid/accounts/Account;

    iget-boolean v3, p0, Lcom/google/android/gms/auth/api/signin/a;->La:Z

    iget-boolean v4, p0, Lcom/google/android/gms/auth/api/signin/a;->KZ:Z

    iget-boolean v5, p0, Lcom/google/android/gms/auth/api/signin/a;->KY:Z

    iget-object v6, p0, Lcom/google/android/gms/auth/api/signin/a;->Lb:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/auth/api/signin/a;->Ld:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(Ljava/util/Set;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/e;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/a;->Le:Landroid/accounts/Account;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/a;->Qw()Lcom/google/android/gms/auth/api/signin/a;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/a;->Lc:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

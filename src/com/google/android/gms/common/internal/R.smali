.class public abstract Lcom/google/android/gms/common/internal/R;
.super Lcom/google/android/gms/common/internal/x;

# interfaces
.implements Lcom/google/android/gms/common/api/i;
.implements Lcom/google/android/gms/common/internal/S;


# instance fields
.field private final hg:Ljava/util/Set;

.field private final hh:Lcom/google/android/gms/common/internal/a;

.field private final hi:Landroid/accounts/Account;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)V
    .locals 9

    invoke-static {p1}, Lcom/google/android/gms/common/internal/C;->is(Landroid/content/Context;)Lcom/google/android/gms/common/internal/C;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/common/a;->nI()Lcom/google/android/gms/common/a;

    move-result-object v4

    invoke-static {p5}, Lcom/google/android/gms/common/internal/l;->ht(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/api/g;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/l;->ht(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/f;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/R;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/C;Lcom/google/android/gms/common/a;ILcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/C;Lcom/google/android/gms/common/a;ILcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)V
    .locals 9

    invoke-static/range {p7 .. p7}, Lcom/google/android/gms/common/internal/R;->jk(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/internal/B;

    move-result-object v6

    invoke-static/range {p8 .. p8}, Lcom/google/android/gms/common/internal/R;->jm(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/internal/q;

    move-result-object v7

    invoke-virtual {p6}, Lcom/google/android/gms/common/internal/a;->gn()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/x;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/C;Lcom/google/android/gms/common/f;ILcom/google/android/gms/common/internal/B;Lcom/google/android/gms/common/internal/q;Ljava/lang/String;)V

    iput-object p6, p0, Lcom/google/android/gms/common/internal/R;->hh:Lcom/google/android/gms/common/internal/a;

    invoke-virtual {p6}, Lcom/google/android/gms/common/internal/a;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/R;->hi:Landroid/accounts/Account;

    invoke-virtual {p6}, Lcom/google/android/gms/common/internal/a;->gv()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/internal/R;->jj(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/R;->hg:Ljava/util/Set;

    return-void
.end method

.method private jj(Ljava/util/Set;)Ljava/util/Set;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/R;->jl(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static jk(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/internal/B;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/internal/N;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/N;-><init>(Lcom/google/android/gms/common/api/g;)V

    :cond_0
    return-object v0
.end method

.method private static jm(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/internal/q;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/internal/T;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/T;-><init>(Lcom/google/android/gms/common/api/f;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/R;->hi:Landroid/accounts/Account;

    return-object v0
.end method

.method protected final im()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/R;->hg:Ljava/util/Set;

    return-object v0
.end method

.method protected jl(Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    return-object p1
.end method

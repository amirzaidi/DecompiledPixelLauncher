.class public final Lcom/google/android/gms/common/internal/a;
.super Ljava/lang/Object;


# instance fields
.field private final hH:Landroid/view/View;

.field private final hI:Landroid/accounts/Account;

.field private final hJ:Ljava/lang/String;

.field private final hK:Lcom/google/android/gms/internal/bX;

.field private hL:Ljava/lang/Integer;

.field private final hM:Ljava/util/Set;

.field private final hN:I

.field private final hO:Ljava/util/Set;

.field private final hP:Ljava/lang/String;

.field private final hQ:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bX;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/a;->hI:Landroid/accounts/Account;

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/common/internal/a;->hM:Ljava/util/Set;

    if-eqz p3, :cond_1

    :goto_1
    iput-object p3, p0, Lcom/google/android/gms/common/internal/a;->hQ:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/common/internal/a;->hH:Landroid/view/View;

    iput p4, p0, Lcom/google/android/gms/common/internal/a;->hN:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/a;->hJ:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/a;->hP:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/a;->hK:Lcom/google/android/gms/internal/bX;

    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->hM:Ljava/util/Set;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->hQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/a;->hO:Ljava/util/Set;

    return-void

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_0

    :cond_1
    sget-object p3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/Q;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/Q;->jX:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public static ja(Landroid/content/Context;)Lcom/google/android/gms/common/internal/a;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->gp()Lcom/google/android/gms/common/internal/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->hI:Landroid/accounts/Account;

    return-object v0
.end method

.method public jb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->hP:Ljava/lang/String;

    return-object v0
.end method

.method public jc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->hJ:Ljava/lang/String;

    return-object v0
.end method

.method public jd(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/a;->hL:Ljava/lang/Integer;

    return-void
.end method

.method public je()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->hQ:Ljava/util/Map;

    return-object v0
.end method

.method public jf()Landroid/accounts/Account;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->hI:Landroid/accounts/Account;

    if-nez v0, :cond_0

    new-instance v0, Landroid/accounts/Account;

    const-string/jumbo v1, "<<default account>>"

    const-string/jumbo v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->hI:Landroid/accounts/Account;

    goto :goto_0
.end method

.method public jg()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->hM:Ljava/util/Set;

    return-object v0
.end method

.method public jh()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->hL:Ljava/lang/Integer;

    return-object v0
.end method

.method public ji()Lcom/google/android/gms/internal/bX;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->hK:Lcom/google/android/gms/internal/bX;

    return-object v0
.end method

.method public jj()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->hO:Ljava/util/Set;

    return-object v0
.end method

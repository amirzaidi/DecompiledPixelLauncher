.class public final Lcom/google/android/gms/common/internal/a;
.super Ljava/lang/Object;


# instance fields
.field private final eO:Landroid/view/View;

.field private final eP:Landroid/accounts/Account;

.field private final eQ:Ljava/lang/String;

.field private final eR:Lcom/google/android/gms/internal/cd;

.field private eS:Ljava/lang/Integer;

.field private final eT:Ljava/util/Set;

.field private final eU:I

.field private final eV:Ljava/util/Set;

.field private final eW:Ljava/lang/String;

.field private final eX:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/cd;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/a;->eP:Landroid/accounts/Account;

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/common/internal/a;->eT:Ljava/util/Set;

    if-eqz p3, :cond_1

    :goto_1
    iput-object p3, p0, Lcom/google/android/gms/common/internal/a;->eX:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/common/internal/a;->eO:Landroid/view/View;

    iput p4, p0, Lcom/google/android/gms/common/internal/a;->eU:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/a;->eQ:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/a;->eW:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/a;->eR:Lcom/google/android/gms/internal/cd;

    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->eT:Ljava/util/Set;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->eX:Ljava/util/Map;

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

    iput-object v0, p0, Lcom/google/android/gms/common/internal/a;->eV:Ljava/util/Set;

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

    iget-object v0, v0, Lcom/google/android/gms/common/internal/Q;->hf:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public static gm(Landroid/content/Context;)Lcom/google/android/gms/common/internal/a;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->dJ()Lcom/google/android/gms/common/internal/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->eP:Landroid/accounts/Account;

    return-object v0
.end method

.method public gn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->eW:Ljava/lang/String;

    return-object v0
.end method

.method public go()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->eQ:Ljava/lang/String;

    return-object v0
.end method

.method public gp(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/a;->eS:Ljava/lang/Integer;

    return-void
.end method

.method public gq()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->eX:Ljava/util/Map;

    return-object v0
.end method

.method public gr()Landroid/accounts/Account;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->eP:Landroid/accounts/Account;

    if-nez v0, :cond_0

    new-instance v0, Landroid/accounts/Account;

    const-string/jumbo v1, "<<default account>>"

    const-string/jumbo v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->eP:Landroid/accounts/Account;

    goto :goto_0
.end method

.method public gs()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->eT:Ljava/util/Set;

    return-object v0
.end method

.method public gt()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->eS:Ljava/lang/Integer;

    return-object v0
.end method

.method public gu()Lcom/google/android/gms/internal/cd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->eR:Lcom/google/android/gms/internal/cd;

    return-object v0
.end method

.method public gv()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a;->eV:Ljava/util/Set;

    return-object v0
.end method

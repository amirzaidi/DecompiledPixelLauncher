.class public Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;
.implements Lcom/google/android/gms/common/api/m;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final JB:Lcom/google/android/gms/common/api/Scope;

.field public static final JC:Lcom/google/android/gms/common/api/Scope;

.field private static JG:Ljava/util/Comparator;

.field public static final JK:Lcom/google/android/gms/common/api/Scope;

.field public static final JM:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;


# instance fields
.field final JA:I

.field private JD:Landroid/accounts/Account;

.field private final JE:Z

.field private final JF:Z

.field private JH:Z

.field private JI:Ljava/lang/String;

.field private final JJ:Ljava/util/ArrayList;

.field private JL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "profile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JK:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "email"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JB:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "openid"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JC:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/auth/api/signin/a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/a;->PD()Lcom/google/android/gms/auth/api/signin/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/a;->PC()Lcom/google/android/gms/auth/api/signin/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/a;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JM:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    new-instance v0, Lcom/google/android/gms/auth/api/signin/b;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/auth/api/signin/e;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JG:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JA:I

    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JJ:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JD:Landroid/accounts/Account;

    iput-boolean p4, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JH:Z

    iput-boolean p5, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JF:Z

    iput-boolean p6, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JE:Z

    iput-object p7, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JI:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JL:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/util/Set;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/e;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(Ljava/util/Set;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public PE()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JJ:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public PF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JL:Ljava/lang/String;

    return-object v0
.end method

.method public PG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JI:Ljava/lang/String;

    return-object v0
.end method

.method public PH()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JF:Z

    return v0
.end method

.method public PI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JH:Z

    return v0
.end method

.method public PJ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JE:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JJ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->PE()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_0
    return v0

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JJ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->PE()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JD:Landroid/accounts/Account;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JD:Landroid/accounts/Account;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    :goto_0
    return v0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JI:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JI:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->PG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_6
    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JE:Z

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->PJ()Z

    move-result v2

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JH:Z

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->PI()Z

    move-result v2

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JF:Z

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->PH()Z

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->PG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :catch_0
    move-exception v1

    return v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JD:Landroid/accounts/Account;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v0, Lcom/google/android/gms/auth/api/signin/a/b;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/a/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/a/b;->Pl(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JD:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/a/b;->Pl(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/a/b;->Pl(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/a/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JE:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/a/b;->Pm(Z)Lcom/google/android/gms/auth/api/signin/a/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JH:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/a/b;->Pm(Z)Lcom/google/android/gms/auth/api/signin/a/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->JF:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/a/b;->Pm(Z)Lcom/google/android/gms/auth/api/signin/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/a/b;->Pn()I

    move-result v0

    return v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Scope;->el()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/signin/b;->PM(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.class public abstract Lcom/google/android/gms/phenotype/c;
.super Ljava/lang/Object;


# instance fields
.field protected final lF:Lcom/google/android/gms/common/api/d;

.field private lG:J

.field private final lH:I

.field private final lI:I

.field private final lJ:Lcom/google/android/gms/phenotype/a;

.field protected final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/phenotype/a;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/phenotype/c;->lI:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/google/android/gms/phenotype/c;->lH:I

    iput-object p1, p0, Lcom/google/android/gms/phenotype/c;->lF:Lcom/google/android/gms/common/api/d;

    iput-object p2, p0, Lcom/google/android/gms/phenotype/c;->lJ:Lcom/google/android/gms/phenotype/a;

    iput-object p3, p0, Lcom/google/android/gms/phenotype/c;->mPackageName:Ljava/lang/String;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/google/android/gms/phenotype/c;->lG:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/d;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/phenotype/f;->lQ:Lcom/google/android/gms/phenotype/a;

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/phenotype/c;-><init>(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/phenotype/a;Ljava/lang/String;)V

    return-void
.end method

.method private oV(Ljava/lang/String;Lcom/google/android/gms/phenotype/d;I)V
    .locals 5

    const/4 v4, 0x0

    if-lez p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/phenotype/c;->lJ:Lcom/google/android/gms/phenotype/a;

    iget-object v1, p0, Lcom/google/android/gms/phenotype/c;->lF:Lcom/google/android/gms/common/api/d;

    iget-object v2, p0, Lcom/google/android/gms/phenotype/c;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/phenotype/c;->oW()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/google/android/gms/phenotype/a;->oD(Lcom/google/android/gms/common/api/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/phenotype/t;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/gms/phenotype/t;-><init>(Lcom/google/android/gms/phenotype/c;Lcom/google/android/gms/phenotype/d;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/c;->ds(Lcom/google/android/gms/common/api/a;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/phenotype/c;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string/jumbo v2, "PhenotypeFlagCommitter"

    const-string/jumbo v3, "No more attempts remaining, giving up for "

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_2

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {p2, v4}, Lcom/google/android/gms/phenotype/d;->cJ(Z)V

    goto :goto_1
.end method

.method private static oY(Landroid/content/SharedPreferences$Editor;Lcom/google/android/gms/phenotype/Configuration;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/phenotype/Configuration;->lN:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/phenotype/Configuration;->lL:[Lcom/google/android/gms/phenotype/Flag;

    array-length v2, v1

    :goto_1
    if-lt v0, v2, :cond_2

    return-void

    :cond_0
    return-void

    :cond_1
    aget-object v4, v2, v1

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    aget-object v3, v1, v0

    iget v4, v3, Lcom/google/android/gms/phenotype/Flag;->ld:I

    packed-switch v4, :pswitch_data_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_0
    iget-object v4, v3, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/phenotype/Flag;->oG()J

    move-result-wide v6

    invoke-interface {p0, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :pswitch_1
    iget-object v4, v3, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/phenotype/Flag;->oK()Z

    move-result v3

    invoke-interface {p0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :pswitch_2
    iget-object v4, v3, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/phenotype/Flag;->oI()D

    move-result-wide v6

    double-to-float v3, v6

    invoke-interface {p0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :pswitch_3
    iget-object v4, v3, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/phenotype/Flag;->oL()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :pswitch_4
    invoke-virtual {v3}, Lcom/google/android/gms/phenotype/Flag;->oM()[B

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static oZ(Landroid/content/SharedPreferences;Lcom/google/android/gms/phenotype/Configurations;)V
    .locals 5

    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-boolean v2, p1, Lcom/google/android/gms/phenotype/Configurations;->lD:Z

    if-eqz v2, :cond_0

    :goto_0
    iget-object v2, p1, Lcom/google/android/gms/phenotype/Configurations;->lA:[Lcom/google/android/gms/phenotype/Configuration;

    array-length v3, v2

    :goto_1
    if-lt v0, v3, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/phenotype/Configurations;->lC:Ljava/lang/String;

    const-string/jumbo v2, "__phenotype_server_token"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p1, Lcom/google/android/gms/phenotype/Configurations;->ly:Ljava/lang/String;

    const-string/jumbo v2, "__phenotype_snapshot_token"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    return-void

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    aget-object v4, v2, v0

    invoke-static {v1, v4}, Lcom/google/android/gms/phenotype/c;->oY(Landroid/content/SharedPreferences$Editor;Lcom/google/android/gms/phenotype/Configuration;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "PhenotypeFlagCommitter"

    const-string/jumbo v1, "Failed to commit Phenotype configs to SharedPreferences!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static synthetic pa(Lcom/google/android/gms/phenotype/c;)Lcom/google/android/gms/phenotype/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/phenotype/c;->lJ:Lcom/google/android/gms/phenotype/a;

    return-object v0
.end method

.method static synthetic pb(Lcom/google/android/gms/phenotype/c;Ljava/lang/String;Lcom/google/android/gms/phenotype/d;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/phenotype/c;->oV(Ljava/lang/String;Lcom/google/android/gms/phenotype/d;I)V

    return-void
.end method


# virtual methods
.method protected abstract cI(Lcom/google/android/gms/phenotype/Configurations;)V
.end method

.method protected oW()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final oX(Ljava/lang/String;Lcom/google/android/gms/phenotype/d;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->ht(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/phenotype/c;->oV(Ljava/lang/String;Lcom/google/android/gms/phenotype/d;I)V

    return-void
.end method

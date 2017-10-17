.class public Lcom/google/android/gms/phenotype/Configurations;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final lz:Ljava/nio/charset/Charset;


# instance fields
.field public final lA:[Lcom/google/android/gms/phenotype/Configuration;

.field public final lB:Ljava/util/Map;

.field public final lC:Ljava/lang/String;

.field public final lD:Z

.field final lE:I

.field public final ly:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/phenotype/Configurations;->lz:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/google/android/gms/phenotype/r;

    invoke-direct {v0}, Lcom/google/android/gms/phenotype/r;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/Configurations;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/phenotype/Configuration;Z)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/phenotype/Configurations;->lE:I

    iput-object p2, p0, Lcom/google/android/gms/phenotype/Configurations;->ly:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/phenotype/Configurations;->lC:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/phenotype/Configurations;->lA:[Lcom/google/android/gms/phenotype/Configuration;

    iput-boolean p5, p0, Lcom/google/android/gms/phenotype/Configurations;->lD:Z

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/phenotype/Configurations;->lB:Ljava/util/Map;

    array-length v1, p4

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-object v2, p4, v0

    iget-object v3, p0, Lcom/google/android/gms/phenotype/Configurations;->lB:Ljava/util/Map;

    iget v4, v2, Lcom/google/android/gms/phenotype/Configuration;->lK:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/phenotype/Configurations;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/phenotype/Configurations;

    iget v1, p0, Lcom/google/android/gms/phenotype/Configurations;->lE:I

    iget v2, p1, Lcom/google/android/gms/phenotype/Configurations;->lE:I

    if-eq v1, v2, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/phenotype/Configurations;->ly:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/phenotype/Configurations;->ly:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/phenotype/Configurations;->lC:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/phenotype/Configurations;->lC:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/phenotype/Configurations;->lB:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/gms/phenotype/Configurations;->lB:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/phenotype/Configurations;->lD:Z

    iget-boolean v2, p1, Lcom/google/android/gms/phenotype/Configurations;->lD:Z

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x29

    const/16 v2, 0x27

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Configurations("

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/phenotype/Configurations;->lE:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/Configurations;->ly:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/Configurations;->lC:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/Configurations;->lB:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/google/android/gms/phenotype/Configurations;->lD:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/phenotype/Configuration;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/phenotype/r;->pu(Lcom/google/android/gms/phenotype/Configurations;Landroid/os/Parcel;I)V

    return-void
.end method

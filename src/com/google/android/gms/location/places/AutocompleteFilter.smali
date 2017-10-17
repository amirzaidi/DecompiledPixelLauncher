.class public Lcom/google/android/gms/location/places/AutocompleteFilter;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/f;


# instance fields
.field final zw:I

.field final zx:Ljava/util/List;

.field final zy:I

.field final zz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/f;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/AutocompleteFilter;->CREATOR:Lcom/google/android/gms/location/places/f;

    return-void
.end method

.method constructor <init>(IZLjava/util/List;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zy:I

    iput-object p3, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zx:Ljava/util/List;

    invoke-static {p3}, Lcom/google/android/gms/location/places/AutocompleteFilter;->DR(Ljava/util/Collection;)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zw:I

    iget v2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zy:I

    if-lt v2, v1, :cond_0

    iput-boolean p2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zz:Z

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zz:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static DR(Ljava/util/Collection;)I
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_1

    instance-of v2, p1, Lcom/google/android/gms/location/places/AutocompleteFilter;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/google/android/gms/location/places/AutocompleteFilter;

    iget v2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zw:I

    iget v3, p1, Lcom/google/android/gms/location/places/AutocompleteFilter;->zw:I

    if-eq v2, v3, :cond_3

    :goto_0
    move v0, v1

    :cond_0
    return v0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zz:Z

    iget-boolean v3, p1, Lcom/google/android/gms/location/places/AutocompleteFilter;->zz:Z

    if-eq v2, v3, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zz:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zw:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->hI([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/u;->hJ(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zz:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "includeQueryPredictions"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zw:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "typeFilter"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/f;->Eh(Lcom/google/android/gms/location/places/AutocompleteFilter;Landroid/os/Parcel;I)V

    return-void
.end method

.class public Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final IA:[Ljava/lang/String;

.field private final Ix:I

.field private final Iy:[Ljava/lang/String;

.field private final Iz:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/d;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/internal/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->Ix:I

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->Iy:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->Iz:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->IA:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public MF()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->Iz:[Ljava/lang/String;

    return-object v0
.end method

.method public MG()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->IA:[Ljava/lang/String;

    return-object v0
.end method

.method public MH()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->Iy:[Ljava/lang/String;

    return-object v0
.end method

.method MI()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->Ix:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->MH()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->MH()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    return v0

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->MF()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->MF()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->MG()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->MG()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->Iy:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->Iz:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;->IA:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/d;->Nb(Lcom/google/android/gms/contextmanager/internal/KeyFilterImpl$Inclusion;Landroid/os/Parcel;I)V

    return-void
.end method

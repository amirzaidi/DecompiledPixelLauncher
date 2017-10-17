.class public final Lcom/google/android/gms/location/places/UserDataType;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/h;

.field public static final zA:Lcom/google/android/gms/location/places/UserDataType;

.field public static final zB:Lcom/google/android/gms/location/places/UserDataType;

.field public static final zC:Lcom/google/android/gms/location/places/UserDataType;

.field public static final zD:Ljava/util/Set;


# instance fields
.field final zE:I

.field final zF:I

.field final zG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "test_type"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/UserDataType;->DS(Ljava/lang/String;I)Lcom/google/android/gms/location/places/UserDataType;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->zC:Lcom/google/android/gms/location/places/UserDataType;

    const-string/jumbo v0, "labeled_place"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/UserDataType;->DS(Ljava/lang/String;I)Lcom/google/android/gms/location/places/UserDataType;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->zB:Lcom/google/android/gms/location/places/UserDataType;

    const-string/jumbo v0, "here_content"

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/UserDataType;->DS(Ljava/lang/String;I)Lcom/google/android/gms/location/places/UserDataType;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->zA:Lcom/google/android/gms/location/places/UserDataType;

    sget-object v0, Lcom/google/android/gms/location/places/UserDataType;->zC:Lcom/google/android/gms/location/places/UserDataType;

    sget-object v1, Lcom/google/android/gms/location/places/UserDataType;->zB:Lcom/google/android/gms/location/places/UserDataType;

    sget-object v2, Lcom/google/android/gms/location/places/UserDataType;->zA:Lcom/google/android/gms/location/places/UserDataType;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/a/o;->kc(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->zD:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/location/places/h;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->CREATOR:Lcom/google/android/gms/location/places/h;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/l;->hr(Ljava/lang/String;)Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/location/places/UserDataType;->zE:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/UserDataType;->zG:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/location/places/UserDataType;->zF:I

    return-void
.end method

.method private static DS(Ljava/lang/String;I)Lcom/google/android/gms/location/places/UserDataType;
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/places/UserDataType;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/location/places/UserDataType;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_1

    instance-of v2, p1, Lcom/google/android/gms/location/places/UserDataType;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/google/android/gms/location/places/UserDataType;

    iget-object v2, p0, Lcom/google/android/gms/location/places/UserDataType;->zG:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/UserDataType;->zG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_0
    move v0, v1

    :cond_0
    return v0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    iget v2, p0, Lcom/google/android/gms/location/places/UserDataType;->zF:I

    iget v3, p1, Lcom/google/android/gms/location/places/UserDataType;->zF:I

    if-eq v2, v3, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/UserDataType;->zG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/UserDataType;->zG:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/h;->Ex(Lcom/google/android/gms/location/places/UserDataType;Landroid/os/Parcel;I)V

    return-void
.end method

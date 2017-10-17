.class public Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final Jr:Ljava/util/ArrayList;

.field private final Js:Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;

.field private final Jt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/l;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/internal/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->Jt:I

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->Jr:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->Js:Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;

    return-void
.end method


# virtual methods
.method public Oi()Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->Js:Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;

    return-object v0
.end method

.method public Oj()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->Jt:I

    return v0
.end method

.method public Ok()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->Jr:Ljava/util/ArrayList;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x0

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->Jr:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->Jr:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->kv(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;->Jr:Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->kw([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/l;->On(Lcom/google/android/gms/contextmanager/internal/RelationFilterImpl;Landroid/os/Parcel;I)V

    return-void
.end method

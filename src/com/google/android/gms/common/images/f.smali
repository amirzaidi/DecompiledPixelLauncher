.class final Lcom/google/android/gms/common/images/f;
.super Ljava/lang/Object;


# instance fields
.field public final mt:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/f;->mt:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/google/android/gms/common/images/f;

    if-eqz v0, :cond_0

    if-eq p0, p1, :cond_1

    check-cast p1, Lcom/google/android/gms/common/images/f;

    iget-object v0, p1, Lcom/google/android/gms/common/images/f;->mt:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/common/images/f;->mt:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->kv(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/images/f;->mt:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->kw([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

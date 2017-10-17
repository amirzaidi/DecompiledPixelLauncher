.class public Lcom/google/android/gms/auth/api/signin/a/b;
.super Ljava/lang/Object;


# static fields
.field static Jd:I


# instance fields
.field private Je:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f

    sput v0, Lcom/google/android/gms/auth/api/signin/a/b;->Jd:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/a/b;->Je:I

    return-void
.end method


# virtual methods
.method public Pl(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/a/b;
    .locals 2

    sget v0, Lcom/google/android/gms/auth/api/signin/a/b;->Jd:I

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/a/b;->Je:I

    mul-int/2addr v1, v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/a/b;->Je:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Pm(Z)Lcom/google/android/gms/auth/api/signin/a/b;
    .locals 3

    const/4 v0, 0x0

    sget v1, Lcom/google/android/gms/auth/api/signin/a/b;->Jd:I

    iget v2, p0, Lcom/google/android/gms/auth/api/signin/a/b;->Je:I

    mul-int/2addr v1, v2

    if-nez p1, :cond_0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/a/b;->Je:I

    return-object p0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public Pn()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/auth/api/signin/a/b;->Je:I

    return v0
.end method

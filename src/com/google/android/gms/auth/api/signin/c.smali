.class Lcom/google/android/gms/auth/api/signin/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public PN(Lcom/google/android/gms/common/api/Scope;Lcom/google/android/gms/common/api/Scope;)I
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Scope;->el()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Scope;->el()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/common/api/Scope;

    check-cast p2, Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/auth/api/signin/c;->PN(Lcom/google/android/gms/common/api/Scope;Lcom/google/android/gms/common/api/Scope;)I

    move-result v0

    return v0
.end method

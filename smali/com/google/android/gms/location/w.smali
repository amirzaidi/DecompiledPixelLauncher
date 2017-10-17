.class Lcom/google/android/gms/location/w;
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
.method public It(Lcom/google/android/gms/location/DetectedActivity;Lcom/google/android/gms/location/DetectedActivity;)I
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/location/DetectedActivity;->GO()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/location/DetectedActivity;->GO()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/location/DetectedActivity;->GQ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/location/DetectedActivity;->GQ()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/location/DetectedActivity;

    check-cast p2, Lcom/google/android/gms/location/DetectedActivity;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/location/w;->It(Lcom/google/android/gms/location/DetectedActivity;Lcom/google/android/gms/location/DetectedActivity;)I

    move-result v0

    return v0
.end method

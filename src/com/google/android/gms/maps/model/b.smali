.class public final Lcom/google/android/gms/maps/model/b;
.super Ljava/lang/Object;


# instance fields
.field public Fk:F

.field public Fl:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Js(F)Lcom/google/android/gms/maps/model/b;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/b;->Fl:F

    return-object p0
.end method

.method public Jt(F)Lcom/google/android/gms/maps/model/b;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/b;->Fk:F

    return-object p0
.end method

.method public build()Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
    .locals 3

    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    iget v1, p0, Lcom/google/android/gms/maps/model/b;->Fl:F

    iget v2, p0, Lcom/google/android/gms/maps/model/b;->Fk:F

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;-><init>(FF)V

    return-object v0
.end method

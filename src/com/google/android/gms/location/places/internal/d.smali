.class public Lcom/google/android/gms/location/places/internal/d;
.super Lcom/google/android/gms/location/places/internal/f;

# interfaces
.implements Lcom/google/android/gms/location/places/d;


# instance fields
.field private final zV:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/f;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    const-string/jumbo v0, "photo_fife_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/places/internal/d;->pN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/d;->zV:Ljava/lang/String;

    return-void
.end method

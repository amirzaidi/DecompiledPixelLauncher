.class Lcom/google/android/gms/maps/model/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/model/n;


# instance fields
.field private final FC:Lcom/google/android/gms/maps/model/internal/zzi;

.field final synthetic FD:Lcom/google/android/gms/maps/model/TileOverlayOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/maps/model/f;->FD:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/maps/model/f;->FD:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-static {v0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->JT(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/internal/zzi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/f;->FC:Lcom/google/android/gms/maps/model/internal/zzi;

    return-void
.end method

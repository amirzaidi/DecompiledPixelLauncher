.class public final Lcom/google/android/gms/internal/E;
.super Lcom/google/android/gms/internal/aU;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aU;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/E;->sU()Lcom/google/android/gms/internal/E;

    return-void
.end method


# virtual methods
.method public sT(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/E;
    .locals 1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xF()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/aU;->xs(Lcom/google/android/gms/internal/aY;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :pswitch_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public sU()Lcom/google/android/gms/internal/E;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/E;->tz:Lcom/google/android/gms/internal/aL;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/E;->sH:I

    return-object p0
.end method

.method public synthetic se(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/aC;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/E;->sT(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/E;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/google/android/gms/internal/K;
.super Lcom/google/android/gms/internal/ba;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ba;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/K;->sV()Lcom/google/android/gms/internal/K;

    return-void
.end method


# virtual methods
.method public sU(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/K;
    .locals 1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ba;->xt(Lcom/google/android/gms/internal/be;I)Z

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

.method public sV()Lcom/google/android/gms/internal/K;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/K;->tt:Lcom/google/android/gms/internal/aR;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/K;->sB:I

    return-object p0
.end method

.method public synthetic sc(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/K;->sU(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/K;

    move-result-object v0

    return-object v0
.end method

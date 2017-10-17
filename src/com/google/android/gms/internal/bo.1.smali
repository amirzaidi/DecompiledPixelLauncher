.class final Lcom/google/android/gms/internal/bo;
.super Ljava/lang/Object;


# instance fields
.field final synthetic uo:Lcom/google/android/gms/internal/f;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bo;->uo:Lcom/google/android/gms/internal/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/f;Lcom/google/android/gms/internal/ch;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bo;-><init>(Lcom/google/android/gms/internal/f;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->uo:Lcom/google/android/gms/internal/f;

    invoke-static {v0}, Lcom/google/android/gms/internal/f;->sa(Lcom/google/android/gms/internal/f;)Lcom/google/android/gms/common/api/m;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/f;->rZ(Lcom/google/android/gms/common/api/m;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.class final Lcom/google/android/gms/internal/bu;
.super Ljava/lang/Object;


# instance fields
.field final synthetic ui:Lcom/google/android/gms/internal/f;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bu;->ui:Lcom/google/android/gms/internal/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/f;Lcom/google/android/gms/internal/cn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bu;-><init>(Lcom/google/android/gms/internal/f;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bu;->ui:Lcom/google/android/gms/internal/f;

    invoke-static {v0}, Lcom/google/android/gms/internal/f;->rY(Lcom/google/android/gms/internal/f;)Lcom/google/android/gms/common/api/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/f;->rX(Lcom/google/android/gms/common/api/b;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

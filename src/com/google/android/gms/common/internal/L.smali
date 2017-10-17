.class Lcom/google/android/gms/common/internal/L;
.super Lcom/google/android/gms/common/internal/P;


# instance fields
.field final synthetic jN:Lcom/google/android/gms/internal/aw;

.field final synthetic jO:Landroid/content/Intent;

.field final synthetic jP:I


# direct methods
.method constructor <init>(Landroid/content/Intent;Lcom/google/android/gms/internal/aw;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/L;->jO:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/L;->jN:Lcom/google/android/gms/internal/aw;

    iput p3, p0, Lcom/google/android/gms/common/internal/L;->jP:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/P;-><init>()V

    return-void
.end method


# virtual methods
.method public lp()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/L;->jO:Landroid/content/Intent;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/L;->jN:Lcom/google/android/gms/internal/aw;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/L;->jO:Landroid/content/Intent;

    iget v2, p0, Lcom/google/android/gms/common/internal/L;->jP:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/aw;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.class Lcom/google/android/gms/common/internal/G;
.super Lcom/google/android/gms/common/internal/P;


# instance fields
.field final synthetic gE:Landroid/app/Activity;

.field final synthetic gF:Landroid/content/Intent;

.field final synthetic gG:I


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/app/Activity;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/G;->gF:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/G;->gE:Landroid/app/Activity;

    iput p3, p0, Lcom/google/android/gms/common/internal/G;->gG:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/P;-><init>()V

    return-void
.end method


# virtual methods
.method public iB()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/G;->gF:Landroid/content/Intent;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/G;->gE:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/G;->gF:Landroid/content/Intent;

    iget v2, p0, Lcom/google/android/gms/common/internal/G;->gG:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

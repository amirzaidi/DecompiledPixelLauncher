.class Lcom/google/android/gms/internal/cn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/g;


# instance fields
.field final synthetic xa:Lcom/google/android/gms/internal/bQ;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bQ;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cn;->xa:Lcom/google/android/gms/internal/bQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sb(Lcom/google/android/gms/internal/b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cn;->xa:Lcom/google/android/gms/internal/bQ;

    iget-object v0, v0, Lcom/google/android/gms/internal/bQ;->wg:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->rS()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cn;->xa:Lcom/google/android/gms/internal/bQ;

    invoke-static {v0}, Lcom/google/android/gms/internal/bQ;->By(Lcom/google/android/gms/internal/bQ;)Lcom/google/android/gms/internal/cr;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cn;->xa:Lcom/google/android/gms/internal/bQ;

    invoke-static {v0}, Lcom/google/android/gms/internal/bQ;->BC(Lcom/google/android/gms/internal/bQ;)Lcom/google/android/gms/common/api/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cn;->xa:Lcom/google/android/gms/internal/bQ;

    invoke-static {v0}, Lcom/google/android/gms/internal/bQ;->BC(Lcom/google/android/gms/internal/bQ;)Lcom/google/android/gms/common/api/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->rS()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/i;->gQ(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/cn;->xa:Lcom/google/android/gms/internal/bQ;

    iget-object v0, v0, Lcom/google/android/gms/internal/bQ;->wg:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cn;->xa:Lcom/google/android/gms/internal/bQ;

    invoke-static {v0}, Lcom/google/android/gms/internal/bQ;->By(Lcom/google/android/gms/internal/bQ;)Lcom/google/android/gms/internal/cr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/cr;->Ch()V

    goto :goto_1
.end method

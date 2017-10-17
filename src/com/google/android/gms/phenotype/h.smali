.class public Lcom/google/android/gms/phenotype/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Dc(Lcom/google/android/gms/phenotype/Flag;Lcom/google/android/gms/phenotype/Flag;)I
    .locals 2

    iget v0, p1, Lcom/google/android/gms/phenotype/Flag;->yD:I

    iget v1, p2, Lcom/google/android/gms/phenotype/Flag;->yD:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/gms/phenotype/Flag;->yD:I

    iget v1, p2, Lcom/google/android/gms/phenotype/Flag;->yD:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/phenotype/Flag;

    check-cast p2, Lcom/google/android/gms/phenotype/Flag;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/phenotype/h;->Dc(Lcom/google/android/gms/phenotype/Flag;Lcom/google/android/gms/phenotype/Flag;)I

    move-result v0

    return v0
.end method

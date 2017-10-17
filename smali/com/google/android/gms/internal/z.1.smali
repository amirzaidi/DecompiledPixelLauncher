.class Lcom/google/android/gms/internal/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/phenotype/b;


# instance fields
.field private final pa:Lcom/google/android/gms/common/api/Status;

.field private final pb:Lcom/google/android/gms/phenotype/Configurations;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/phenotype/Configurations;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/z;->pa:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/z;->pb:Lcom/google/android/gms/phenotype/Configurations;

    return-void
.end method


# virtual methods
.method public dr()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->pa:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public oF()Lcom/google/android/gms/phenotype/Configurations;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->pb:Lcom/google/android/gms/phenotype/Configurations;

    return-object v0
.end method

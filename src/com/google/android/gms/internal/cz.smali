.class Lcom/google/android/gms/internal/cz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/f;


# instance fields
.field public final xb:I

.field public final xc:Lcom/google/android/gms/common/api/d;

.field public final xd:Lcom/google/android/gms/common/api/f;

.field final synthetic xe:Lcom/google/android/gms/internal/bq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bq;ILcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cz;->xe:Lcom/google/android/gms/internal/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/cz;->xb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/cz;->xc:Lcom/google/android/gms/common/api/d;

    iput-object p4, p0, Lcom/google/android/gms/internal/cz;->xd:Lcom/google/android/gms/common/api/f;

    invoke-virtual {p3, p0}, Lcom/google/android/gms/common/api/d;->dz(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method


# virtual methods
.method public Cj()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cz;->xc:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/d;->dw(Lcom/google/android/gms/common/api/f;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cz;->xc:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->dx()V

    return-void
.end method

.method public dQ(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "beginFailureResolution for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AutoManageHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/cz;->xe:Lcom/google/android/gms/internal/bq;

    iget v1, p0, Lcom/google/android/gms/internal/cz;->xb:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/bq;->yA(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "GoogleApiClient #"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/cz;->xb:I

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cz;->xc:Lcom/google/android/gms/common/api/d;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/d;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

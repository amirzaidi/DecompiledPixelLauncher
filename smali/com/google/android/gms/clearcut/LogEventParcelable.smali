.class public Lcom/google/android/gms/clearcut/LogEventParcelable;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/clearcut/i;


# instance fields
.field public final GH:I

.field public GI:[Ljava/lang/String;

.field public final GJ:Lcom/google/android/gms/internal/h;

.field public GK:[B

.field public GL:[I

.field public final GM:Lcom/google/android/gms/clearcut/e;

.field public GN:Z

.field public GO:[I

.field public GP:[[B

.field public GQ:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

.field public final GR:Lcom/google/android/gms/clearcut/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/clearcut/i;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/LogEventParcelable;->CREATOR:Lcom/google/android/gms/clearcut/i;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/playlog/internal/PlayLoggerContext;[B[I[Ljava/lang/String;[I[[BZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GH:I

    iput-object p2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GQ:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iput-object p3, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GK:[B

    iput-object p4, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GL:[I

    iput-object p5, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GI:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GJ:Lcom/google/android/gms/internal/h;

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GR:Lcom/google/android/gms/clearcut/e;

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GM:Lcom/google/android/gms/clearcut/e;

    iput-object p6, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GO:[I

    iput-object p7, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GP:[[B

    iput-boolean p8, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GN:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/internal/h;Lcom/google/android/gms/clearcut/e;Lcom/google/android/gms/clearcut/e;[I[Ljava/lang/String;[I[[BZ)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GH:I

    iput-object p1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GQ:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iput-object p2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GJ:Lcom/google/android/gms/internal/h;

    iput-object p3, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GR:Lcom/google/android/gms/clearcut/e;

    iput-object p4, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GM:Lcom/google/android/gms/clearcut/e;

    iput-object p5, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GL:[I

    iput-object p6, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GI:[Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GO:[I

    iput-object p8, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GP:[[B

    iput-boolean p9, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GN:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;

    if-nez v2, :cond_1

    return v1

    :cond_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/clearcut/LogEventParcelable;

    iget v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GH:I

    iget v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->GH:I

    if-eq v2, v3, :cond_4

    :cond_2
    :goto_0
    move v0, v1

    :cond_3
    return v0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GQ:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->GQ:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GK:[B

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->GK:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GL:[I

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->GL:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GI:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->GI:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GJ:Lcom/google/android/gms/internal/h;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->GJ:Lcom/google/android/gms/internal/h;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GR:Lcom/google/android/gms/clearcut/e;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->GR:Lcom/google/android/gms/clearcut/e;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GM:Lcom/google/android/gms/clearcut/e;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->GM:Lcom/google/android/gms/clearcut/e;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GO:[I

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->GO:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GP:[[B

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->GP:[[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GN:Z

    iget-boolean v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->GN:Z

    if-eq v2, v3, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GQ:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GK:[B

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GL:[I

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GI:[Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GJ:Lcom/google/android/gms/internal/h;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GR:Lcom/google/android/gms/clearcut/e;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GM:Lcom/google/android/gms/clearcut/e;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GO:[I

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GP:[[B

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GN:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->hI([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "LogEventParcelable["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GQ:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "LogEventBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GK:[B

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GK:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "TestCodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GL:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "MendelPackages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GI:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "LogEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GJ:Lcom/google/android/gms/internal/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ExtensionProducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GR:Lcom/google/android/gms/clearcut/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "VeProducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GM:Lcom/google/android/gms/clearcut/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ExperimentIDs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GO:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GP:[[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "AddPhenotypeExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GN:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/clearcut/i;->LL(Lcom/google/android/gms/clearcut/LogEventParcelable;Landroid/os/Parcel;I)V

    return-void
.end method

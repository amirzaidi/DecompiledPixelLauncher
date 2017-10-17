.class public final Lcom/google/android/gms/common/stats/e;
.super Ljava/lang/Object;


# static fields
.field public static jj:Lcom/google/android/gms/internal/i;

.field public static jk:Lcom/google/android/gms/internal/i;

.field public static jl:Lcom/google/android/gms/internal/i;

.field public static jm:Lcom/google/android/gms/internal/i;

.field public static jn:Lcom/google/android/gms/internal/i;

.field public static jo:Lcom/google/android/gms/internal/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/google/android/gms/common/stats/a;->ir:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "gms:common:stats:connections:level"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/i;->sn(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/i;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/e;->jn:Lcom/google/android/gms/internal/i;

    const-string/jumbo v0, "gms:common:stats:connections:ignored_calling_processes"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/i;->si(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/i;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/e;->jk:Lcom/google/android/gms/internal/i;

    const-string/jumbo v0, "gms:common:stats:connections:ignored_calling_services"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/i;->si(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/i;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/e;->jj:Lcom/google/android/gms/internal/i;

    const-string/jumbo v0, "gms:common:stats:connections:ignored_target_processes"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/i;->si(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/i;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/e;->jo:Lcom/google/android/gms/internal/i;

    const-string/jumbo v0, "gms:common:stats:connections:ignored_target_services"

    const-string/jumbo v1, "com.google.android.gms.auth.GetToken"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/i;->si(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/i;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/e;->jl:Lcom/google/android/gms/internal/i;

    const-wide/32 v0, 0x927c0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "gms:common:stats:connections:time_out_duration"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/i;->sm(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/internal/i;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/e;->jm:Lcom/google/android/gms/internal/i;

    return-void
.end method

.class public final Lcom/google/android/gms/internal/bN;
.super Ljava/lang/Object;


# static fields
.field public static final vF:Lcom/google/android/gms/common/api/r;

.field public static final vG:Lcom/google/android/gms/common/api/r;

.field public static final vH:Lcom/google/android/gms/common/api/Scope;

.field public static final vI:Lcom/google/android/gms/common/api/h;

.field public static final vJ:Lcom/google/android/gms/common/api/h;

.field static final vK:Lcom/google/android/gms/common/api/l;

.field public static final vL:Lcom/google/android/gms/common/api/l;

.field public static final vM:Lcom/google/android/gms/common/api/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/r;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/r;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bN;->vF:Lcom/google/android/gms/common/api/r;

    new-instance v0, Lcom/google/android/gms/common/api/r;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/r;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bN;->vG:Lcom/google/android/gms/common/api/r;

    new-instance v0, Lcom/google/android/gms/internal/cp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bN;->vL:Lcom/google/android/gms/common/api/l;

    new-instance v0, Lcom/google/android/gms/internal/ci;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ci;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bN;->vK:Lcom/google/android/gms/common/api/l;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "profile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/bN;->vM:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "email"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/bN;->vH:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/h;

    sget-object v1, Lcom/google/android/gms/internal/bN;->vL:Lcom/google/android/gms/common/api/l;

    sget-object v2, Lcom/google/android/gms/internal/bN;->vF:Lcom/google/android/gms/common/api/r;

    const-string/jumbo v3, "SignIn.API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/h;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/r;)V

    sput-object v0, Lcom/google/android/gms/internal/bN;->vI:Lcom/google/android/gms/common/api/h;

    new-instance v0, Lcom/google/android/gms/common/api/h;

    sget-object v1, Lcom/google/android/gms/internal/bN;->vK:Lcom/google/android/gms/common/api/l;

    sget-object v2, Lcom/google/android/gms/internal/bN;->vG:Lcom/google/android/gms/common/api/r;

    const-string/jumbo v3, "SignIn.INTERNAL_API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/h;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/r;)V

    sput-object v0, Lcom/google/android/gms/internal/bN;->vJ:Lcom/google/android/gms/common/api/h;

    return-void
.end method

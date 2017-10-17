.class public final Lcom/google/android/gms/internal/bH;
.super Ljava/lang/Object;


# static fields
.field public static final vL:Lcom/google/android/gms/common/api/q;

.field public static final vM:Lcom/google/android/gms/common/api/q;

.field public static final vN:Lcom/google/android/gms/common/api/Scope;

.field public static final vO:Lcom/google/android/gms/common/api/e;

.field public static final vP:Lcom/google/android/gms/common/api/e;

.field static final vQ:Lcom/google/android/gms/common/api/j;

.field public static final vR:Lcom/google/android/gms/common/api/j;

.field public static final vS:Lcom/google/android/gms/common/api/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/q;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bH;->vL:Lcom/google/android/gms/common/api/q;

    new-instance v0, Lcom/google/android/gms/common/api/q;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bH;->vM:Lcom/google/android/gms/common/api/q;

    new-instance v0, Lcom/google/android/gms/internal/cj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bH;->vR:Lcom/google/android/gms/common/api/j;

    new-instance v0, Lcom/google/android/gms/internal/cc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bH;->vQ:Lcom/google/android/gms/common/api/j;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "profile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/bH;->vS:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "email"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/bH;->vN:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/e;

    sget-object v1, Lcom/google/android/gms/internal/bH;->vR:Lcom/google/android/gms/common/api/j;

    sget-object v2, Lcom/google/android/gms/internal/bH;->vL:Lcom/google/android/gms/common/api/q;

    const-string/jumbo v3, "SignIn.API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/e;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/common/api/q;)V

    sput-object v0, Lcom/google/android/gms/internal/bH;->vO:Lcom/google/android/gms/common/api/e;

    new-instance v0, Lcom/google/android/gms/common/api/e;

    sget-object v1, Lcom/google/android/gms/internal/bH;->vQ:Lcom/google/android/gms/common/api/j;

    sget-object v2, Lcom/google/android/gms/internal/bH;->vM:Lcom/google/android/gms/common/api/q;

    const-string/jumbo v3, "SignIn.INTERNAL_API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/e;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/common/api/q;)V

    sput-object v0, Lcom/google/android/gms/internal/bH;->vP:Lcom/google/android/gms/common/api/e;

    return-void
.end method

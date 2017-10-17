.class public final Lcom/google/android/gms/common/stats/a;
.super Ljava/lang/Object;


# static fields
.field public static iq:I

.field public static ir:I

.field public static is:I

.field public static it:I

.field public static iu:I

.field public static iv:I

.field public static final iw:Landroid/content/ComponentName;

.field public static ix:I

.field public static iy:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.google.android.gms"

    const-string/jumbo v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/stats/a;->iw:Landroid/content/ComponentName;

    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/common/stats/a;->ir:I

    sput v3, Lcom/google/android/gms/common/stats/a;->ix:I

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/common/stats/a;->iy:I

    const/4 v0, 0x4

    sput v0, Lcom/google/android/gms/common/stats/a;->is:I

    const/16 v0, 0x8

    sput v0, Lcom/google/android/gms/common/stats/a;->it:I

    const/16 v0, 0x10

    sput v0, Lcom/google/android/gms/common/stats/a;->iu:I

    const/16 v0, 0x20

    sput v0, Lcom/google/android/gms/common/stats/a;->iv:I

    sput v3, Lcom/google/android/gms/common/stats/a;->iq:I

    return-void
.end method

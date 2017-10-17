.class public final Lcom/google/android/gms/common/stats/a;
.super Ljava/lang/Object;


# static fields
.field public static li:I

.field public static lj:I

.field public static lk:I

.field public static ll:I

.field public static lm:I

.field public static ln:I

.field public static final lo:Landroid/content/ComponentName;

.field public static lp:I

.field public static lq:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.google.android.gms"

    const-string/jumbo v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/stats/a;->lo:Landroid/content/ComponentName;

    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/common/stats/a;->lj:I

    sput v3, Lcom/google/android/gms/common/stats/a;->lp:I

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/common/stats/a;->lq:I

    const/4 v0, 0x4

    sput v0, Lcom/google/android/gms/common/stats/a;->lk:I

    const/16 v0, 0x8

    sput v0, Lcom/google/android/gms/common/stats/a;->ll:I

    const/16 v0, 0x10

    sput v0, Lcom/google/android/gms/common/stats/a;->lm:I

    const/16 v0, 0x20

    sput v0, Lcom/google/android/gms/common/stats/a;->ln:I

    sput v3, Lcom/google/android/gms/common/stats/a;->li:I

    return-void
.end method

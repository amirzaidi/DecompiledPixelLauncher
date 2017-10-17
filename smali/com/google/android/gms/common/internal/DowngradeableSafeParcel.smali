.class public abstract Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field private static fq:Ljava/lang/ClassLoader;

.field private static fr:Ljava/lang/Integer;

.field private static final fs:Ljava/lang/Object;


# instance fields
.field private ft:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->fs:Ljava/lang/Object;

    sput-object v1, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->fq:Ljava/lang/ClassLoader;

    sput-object v1, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->fr:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->ft:Z

    return-void
.end method

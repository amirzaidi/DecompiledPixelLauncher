.class public final Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final packageName:Ljava/lang/String;

.field public progress:I

.field public state:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    .line 60
    iput p2, p0, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    .line 61
    iput p3, p0, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I

    .line 62
    return-void
.end method

.class public Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final info:Landroid/content/pm/LauncherActivityInfo;

.field public final installTime:J


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherActivityInfo;J)V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;->info:Landroid/content/pm/LauncherActivityInfo;

    .line 180
    iput-wide p2, p0, Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;->installTime:J

    .line 181
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;)I
    .locals 4

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;->installTime:J

    iget-wide v2, p1, Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;->installTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/Utilities;->longCompare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 183
    check-cast p1, Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;->compareTo(Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;)I

    move-result v0

    return v0
.end method

.class final Lcom/android/launcher3/IconCache$IconDB;
.super Lcom/android/launcher3/util/SQLiteCacheHelper;
.source "SourceFile"


# static fields
.field private static final RELEASE_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 757
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_DISABLE_ICON_NORMALIZATION:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 756
    :goto_0
    add-int/lit8 v0, v0, 0x11

    sput v0, Lcom/android/launcher3/IconCache$IconDB;->RELEASE_VERSION:I

    .line 753
    return-void

    .line 757
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 771
    const-string/jumbo v0, "app_icons.db"

    .line 772
    sget v1, Lcom/android/launcher3/IconCache$IconDB;->RELEASE_VERSION:I

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v1, p2

    .line 773
    const-string/jumbo v2, "icons"

    .line 771
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/launcher3/util/SQLiteCacheHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 774
    return-void
.end method


# virtual methods
.method protected onCreateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 778
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS icons (componentName TEXT NOT NULL, profileId INTEGER NOT NULL, lastUpdated INTEGER NOT NULL DEFAULT 0, version INTEGER NOT NULL DEFAULT 0, icon BLOB, icon_low_res BLOB, label TEXT, system_state TEXT, PRIMARY KEY (componentName, profileId) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 789
    return-void
.end method

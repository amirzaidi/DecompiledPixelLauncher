.class public final Lcom/android/launcher3/config/FeatureFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static LAUNCHER3_ALL_APPS_PULL_UP:Z

.field public static LAUNCHER3_DIRECT_SCROLL:Z

.field public static LAUNCHER3_DISABLE_ICON_NORMALIZATION:Z

.field public static LAUNCHER3_DISABLE_PINCH_TO_OVERVIEW:Z

.field public static LAUNCHER3_LEGACY_FOLDER_ICON:Z

.field public static LAUNCHER3_LEGACY_WORKSPACE_DND:Z

.field public static LAUNCHER3_NEW_FOLDER_ANIMATION:Z

.field public static LAUNCHER3_PHYSICS:Z

.field public static LAUNCHER3_PROMISE_APPS_IN_ALL_APPS:Z

.field public static LAUNCHER3_SPRING_ICONS:Z

.field public static LAUNCHER3_UPDATE_SOFT_INPUT_MODE:Z

.field public static LAUNCHER3_USE_SYSTEM_DRAG_DRIVER:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 30
    sput-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_DISABLE_ICON_NORMALIZATION:Z

    .line 32
    sput-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_LEGACY_WORKSPACE_DND:Z

    .line 33
    sput-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_LEGACY_FOLDER_ICON:Z

    .line 34
    sput-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_USE_SYSTEM_DRAG_DRIVER:Z

    .line 35
    sput-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_DISABLE_PINCH_TO_OVERVIEW:Z

    .line 36
    sput-boolean v1, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    .line 37
    sput-boolean v1, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_NEW_FOLDER_ANIMATION:Z

    .line 38
    sput-boolean v1, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_DIRECT_SCROLL:Z

    .line 39
    sput-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_UPDATE_SOFT_INPUT_MODE:Z

    .line 40
    sput-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_PROMISE_APPS_IN_ALL_APPS:Z

    .line 41
    sput-boolean v1, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_PHYSICS:Z

    .line 42
    sput-boolean v1, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_SPRING_ICONS:Z

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

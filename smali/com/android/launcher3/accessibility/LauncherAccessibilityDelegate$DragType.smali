.class public final enum Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

.field public static final enum FOLDER:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

.field public static final enum ICON:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

.field public static final enum WIDGET:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    const-string/jumbo v1, "ICON"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->ICON:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    .line 60
    new-instance v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    const-string/jumbo v1, "FOLDER"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->FOLDER:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    .line 61
    new-instance v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    const-string/jumbo v1, "WIDGET"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->WIDGET:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    sget-object v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->ICON:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->FOLDER:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->WIDGET:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->$VALUES:[Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->$VALUES:[Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    return-object v0
.end method

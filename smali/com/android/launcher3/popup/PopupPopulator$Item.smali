.class public final enum Lcom/android/launcher3/popup/PopupPopulator$Item;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/popup/PopupPopulator$Item;

.field public static final enum NOTIFICATION:Lcom/android/launcher3/popup/PopupPopulator$Item;

.field public static final enum SHORTCUT:Lcom/android/launcher3/popup/PopupPopulator$Item;

.field public static final enum SYSTEM_SHORTCUT:Lcom/android/launcher3/popup/PopupPopulator$Item;

.field public static final enum SYSTEM_SHORTCUT_ICON:Lcom/android/launcher3/popup/PopupPopulator$Item;


# instance fields
.field public final isShortcut:Z

.field public final layoutId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 60
    new-instance v0, Lcom/android/launcher3/popup/PopupPopulator$Item;

    const-string/jumbo v1, "SHORTCUT"

    const v2, 0x7f04000f

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/launcher3/popup/PopupPopulator$Item;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/launcher3/popup/PopupPopulator$Item;->SHORTCUT:Lcom/android/launcher3/popup/PopupPopulator$Item;

    .line 61
    new-instance v0, Lcom/android/launcher3/popup/PopupPopulator$Item;

    const-string/jumbo v1, "NOTIFICATION"

    const v2, 0x7f040017

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/launcher3/popup/PopupPopulator$Item;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/launcher3/popup/PopupPopulator$Item;->NOTIFICATION:Lcom/android/launcher3/popup/PopupPopulator$Item;

    .line 62
    new-instance v0, Lcom/android/launcher3/popup/PopupPopulator$Item;

    const-string/jumbo v1, "SYSTEM_SHORTCUT"

    const v2, 0x7f04002c

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/launcher3/popup/PopupPopulator$Item;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/launcher3/popup/PopupPopulator$Item;->SYSTEM_SHORTCUT:Lcom/android/launcher3/popup/PopupPopulator$Item;

    .line 63
    new-instance v0, Lcom/android/launcher3/popup/PopupPopulator$Item;

    const-string/jumbo v1, "SYSTEM_SHORTCUT_ICON"

    const v2, 0x7f04002d

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/android/launcher3/popup/PopupPopulator$Item;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/launcher3/popup/PopupPopulator$Item;->SYSTEM_SHORTCUT_ICON:Lcom/android/launcher3/popup/PopupPopulator$Item;

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/launcher3/popup/PopupPopulator$Item;

    sget-object v1, Lcom/android/launcher3/popup/PopupPopulator$Item;->SHORTCUT:Lcom/android/launcher3/popup/PopupPopulator$Item;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher3/popup/PopupPopulator$Item;->NOTIFICATION:Lcom/android/launcher3/popup/PopupPopulator$Item;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher3/popup/PopupPopulator$Item;->SYSTEM_SHORTCUT:Lcom/android/launcher3/popup/PopupPopulator$Item;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/launcher3/popup/PopupPopulator$Item;->SYSTEM_SHORTCUT_ICON:Lcom/android/launcher3/popup/PopupPopulator$Item;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/launcher3/popup/PopupPopulator$Item;->$VALUES:[Lcom/android/launcher3/popup/PopupPopulator$Item;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/android/launcher3/popup/PopupPopulator$Item;->layoutId:I

    .line 70
    iput-boolean p4, p0, Lcom/android/launcher3/popup/PopupPopulator$Item;->isShortcut:Z

    .line 71
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/popup/PopupPopulator$Item;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/android/launcher3/popup/PopupPopulator$Item;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/popup/PopupPopulator$Item;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/popup/PopupPopulator$Item;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/launcher3/popup/PopupPopulator$Item;->$VALUES:[Lcom/android/launcher3/popup/PopupPopulator$Item;

    return-object v0
.end method

.class public Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public appIndex:I

.field public appInfo:Lcom/android/launcher3/AppInfo;

.field public position:I

.field public rowAppIndex:I

.field public rowIndex:I

.field public sectionName:Ljava/lang/String;

.field public viewType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lcom/android/launcher3/AppInfo;

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    .line 78
    return-void
.end method

.method public static asApp(ILjava/lang/String;Lcom/android/launcher3/AppInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 108
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 109
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 110
    iput-object p1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 111
    iput-object p2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lcom/android/launcher3/AppInfo;

    .line 112
    iput p3, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    .line 113
    return-object v0
.end method

.method public static asDiscoveryItem(ILjava/lang/String;Lcom/android/launcher3/AppInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 119
    const/16 v1, 0x200

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 120
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 121
    iput-object p1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 122
    iput-object p2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lcom/android/launcher3/AppInfo;

    .line 123
    iput p3, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    .line 124
    return-object v0
.end method

.method public static asEmptySearch(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 129
    const/16 v1, 0x8

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 130
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 131
    return-object v0
.end method

.method public static asLoadingDivider(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 157
    const/16 v1, 0x100

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 158
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 159
    return-object v0
.end method

.method public static asMarketDivider(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 150
    const/16 v1, 0x20

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 151
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 152
    return-object v0
.end method

.method public static asMarketSearch(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 164
    const/16 v1, 0x10

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 165
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 166
    return-object v0
.end method

.method public static asPredictedApp(ILjava/lang/String;Lcom/android/launcher3/AppInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2

    .prologue
    .line 100
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asApp(ILjava/lang/String;Lcom/android/launcher3/AppInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v0

    .line 101
    const/4 v1, 0x4

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 102
    return-object v0
.end method

.method public static asPredictionDivider(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 136
    const/16 v1, 0x80

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 137
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 138
    return-object v0
.end method

.method public static asSearchDivider(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 143
    const/16 v1, 0x40

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 144
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 145
    return-object v0
.end method

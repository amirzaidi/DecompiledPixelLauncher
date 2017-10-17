.class public Lcom/android/launcher3/AutoInstallsLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HOTSEAT_CONTAINER_NAME:Ljava/lang/String;


# instance fields
.field final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field protected final mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

.field private final mColumnCount:I

.field final mContext:Landroid/content/Context;

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

.field protected final mLayoutId:I

.field protected final mPackageManager:Landroid/content/pm/PackageManager;

.field protected final mRootTag:Ljava/lang/String;

.field private final mRowCount:I

.field protected final mSourceRes:Landroid/content/res/Resources;

.field private final mTemp:[J

.field final mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    const/16 v0, -0x65

    invoke-static {v0}, Lcom/android/launcher3/LauncherSettings$Favorites;->containerToString(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    sput-object v0, Lcom/android/launcher3/AutoInstallsLayout;->HOTSEAT_CONTAINER_NAME:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mTemp:[J

    .line 174
    iput-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mContext:Landroid/content/Context;

    .line 175
    iput-object p2, p0, Lcom/android/launcher3/AutoInstallsLayout;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 176
    iput-object p3, p0, Lcom/android/launcher3/AutoInstallsLayout;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 179
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    .line 180
    iput-object p6, p0, Lcom/android/launcher3/AutoInstallsLayout;->mRootTag:Ljava/lang/String;

    .line 182
    iput-object p4, p0, Lcom/android/launcher3/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    .line 183
    iput p5, p0, Lcom/android/launcher3/AutoInstallsLayout;->mLayoutId:I

    .line 185
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 186
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mRowCount:I

    .line 187
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mColumnCount:I

    .line 188
    return-void
.end method

.method protected static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 623
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 624
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 626
    :cond_1
    if-eq v0, v2, :cond_2

    .line 627
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 631
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected start tag: found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 632
    const-string/jumbo v2, ", expected "

    .line 631
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_3
    return-void
.end method

.method private static convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 639
    if-gez v0, :cond_0

    .line 640
    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 643
    :cond_0
    return-object p0
.end method

.method static copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 681
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 682
    return-void
.end method

.method static get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;)Lcom/android/launcher3/AutoInstallsLayout;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    const-string/jumbo v0, "android.autoinstalls.config.action.PLAY_AUTO_INSTALL"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;

    move-result-object v1

    .line 73
    if-nez v1, :cond_0

    .line 74
    return-object v2

    .line 76
    :cond_0
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/launcher3/AutoInstallsLayout;->get(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object v0

    return-object v0
.end method

.method static get(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;)Lcom/android/launcher3/AutoInstallsLayout;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 82
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    .line 85
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v2, "default_layout_%dx%d_h%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 86
    iget v4, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    iget v4, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    .line 85
    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string/jumbo v2, "xml"

    invoke-virtual {p2, v0, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 90
    if-nez v5, :cond_0

    .line 91
    const-string/jumbo v2, "AutoInstalls"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Formatted layout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    const-string/jumbo v3, " not found. Trying layout without hosteat"

    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v2, "default_layout_%dx%d"

    new-array v3, v8, [Ljava/lang/Object;

    .line 94
    iget v4, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v7

    .line 93
    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string/jumbo v1, "xml"

    invoke-virtual {p2, v0, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 99
    :cond_0
    if-nez v5, :cond_1

    .line 100
    const-string/jumbo v1, "AutoInstalls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Formatted layout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " not found. Trying the default layout"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string/jumbo v0, "default_layout"

    const-string/jumbo v1, "xml"

    invoke-virtual {p2, v0, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 104
    :cond_1
    if-nez v5, :cond_2

    .line 105
    const-string/jumbo v0, "AutoInstalls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Layout definition not found in package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 108
    :cond_2
    new-instance v0, Lcom/android/launcher3/AutoInstallsLayout;

    .line 109
    const-string/jumbo v6, "workspace"

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    .line 108
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/AutoInstallsLayout;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V

    return-object v0
.end method

.method protected static getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 666
    const-string/jumbo v0, "http://schemas.android.com/apk/res-auto/com.android.launcher3"

    .line 665
    invoke-interface {p0, v0, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 668
    if-ne v0, p2, :cond_0

    .line 669
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 671
    :cond_0
    return v0
.end method

.method protected static getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 652
    const-string/jumbo v0, "http://schemas.android.com/apk/res-auto/com.android.launcher3"

    .line 651
    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 653
    if-nez v0, :cond_0

    .line 654
    invoke-interface {p0, v1, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 656
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected addShortcut(Ljava/lang/String;Landroid/content/Intent;I)J
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 292
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    invoke-interface {v0}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->generateNewItemId()J

    move-result-wide v0

    .line 293
    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v3, "intent"

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v3, "itemType"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v3, "spanX"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v3, "spanY"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v3, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 299
    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    iget-object v3, p0, Lcom/android/launcher3/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-interface {v2, v3, v4}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 300
    const-wide/16 v0, -0x1

    return-wide v0

    .line 302
    :cond_0
    return-wide v0
.end method

.method protected getFolderElementsMap()Ljava/util/HashMap;
    .locals 4

    .prologue
    .line 307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 308
    const-string/jumbo v1, "appicon"

    new-instance v2, Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string/jumbo v1, "autoinstall"

    new-instance v2, Lcom/android/launcher3/AutoInstallsLayout$AutoInstallParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/AutoInstallsLayout$AutoInstallParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string/jumbo v1, "shortcut"

    new-instance v2, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;

    iget-object v3, p0, Lcom/android/launcher3/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    return-object v0
.end method

.method protected getLayoutElementsMap()Ljava/util/HashMap;
    .locals 4

    .prologue
    .line 315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 316
    const-string/jumbo v1, "appicon"

    new-instance v2, Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string/jumbo v1, "autoinstall"

    new-instance v2, Lcom/android/launcher3/AutoInstallsLayout$AutoInstallParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/AutoInstallsLayout$AutoInstallParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string/jumbo v1, "folder"

    new-instance v2, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string/jumbo v1, "appwidget"

    new-instance v2, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string/jumbo v1, "shortcut"

    new-instance v2, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;

    iget-object v3, p0, Lcom/android/launcher3/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    return-object v0
.end method

.method public loadLayout(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I
    .locals 4

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 196
    :try_start_0
    iget v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mLayoutId:I

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/AutoInstallsLayout;->parseLayout(ILjava/util/ArrayList;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string/jumbo v1, "AutoInstalls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error parsing layout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v0, -0x1

    return v0
.end method

.method protected parseAndAddNode(Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;Ljava/util/ArrayList;)I
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 251
    const-string/jumbo v0, "include"

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    const-string/jumbo v0, "workspace"

    invoke-static {p1, v0, v8}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v0

    .line 253
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/AutoInstallsLayout;->parseLayout(ILjava/util/ArrayList;)I

    move-result v0

    return v0

    .line 257
    :cond_0
    return v8

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 262
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mTemp:[J

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->parseContainerAndScreen(Landroid/content/res/XmlResourceParser;[J)V

    .line 263
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mTemp:[J

    aget-wide v2, v0, v8

    .line 264
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mTemp:[J

    aget-wide v4, v0, v9

    .line 266
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "container"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 267
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "screen"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 269
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "cellX"

    .line 270
    const-string/jumbo v6, "x"

    invoke-static {p1, v6}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/launcher3/AutoInstallsLayout;->mColumnCount:I

    invoke-static {v6, v7}, Lcom/android/launcher3/AutoInstallsLayout;->convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 269
    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "cellY"

    .line 272
    const-string/jumbo v6, "y"

    invoke-static {p1, v6}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/launcher3/AutoInstallsLayout;->mRowCount:I

    invoke-static {v6, v7}, Lcom/android/launcher3/AutoInstallsLayout;->convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 271
    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AutoInstallsLayout$TagParser;

    .line 275
    if-nez v0, :cond_2

    .line 277
    return v8

    .line 279
    :cond_2
    invoke-interface {v0, p1}, Lcom/android/launcher3/AutoInstallsLayout$TagParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;)J

    move-result-wide v0

    .line 280
    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-ltz v0, :cond_4

    .line 282
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 283
    const-wide/16 v0, -0x64

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    .line 284
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_3
    return v9

    .line 288
    :cond_4
    return v8
.end method

.method protected parseContainerAndScreen(Landroid/content/res/XmlResourceParser;[J)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 230
    sget-object v0, Lcom/android/launcher3/AutoInstallsLayout;->HOTSEAT_CONTAINER_NAME:Ljava/lang/String;

    const-string/jumbo v1, "container"

    invoke-static {p1, v1}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const-wide/16 v0, -0x65

    aput-wide v0, p2, v2

    .line 233
    const-string/jumbo v0, "rank"

    invoke-static {p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 234
    aput-wide v0, p2, v3

    .line 240
    :goto_0
    return-void

    .line 237
    :cond_0
    const-wide/16 v0, -0x64

    aput-wide v0, p2, v2

    .line 238
    const-string/jumbo v0, "screen"

    invoke-static {p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    aput-wide v0, p2, v3

    goto :goto_0
.end method

.method protected parseLayout(ILjava/util/ArrayList;)I
    .locals 6

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mRootTag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 210
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher3/AutoInstallsLayout;->getLayoutElementsMap()Ljava/util/HashMap;

    move-result-object v3

    .line 213
    const/4 v0, 0x0

    .line 215
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 216
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_2

    :cond_1
    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 217
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 220
    invoke-virtual {p0, v1, v3, p2}, Lcom/android/launcher3/AutoInstallsLayout;->parseAndAddNode(Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;Ljava/util/ArrayList;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 222
    :cond_2
    return v0
.end method

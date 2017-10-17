.class Lcom/android/launcher3/provider/ImportDataTask$HotseatLayoutParser;
.super Lcom/android/launcher3/DefaultLayoutParser;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;)V
    .locals 6

    .prologue
    .line 395
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {p1}, Lcom/android/launcher3/provider/ImportDataTask;->-wrap0(Landroid/content/Context;)I

    move-result v5

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    .line 396
    return-void
.end method


# virtual methods
.method protected getLayoutElementsMap()Ljava/util/HashMap;
    .locals 4

    .prologue
    .line 401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 402
    const-string/jumbo v1, "favorite"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string/jumbo v1, "shortcut"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;

    iget-object v3, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string/jumbo v1, "resolve"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    return-object v0
.end method

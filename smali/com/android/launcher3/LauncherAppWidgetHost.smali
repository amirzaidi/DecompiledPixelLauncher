.class public Lcom/android/launcher3/LauncherAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "SourceFile"


# instance fields
.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private final mProviderChangeListeners:Ljava/util/ArrayList;

.field private final mViews:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;I)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    .line 43
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 44
    return-void
.end method


# virtual methods
.method public addProviderChangeListener(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method protected clearViews()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->clearViews()V

    .line 143
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 144
    return-void
.end method

.method public createView(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 3

    .prologue
    .line 91
    iget-boolean v0, p3, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_0

    .line 92
    new-instance v1, Lcom/android/launcher3/LauncherAppWidgetHostView;

    invoke-direct {v1, p1}, Lcom/android/launcher3/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 94
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    check-cast v0, Landroid/view/LayoutInflater;

    .line 95
    iget v2, p3, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->initialLayout:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 96
    const/4 v0, 0x0

    invoke-virtual {v1, v0, p3}, Lcom/android/launcher3/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 97
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->updateLastInflationOrientation()V

    .line 98
    return-object v1

    .line 101
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isBinderSizeError(Ljava/lang/Exception;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 111
    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/launcher3/LauncherAppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/LauncherAppWidgetHostView;

    move-result-object v0

    .line 114
    :cond_2
    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 115
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->switchToErrorView()V

    .line 116
    return-object v0
.end method

.method public deleteAppWidgetId(I)V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 138
    return-void
.end method

.method protected bridge synthetic onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/LauncherAppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/LauncherAppWidgetHostView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/LauncherAppWidgetHostView;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    invoke-direct {v0, p1}, Lcom/android/launcher3/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 50
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    return-object v0
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 126
    invoke-static {v0, p2}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v0

    .line 128
    invoke-super {p0, p1, v0}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 131
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->initSpans(Landroid/content/Context;)V

    .line 132
    return-void
.end method

.method protected onProvidersChanged()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 80
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 84
    :cond_0
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->notifyWidgetProvidersChanged()V

    .line 87
    :cond_1
    return-void
.end method

.method public removeProviderChangeListener(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public startListening()V
    .locals 2

    .prologue
    .line 57
    :try_start_0
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->startListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isBinderSizeError(Ljava/lang/Exception;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

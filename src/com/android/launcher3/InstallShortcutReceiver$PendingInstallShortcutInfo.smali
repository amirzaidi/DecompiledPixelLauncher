.class Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final activityInfo:Landroid/content/pm/LauncherActivityInfo;

.field final data:Landroid/content/Intent;

.field final label:Ljava/lang/String;

.field final launchIntent:Landroid/content/Intent;

.field final mContext:Landroid/content/Context;

.field final providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field final shortcutInfo:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

.field final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 357
    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 358
    iput-object p1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 360
    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    .line 361
    iput-object p3, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    .line 362
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    .line 364
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 365
    const-string/jumbo v1, "appWidgetId"

    .line 364
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 366
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 307
    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 308
    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 310
    iput-object p1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    .line 311
    iput-object p2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    .line 312
    iput-object p3, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    .line 314
    const-string/jumbo v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 315
    const-string/jumbo v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 324
    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 325
    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 327
    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    .line 328
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    .line 329
    iput-object p2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    .line 331
    invoke-static {p1}, Lcom/android/launcher3/AppInfo;->makeLaunchIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 332
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 340
    iput-object p1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 341
    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 343
    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    .line 344
    iput-object p2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    .line 345
    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    .line 347
    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->makeIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 348
    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    .line 349
    return-void
.end method


# virtual methods
.method public encodeToString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Landroid/content/pm/LauncherActivityInfo;

    if-eqz v0, :cond_0

    .line 374
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v0

    .line 376
    const-string/jumbo v1, "intent.launch"

    .line 374
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 377
    const-string/jumbo v1, "isAppShortcut"

    .line 374
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 377
    const/4 v1, 0x1

    .line 374
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    move-result-object v0

    .line 378
    const-string/jumbo v1, "userHandle"

    .line 374
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v1

    .line 379
    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    .line 378
    invoke-virtual {v1, v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 374
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    if-eqz v0, :cond_1

    .line 384
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v0

    .line 386
    const-string/jumbo v1, "intent.launch"

    .line 384
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 387
    const-string/jumbo v1, "isDeepShortcut"

    .line 384
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 387
    const/4 v1, 0x1

    .line 384
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    move-result-object v0

    .line 388
    const-string/jumbo v1, "userHandle"

    .line 384
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v1

    .line 389
    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    .line 388
    invoke-virtual {v1, v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 384
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_2

    .line 394
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v0

    .line 396
    const-string/jumbo v1, "intent.launch"

    .line 394
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 397
    const-string/jumbo v1, "isAppWidget"

    .line 394
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 397
    const/4 v1, 0x1

    .line 394
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    move-result-object v0

    .line 398
    const-string/jumbo v1, "userHandle"

    .line 394
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v1

    .line 399
    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    .line 398
    invoke-virtual {v1, v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 394
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 404
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/InstallShortcutReceiver;->ensureValidName(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 415
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 417
    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent$ShortcutIconResource;

    .line 420
    new-instance v3, Lorg/json/JSONStringer;

    invoke-direct {v3}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v3

    .line 422
    const-string/jumbo v4, "intent.launch"

    .line 420
    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    .line 422
    iget-object v4, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    .line 420
    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v3

    .line 423
    const-string/jumbo v4, "name"

    .line 420
    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 424
    if-eqz v0, :cond_6

    .line 425
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 426
    const-string/jumbo v3, "icon"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 428
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 427
    invoke-static {v0, v4, v3, v5}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 430
    :goto_1
    if-eqz v1, :cond_4

    .line 431
    const-string/jumbo v2, "iconResource"

    invoke-virtual {v0, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v2, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 432
    const-string/jumbo v2, "iconResourcePackage"

    invoke-virtual {v0, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 433
    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 432
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 435
    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 405
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 406
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 407
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 405
    if-eqz v0, :cond_3

    .line 408
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 409
    const/high16 v1, 0x10200000

    .line 408
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    const-string/jumbo v1, "InstallShortcutReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception when adding shortcut: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-object v6

    :cond_6
    move-object v0, v2

    goto :goto_1
.end method

.method public getItemInfo()Lcom/android/launcher3/ItemInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 443
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Landroid/content/pm/LauncherActivityInfo;

    if-eqz v0, :cond_1

    .line 444
    new-instance v0, Lcom/android/launcher3/AppInfo;

    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Landroid/content/pm/LauncherActivityInfo;

    iget-object v3, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 445
    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    .line 447
    const-string/jumbo v2, ""

    iput-object v2, v0, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    .line 448
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 449
    invoke-virtual {v0}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    .line 450
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 451
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v1, v0, v2, v4}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 462
    :goto_0
    return-object v0

    .line 453
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo$1;-><init>(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/ShortcutInfo;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherModel;->updateAndBindShortcutInfo(Lcom/android/launcher3/util/Provider;)V

    goto :goto_0

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    if-eqz v0, :cond_2

    .line 464
    new-instance v0, Lcom/android/launcher3/ShortcutInfo;

    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/ShortcutInfo;-><init>(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 465
    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->shortcutInfo:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 466
    return-object v0

    .line 467
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_3

    .line 469
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 468
    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v0

    .line 470
    new-instance v1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 471
    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const-string/jumbo v3, "appWidgetId"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 472
    iget-object v3, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 470
    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 473
    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    .line 474
    iget v3, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v3, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    .line 475
    iget v3, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v3, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    .line 476
    iget v3, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanX:I

    iget v4, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    .line 477
    iget v0, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanY:I

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    .line 478
    return-object v1

    .line 480
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/InstallShortcutReceiver;->-wrap0(Landroid/content/Intent;Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public isLauncherActivity()Z
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Landroid/content/pm/LauncherActivityInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

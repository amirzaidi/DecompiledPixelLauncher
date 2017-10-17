.class final Lcom/android/launcher3/LauncherModel$6;
.super Lcom/android/launcher3/util/Provider;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field final synthetic val$info:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

.field final synthetic val$si:Lcom/android/launcher3/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$6;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$6;->val$si:Lcom/android/launcher3/ShortcutInfo;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$6;->val$info:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 1889
    invoke-direct {p0}, Lcom/android/launcher3/util/Provider;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public get()Lcom/android/launcher3/ShortcutInfo;
    .locals 3

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$6;->val$si:Lcom/android/launcher3/ShortcutInfo;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$6;->val$info:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$6;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/ShortcutInfo;->updateFromDeepShortcutInfo(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 1893
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$6;->val$si:Lcom/android/launcher3/ShortcutInfo;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$6;->val$info:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$6;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 1894
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$6;->val$si:Lcom/android/launcher3/ShortcutInfo;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1890
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel$6;->get()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

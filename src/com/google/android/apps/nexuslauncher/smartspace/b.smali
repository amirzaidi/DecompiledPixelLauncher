.class Lcom/google/android/apps/nexuslauncher/smartspace/b;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 348
    const v0, 0x7f020046

    const v1, 0x7f0c00a4

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(II)V

    .line 349
    return-void
.end method


# virtual methods
.method public getOnClickListener(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 353
    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/g;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/g;-><init>(Lcom/google/android/apps/nexuslauncher/smartspace/b;Lcom/android/launcher3/Launcher;)V

    return-object v0
.end method

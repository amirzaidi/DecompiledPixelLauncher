.class public Lcom/android/launcher3/popup/SystemShortcut$AppInfo;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    const v0, 0x7f02003d

    const v1, 0x7f0c0039

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(II)V

    .line 81
    return-void
.end method


# virtual methods
.method public getOnClickListener(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$1;-><init>(Lcom/android/launcher3/popup/SystemShortcut$AppInfo;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)V

    return-object v0
.end method

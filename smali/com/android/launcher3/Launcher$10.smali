.class final Lcom/android/launcher3/Launcher$10;
.super Lcom/android/launcher3/OverviewButtonClickListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$10;->this$0:Lcom/android/launcher3/Launcher;

    .line 1362
    invoke-direct {p0, p2}, Lcom/android/launcher3/OverviewButtonClickListener;-><init>(I)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleViewClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/android/launcher3/Launcher$10;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->onClickWallpaperPicker(Landroid/view/View;)V

    .line 1366
    return-void
.end method

.class final Lcom/android/launcher3/compat/WallpaperManagerCompatVL$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/compat/WallpaperManagerCompatVL;


# direct methods
.method constructor <init>(Lcom/android/launcher3/compat/WallpaperManagerCompatVL;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$2;->this$0:Lcom/android/launcher3/compat/WallpaperManagerCompatVL;

    .line 106
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$2;->this$0:Lcom/android/launcher3/compat/WallpaperManagerCompatVL;

    const-string/jumbo v1, "wallpaper_parsed_colors"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->-wrap1(Lcom/android/launcher3/compat/WallpaperManagerCompatVL;Ljava/lang/String;)V

    .line 110
    return-void
.end method

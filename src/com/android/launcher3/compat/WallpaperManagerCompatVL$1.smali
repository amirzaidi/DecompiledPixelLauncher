.class final Lcom/android/launcher3/compat/WallpaperManagerCompatVL$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/compat/WallpaperManagerCompatVL;


# direct methods
.method constructor <init>(Lcom/android/launcher3/compat/WallpaperManagerCompatVL;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$1;->this$0:Lcom/android/launcher3/compat/WallpaperManagerCompatVL;

    .line 84
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$1;->this$0:Lcom/android/launcher3/compat/WallpaperManagerCompatVL;

    invoke-static {v0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->-wrap2(Lcom/android/launcher3/compat/WallpaperManagerCompatVL;)V

    .line 88
    return-void
.end method

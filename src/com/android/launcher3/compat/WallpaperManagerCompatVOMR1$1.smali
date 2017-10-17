.class final Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;

.field final synthetic val$listener:Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1$1;->this$0:Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;

    iput-object p2, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1$1;->val$listener:Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 81
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string/jumbo v1, "onColorsChanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1$1;->val$listener:Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1$1;->this$0:Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-static {v0, v2}, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->-wrap0(Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;Ljava/lang/Object;)Lcom/android/launcher3/compat/WallpaperColorsCompat;

    move-result-object v2

    const/4 v0, 0x1

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 83
    invoke-interface {v1, v2, v0}, Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;->onColorsChanged(Lcom/android/launcher3/compat/WallpaperColorsCompat;I)V

    .line 88
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_1
    const-string/jumbo v1, "toString"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1$1;->val$listener:Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

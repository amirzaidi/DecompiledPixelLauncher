.class final Lcom/android/launcher3/AppWidgetResizeFrame$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/AppWidgetResizeFrame;


# direct methods
.method constructor <init>(Lcom/android/launcher3/AppWidgetResizeFrame;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$1;->this$0:Lcom/android/launcher3/AppWidgetResizeFrame;

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame$1;->this$0:Lcom/android/launcher3/AppWidgetResizeFrame;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 369
    return-void
.end method

.class final Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;


# direct methods
.method constructor <init>(Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret$4;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret$4;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->-wrap0(Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;I)V

    .line 112
    return-void
.end method

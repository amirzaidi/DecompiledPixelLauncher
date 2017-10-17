.class final Lcom/android/launcher3/dragndrop/PinItemDragListener$2;
.super Lcom/android/launcher3/widget/PendingAddWidgetInfo;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/PinItemDragListener;

.field final synthetic val$flowHandler:Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/PinItemDragListener;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener$2;->this$0:Lcom/android/launcher3/dragndrop/PinItemDragListener;

    iput-object p3, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener$2;->val$flowHandler:Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;

    .line 159
    invoke-direct {p0, p2}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    .line 1
    return-void
.end method


# virtual methods
.method public getHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener$2;->val$flowHandler:Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;

    return-object v0
.end method

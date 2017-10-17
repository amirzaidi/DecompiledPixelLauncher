.class public Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;
.super Lcom/android/launcher3/widget/WidgetAddFlowHandler;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler$1;

    invoke-direct {v0}, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler$1;-><init>()V

    .line 70
    sput-object v0, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;Lcom/android/launcher3/compat/PinItemRequestCompat;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 42
    iput-object p2, p0, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    .line 43
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;-><init>(Landroid/os/Parcel;)V

    .line 47
    sget-object v0, Lcom/android/launcher3/compat/PinItemRequestCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/PinItemRequestCompat;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    .line 48
    return-void
.end method


# virtual methods
.method public needsConfigure()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public startConfigActivity(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/ItemInfo;I)Z
    .locals 2

    .prologue
    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    const-string/jumbo v1, "appWidgetId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/compat/PinItemRequestCompat;->accept(Landroid/os/Bundle;)Z

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 53
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/compat/PinItemRequestCompat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 54
    return-void
.end method

.class public Lcom/android/launcher3/compat/PinItemRequestCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final EXTRA_PIN_ITEM_REQUEST:Ljava/lang/String; = "android.content.pm.extra.PIN_ITEM_REQUEST"

.field public static final REQUEST_TYPE_APPWIDGET:I = 0x2

.field public static final REQUEST_TYPE_SHORTCUT:I = 0x1


# instance fields
.field private final mObject:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/android/launcher3/compat/PinItemRequestCompat$1;

    invoke-direct {v0}, Lcom/android/launcher3/compat/PinItemRequestCompat$1;-><init>()V

    .line 107
    sput-object v0, Lcom/android/launcher3/compat/PinItemRequestCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/launcher3/compat/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Lcom/android/launcher3/compat/PinItemRequestCompat;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/PinItemRequestCompat;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method public static getPinItemRequest(Landroid/content/Intent;)Lcom/android/launcher3/compat/PinItemRequestCompat;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    return-object v0

    .line 123
    :cond_0
    const-string/jumbo v1, "android.content.pm.extra.PIN_ITEM_REQUEST"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 124
    if-nez v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/launcher3/compat/PinItemRequestCompat;

    invoke-direct {v0, v1}, Lcom/android/launcher3/compat/PinItemRequestCompat;-><init>(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method private invokeMethod(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/compat/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/compat/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public accept()Z
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "accept"

    invoke-direct {p0, v0}, Lcom/android/launcher3/compat/PinItemRequestCompat;->invokeMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public accept(Landroid/os/Bundle;)Z
    .locals 5

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/compat/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "accept"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/os/Bundle;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/android/launcher3/compat/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    .line 74
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 75
    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 74
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 5

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/compat/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "getAppWidgetProviderInfo"

    .line 56
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 57
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 56
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/android/launcher3/compat/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    .line 56
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 58
    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 56
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/compat/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "getExtras"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/compat/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestType()I
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "getRequestType"

    invoke-direct {p0, v0}, Lcom/android/launcher3/compat/PinItemRequestCompat;->invokeMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "getShortcutInfo"

    invoke-direct {p0, v0}, Lcom/android/launcher3/compat/PinItemRequestCompat;->invokeMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "isValid"

    invoke-direct {p0, v0}, Lcom/android/launcher3/compat/PinItemRequestCompat;->invokeMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/launcher3/compat/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 105
    return-void
.end method

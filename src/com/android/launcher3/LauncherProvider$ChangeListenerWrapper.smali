.class Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private mListener:Lcom/android/launcher3/LauncherProviderChangeListener;


# direct methods
.method static synthetic -set0(Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;Lcom/android/launcher3/LauncherProviderChangeListener;)Lcom/android/launcher3/LauncherProviderChangeListener;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    return-object p1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    if-eqz v0, :cond_0

    .line 1164
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1176
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1166
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherProviderChangeListener;->onLauncherProviderChanged()V

    goto :goto_0

    .line 1169
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherProviderChangeListener;->onExtractedColorsChanged()V

    goto :goto_0

    .line 1172
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherProviderChangeListener;->onAppWidgetHostReset()V

    goto :goto_0

    .line 1164
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

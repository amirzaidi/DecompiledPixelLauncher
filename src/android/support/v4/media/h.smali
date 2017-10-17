.class public abstract Landroid/support/v4/media/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final afP:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 827
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 830
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/h;->afP:Ljava/lang/Object;

    .line 832
    :goto_0
    return-void

    .line 828
    :cond_0
    new-instance v0, Landroid/support/v4/media/n;

    invoke-direct {v0, p0}, Landroid/support/v4/media/n;-><init>(Landroid/support/v4/media/h;)V

    invoke-static {v0}, Landroid/support/v4/media/a;->asZ(Landroid/support/v4/media/r;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/h;->afP:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public atp(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
    .locals 0

    .prologue
    .line 840
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 848
    return-void
.end method

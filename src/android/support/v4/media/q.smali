.class Landroid/support/v4/media/q;
.super Landroid/support/v4/media/m;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/media/m;-><init>()V

    .line 28
    return-void
.end method

.method public static atL(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 25
    check-cast p0, Landroid/media/MediaDescription;

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getMediaUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

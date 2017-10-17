.class Landroid/support/v4/media/l;
.super Landroid/support/v4/media/g;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/media/g;-><init>()V

    return-void
.end method

.method public static asA(Ljava/lang/Object;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 30
    check-cast p0, Landroid/media/MediaDescription$Builder;

    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    .line 31
    return-void
.end method

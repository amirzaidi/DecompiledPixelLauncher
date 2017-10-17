.class public final Landroid/support/v4/media/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 103
    const-string/jumbo v0, "MediaBrowserCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v4/media/e;->DEBUG:Z

    return-void
.end method

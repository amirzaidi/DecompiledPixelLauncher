.class public final Landroid/support/v4/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TP:Landroid/support/v4/widget/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 41
    new-instance v0, Landroid/support/v4/widget/f;

    invoke-direct {v0}, Landroid/support/v4/widget/f;-><init>()V

    sput-object v0, Landroid/support/v4/widget/g;->TP:Landroid/support/v4/widget/f;

    .line 43
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v0, Landroid/support/v4/widget/e;

    invoke-direct {v0}, Landroid/support/v4/widget/e;-><init>()V

    sput-object v0, Landroid/support/v4/widget/g;->TP:Landroid/support/v4/widget/f;

    goto :goto_0
.end method

.method public static adE(Landroid/widget/EdgeEffect;FF)V
    .locals 1

    .prologue
    .line 174
    sget-object v0, Landroid/support/v4/widget/g;->TP:Landroid/support/v4/widget/f;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/widget/f;->adD(Landroid/widget/EdgeEffect;FF)V

    .line 175
    return-void
.end method

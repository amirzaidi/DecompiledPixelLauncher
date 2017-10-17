.class public Landroid/support/v4/view/a/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final Ud:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    iput-object p1, p0, Landroid/support/v4/view/a/m;->Ud:Ljava/lang/Object;

    .line 507
    return-void
.end method

.method public static aeU(IIZI)Landroid/support/v4/view/a/m;
    .locals 2

    .prologue
    .line 486
    new-instance v0, Landroid/support/v4/view/a/m;

    sget-object v1, Landroid/support/v4/view/a/a;->TY:Landroid/support/v4/view/a/k;

    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/support/v4/view/a/k;->aew(IIZI)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/a/m;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.class public Landroid/support/v4/app/aw;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private aaR:Landroid/support/v4/a/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    new-instance v0, Landroid/support/v4/a/k;

    invoke-direct {v0}, Landroid/support/v4/a/k;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aw;->aaR:Landroid/support/v4/a/k;

    .line 68
    return-void
.end method

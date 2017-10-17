.class public Landroid/support/v4/app/au;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private aco:Landroid/support/v4/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    new-instance v0, Landroid/support/v4/a/b;

    invoke-direct {v0}, Landroid/support/v4/a/b;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/au;->aco:Landroid/support/v4/a/b;

    .line 68
    return-void
.end method

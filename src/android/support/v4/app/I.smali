.class Landroid/support/v4/app/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Yd:Landroid/support/v4/app/aV;


# direct methods
.method constructor <init>(Landroid/support/v4/app/aV;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Landroid/support/v4/app/I;->Yd:Landroid/support/v4/app/aV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Landroid/support/v4/app/I;->Yd:Landroid/support/v4/app/aV;

    invoke-virtual {v0}, Landroid/support/v4/app/aV;->aoZ()Z

    .line 700
    return-void
.end method

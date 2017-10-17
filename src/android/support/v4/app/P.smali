.class Landroid/support/v4/app/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Ym:Landroid/support/v4/app/e;


# direct methods
.method constructor <init>(Landroid/support/v4/app/e;)V
    .locals 0

    .prologue
    .line 2165
    iput-object p1, p0, Landroid/support/v4/app/P;->Ym:Landroid/support/v4/app/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2168
    iget-object v0, p0, Landroid/support/v4/app/P;->Ym:Landroid/support/v4/app/e;

    invoke-static {v0}, Landroid/support/v4/app/e;->aiB(Landroid/support/v4/app/e;)V

    .line 2169
    return-void
.end method

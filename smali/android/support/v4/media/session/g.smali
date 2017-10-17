.class Landroid/support/v4/media/session/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic adM:Z

.field final synthetic adN:Landroid/support/v4/media/session/s;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/s;Z)V
    .locals 0

    .prologue
    .line 2148
    iput-object p1, p0, Landroid/support/v4/media/session/g;->adN:Landroid/support/v4/media/session/s;

    iput-boolean p2, p0, Landroid/support/v4/media/session/g;->adM:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2151
    iget-object v0, p0, Landroid/support/v4/media/session/g;->adN:Landroid/support/v4/media/session/s;

    invoke-static {v0}, Landroid/support/v4/media/session/s;->arE(Landroid/support/v4/media/session/s;)Landroid/support/v4/media/session/c;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v4/media/session/g;->adM:Z

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/c;->arv(Z)V

    .line 2152
    return-void
.end method

.class Landroid/support/v4/app/u;
.super Landroid/support/v4/app/r;
.source "SourceFile"


# instance fields
.field final synthetic Zv:Landroid/support/v4/app/a;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/a;)V
    .locals 0

    .prologue
    .line 861
    iput-object p1, p0, Landroid/support/v4/app/u;->Zv:Landroid/support/v4/app/a;

    .line 862
    invoke-direct {p0, p1}, Landroid/support/v4/app/r;-><init>(Landroid/support/v4/app/a;)V

    .line 863
    return-void
.end method


# virtual methods
.method public alB()I
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Landroid/support/v4/app/u;->Zv:Landroid/support/v4/app/a;

    invoke-virtual {v0}, Landroid/support/v4/app/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 930
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public alC(Landroid/support/v4/app/g;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 872
    iget-object v1, p0, Landroid/support/v4/app/u;->Zv:Landroid/support/v4/app/a;

    invoke-virtual {v1}, Landroid/support/v4/app/a;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public alD()Z
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Landroid/support/v4/app/u;->Zv:Landroid/support/v4/app/a;

    invoke-virtual {v0}, Landroid/support/v4/app/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 947
    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public alE(Landroid/support/v4/app/g;)V
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Landroid/support/v4/app/u;->Zv:Landroid/support/v4/app/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/a;->ajl(Landroid/support/v4/app/g;)V

    .line 936
    return-void
.end method

.method public alF()Z
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Landroid/support/v4/app/u;->Zv:Landroid/support/v4/app/a;

    invoke-virtual {v0}, Landroid/support/v4/app/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public alH(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Landroid/support/v4/app/u;->Zv:Landroid/support/v4/app/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public alI()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Landroid/support/v4/app/u;->Zv:Landroid/support/v4/app/a;

    invoke-virtual {v0}, Landroid/support/v4/app/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/u;->Zv:Landroid/support/v4/app/a;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public alJ(Landroid/support/v4/app/g;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Landroid/support/v4/app/u;->Zv:Landroid/support/v4/app/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/a;->ajp(Landroid/support/v4/app/g;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 899
    return-void
.end method

.method public alv(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Landroid/support/v4/app/u;->Zv:Landroid/support/v4/app/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/a;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 868
    return-void
.end method

.method public alx()V
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Landroid/support/v4/app/u;->Zv:Landroid/support/v4/app/a;

    invoke-virtual {v0}, Landroid/support/v4/app/a;->ajh()V

    .line 888
    return-void
.end method

.class Landroid/support/v4/app/t;
.super Landroid/support/v4/app/p;
.source "SourceFile"


# instance fields
.field final synthetic XO:Landroid/support/v4/app/a;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/a;)V
    .locals 0

    .prologue
    .line 861
    iput-object p1, p0, Landroid/support/v4/app/t;->XO:Landroid/support/v4/app/a;

    .line 862
    invoke-direct {p0, p1}, Landroid/support/v4/app/p;-><init>(Landroid/support/v4/app/a;)V

    .line 863
    return-void
.end method


# virtual methods
.method public akk(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Landroid/support/v4/app/t;->XO:Landroid/support/v4/app/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/a;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 868
    return-void
.end method

.method public akm()V
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Landroid/support/v4/app/t;->XO:Landroid/support/v4/app/a;

    invoke-virtual {v0}, Landroid/support/v4/app/a;->ahX()V

    .line 888
    return-void
.end method

.method public akq()I
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Landroid/support/v4/app/t;->XO:Landroid/support/v4/app/a;

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

.method public akr(Landroid/support/v4/app/e;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 872
    iget-object v1, p0, Landroid/support/v4/app/t;->XO:Landroid/support/v4/app/a;

    invoke-virtual {v1}, Landroid/support/v4/app/a;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public aks()Z
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Landroid/support/v4/app/t;->XO:Landroid/support/v4/app/a;

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

.method public akt(Landroid/support/v4/app/e;)V
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Landroid/support/v4/app/t;->XO:Landroid/support/v4/app/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/a;->aib(Landroid/support/v4/app/e;)V

    .line 936
    return-void
.end method

.method public aku()Z
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Landroid/support/v4/app/t;->XO:Landroid/support/v4/app/a;

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

.method public akw(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Landroid/support/v4/app/t;->XO:Landroid/support/v4/app/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public akx()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Landroid/support/v4/app/t;->XO:Landroid/support/v4/app/a;

    invoke-virtual {v0}, Landroid/support/v4/app/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/t;->XO:Landroid/support/v4/app/a;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public aky(Landroid/support/v4/app/e;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Landroid/support/v4/app/t;->XO:Landroid/support/v4/app/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/a;->aif(Landroid/support/v4/app/e;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 899
    return-void
.end method

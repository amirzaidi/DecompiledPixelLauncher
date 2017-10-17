.class Landroid/support/v4/app/aN;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static aoW(Landroid/app/Notification$Builder;Landroid/support/v4/app/T;)V
    .locals 5

    .prologue
    .line 148
    new-instance v1, Landroid/app/Notification$Action$Builder;

    .line 149
    invoke-virtual {p1}, Landroid/support/v4/app/T;->getIcon()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/app/T;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/app/T;->ani()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 150
    invoke-virtual {p1}, Landroid/support/v4/app/T;->ang()[Landroid/support/v4/app/as;

    move-result-object v0

    if-nez v0, :cond_1

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/T;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    :goto_0
    const-string/jumbo v2, "android.support.allowGeneratedReplies"

    .line 163
    invoke-virtual {p1}, Landroid/support/v4/app/T;->anh()Z

    move-result v3

    .line 162
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    invoke-virtual {v1, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 165
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 166
    return-void

    .line 152
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/T;->ang()[Landroid/support/v4/app/as;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/support/v4/app/o;->alo([Landroid/support/v4/app/as;)[Landroid/app/RemoteInput;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 153
    invoke-virtual {v1, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/T;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

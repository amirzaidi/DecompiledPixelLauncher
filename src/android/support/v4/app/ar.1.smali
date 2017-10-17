.class Landroid/support/v4/app/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static anY(Landroid/app/Notification$Builder;Landroid/support/v4/app/T;)V
    .locals 5

    .prologue
    .line 169
    new-instance v1, Landroid/app/Notification$Action$Builder;

    .line 170
    invoke-virtual {p1}, Landroid/support/v4/app/T;->getIcon()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/app/T;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/app/T;->ani()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 171
    invoke-virtual {p1}, Landroid/support/v4/app/T;->ang()[Landroid/support/v4/app/as;

    move-result-object v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/T;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    .line 181
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 183
    :goto_0
    const-string/jumbo v2, "android.support.allowGeneratedReplies"

    .line 184
    invoke-virtual {p1}, Landroid/support/v4/app/T;->anh()Z

    move-result v3

    .line 183
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    invoke-virtual {p1}, Landroid/support/v4/app/T;->anh()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 186
    invoke-virtual {v1, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 187
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 188
    return-void

    .line 173
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/T;->ang()[Landroid/support/v4/app/as;

    move-result-object v0

    .line 172
    invoke-static {v0}, Landroid/support/v4/app/o;->alo([Landroid/support/v4/app/as;)[Landroid/app/RemoteInput;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 174
    invoke-virtual {v1, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/T;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

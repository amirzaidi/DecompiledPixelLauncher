.class public Lcom/android/launcher3/ShortcutInfo;
.super Lcom/android/launcher3/ItemInfoWithIcon;
.source "SourceFile"


# instance fields
.field disabledMessage:Ljava/lang/CharSequence;

.field public iconResource:Landroid/content/Intent$ShortcutIconResource;

.field public intent:Landroid/content/Intent;

.field public isDisabled:I

.field private mInstallProgress:I

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfoWithIcon;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 129
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    .line 130
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/AppInfo;)V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/launcher3/ItemInfoWithIcon;-><init>(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 145
    iget-object v0, p1, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 146
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/launcher3/AppInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 147
    iget v0, p1, Lcom/android/launcher3/AppInfo;->isDisabled:I

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 148
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/ShortcutInfo;)V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/launcher3/ItemInfoWithIcon;-><init>(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 134
    iget-object v0, p1, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 135
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 136
    iget-object v0, p1, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 137
    iget v0, p1, Lcom/android/launcher3/ShortcutInfo;->status:I

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->status:I

    .line 138
    iget v0, p1, Lcom/android/launcher3/ShortcutInfo;->mInstallProgress:I

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->mInstallProgress:I

    .line 139
    iget v0, p1, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfoWithIcon;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 155
    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 156
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/ShortcutInfo;->updateFromDeepShortcutInfo(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 158
    return-void
.end method


# virtual methods
.method public getDeepShortcutId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    iget v0, p0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "shortcut_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    .line 222
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInstallProgress()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/android/launcher3/ShortcutInfo;->mInstallProgress:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public hasStatusFlag(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 183
    iget v1, p0, Lcom/android/launcher3/ShortcutInfo;->status:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDisabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 227
    iget v1, p0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isPromise()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method public onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V
    .locals 3

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/android/launcher3/ItemInfoWithIcon;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    .line 163
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 164
    const-string/jumbo v1, "intent"

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 163
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Landroid/content/Intent;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 165
    const-string/jumbo v1, "restored"

    iget v2, p0, Lcom/android/launcher3/ShortcutInfo;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 163
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    .line 167
    iget-boolean v0, p0, Lcom/android/launcher3/ShortcutInfo;->usingLowResIcon:Z

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->putIcon(Landroid/graphics/Bitmap;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ContentWriter;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_1

    .line 171
    const-string/jumbo v0, "iconPackage"

    iget-object v1, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 172
    const-string/jumbo v1, "iconResource"

    .line 173
    iget-object v2, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 171
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    .line 175
    :cond_1
    return-void
.end method

.method public setInstallProgress(I)V
    .locals 1

    .prologue
    .line 196
    iput p1, p0, Lcom/android/launcher3/ShortcutInfo;->mInstallProgress:I

    .line 197
    iget v0, p0, Lcom/android/launcher3/ShortcutInfo;->status:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->status:I

    .line 198
    return-void
.end method

.method public updateFromDeepShortcutInfo(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 202
    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->makeIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 203
    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 205
    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 209
    :cond_0
    invoke-static {p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v1

    .line 210
    iget-object v2, p0, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 209
    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 211
    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget v0, p0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 216
    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->disabledMessage:Ljava/lang/CharSequence;

    .line 217
    return-void

    .line 214
    :cond_1
    iget v0, p0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    goto :goto_0
.end method

.class public Lcom/android/launcher3/ItemInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cellX:I

.field public cellY:I

.field public container:J

.field public contentDescription:Ljava/lang/CharSequence;

.field public id:J

.field public itemType:I

.field public minSpanX:I

.field public minSpanY:I

.field public rank:I

.field public screenId:J

.field public spanX:I

.field public spanY:I

.field public title:Ljava/lang/CharSequence;

.field public user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    const/4 v0, 0x1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide v2, p0, Lcom/android/launcher3/ItemInfo;->id:J

    .line 53
    iput-wide v2, p0, Lcom/android/launcher3/ItemInfo;->container:J

    .line 58
    iput-wide v2, p0, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 63
    iput v1, p0, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 68
    iput v1, p0, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 73
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 78
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 83
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    .line 88
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 108
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    .line 109
    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/ItemInfo;)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    const/4 v0, 0x1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide v2, p0, Lcom/android/launcher3/ItemInfo;->id:J

    .line 53
    iput-wide v2, p0, Lcom/android/launcher3/ItemInfo;->container:J

    .line 58
    iput-wide v2, p0, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 63
    iput v1, p0, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 68
    iput v1, p0, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 73
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 78
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 83
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    .line 88
    iput v0, p0, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/launcher3/ItemInfo;->copyFrom(Lcom/android/launcher3/ItemInfo;)V

    .line 114
    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->checkItemInfo(Lcom/android/launcher3/ItemInfo;)V

    .line 115
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/launcher3/ItemInfo;)V
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/android/launcher3/ItemInfo;->id:J

    .line 119
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 120
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 121
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 122
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 123
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->rank:I

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 124
    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    iput-wide v0, p0, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 125
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->itemType:I

    .line 126
    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/android/launcher3/ItemInfo;->container:J

    .line 127
    iget-object v0, p1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    .line 128
    iget-object v0, p1, Lcom/android/launcher3/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/launcher3/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 129
    return-void
.end method

.method protected dumpProperties()Ljava/lang/String;
    .locals 4

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    const-string/jumbo v1, " type="

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    iget v1, p0, Lcom/android/launcher3/ItemInfo;->itemType:I

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    const-string/jumbo v1, " container="

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    iget-wide v2, p0, Lcom/android/launcher3/ItemInfo;->container:J

    .line 180
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    const-string/jumbo v1, " screen="

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    iget-wide v2, p0, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 180
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    const-string/jumbo v1, " cellX="

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    iget v1, p0, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    const-string/jumbo v1, " cellY="

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    iget v1, p0, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    const-string/jumbo v1, " spanX="

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    iget v1, p0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    const-string/jumbo v1, " spanY="

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    iget v1, p0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    const-string/jumbo v1, " minSpanX="

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    iget v1, p0, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    const-string/jumbo v1, " minSpanY="

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    iget v1, p0, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    const-string/jumbo v1, " rank="

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    iget v1, p0, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    const-string/jumbo v1, " user="

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    const-string/jumbo v1, " title="

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/android/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V
    .locals 4

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/android/launcher3/ItemInfo;->screenId:J

    const-wide/16 v2, -0xc9

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Screen id should not be EXTRA_EMPTY_SCREEN_ID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/ItemInfo;->writeToValues(Lcom/android/launcher3/util/ContentWriter;)V

    .line 171
    const-string/jumbo v0, "profileId"

    iget-object v1, p0, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ContentWriter;

    .line 172
    return-void
.end method

.method public readFromValues(Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 151
    const-string/jumbo v0, "itemType"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->itemType:I

    .line 152
    const-string/jumbo v0, "container"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/ItemInfo;->container:J

    .line 153
    const-string/jumbo v0, "screen"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 154
    const-string/jumbo v0, "cellX"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 155
    const-string/jumbo v0, "cellY"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 156
    const-string/jumbo v0, "spanX"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 157
    const-string/jumbo v0, "spanY"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 158
    const-string/jumbo v0, "rank"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 159
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/ItemInfo;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/ItemInfo;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToValues(Lcom/android/launcher3/util/ContentWriter;)V
    .locals 4

    .prologue
    .line 140
    const-string/jumbo v0, "itemType"

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 141
    const-string/jumbo v1, "container"

    iget-wide v2, p0, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 142
    const-string/jumbo v1, "screen"

    iget-wide v2, p0, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 143
    const-string/jumbo v1, "cellX"

    iget v2, p0, Lcom/android/launcher3/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 144
    const-string/jumbo v1, "cellY"

    iget v2, p0, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 145
    const-string/jumbo v1, "spanX"

    iget v2, p0, Lcom/android/launcher3/ItemInfo;->spanX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 146
    const-string/jumbo v1, "spanY"

    iget v2, p0, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 147
    const-string/jumbo v1, "rank"

    iget v2, p0, Lcom/android/launcher3/ItemInfo;->rank:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    .line 148
    return-void
.end method

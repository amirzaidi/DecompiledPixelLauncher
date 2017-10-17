.class public Lcom/google/android/apps/nexuslauncher/smartspace/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field dO:Lcom/google/android/apps/nexuslauncher/smartspace/d;

.field dP:Lcom/google/android/apps/nexuslauncher/smartspace/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dO:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    .line 12
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dP:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    .line 7
    return-void
.end method


# virtual methods
.method public cR()Z
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dO:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cS()Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dP:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cT()J
    .locals 6

    .prologue
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 24
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/e;->cS()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/e;->cR()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dP:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cF()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dO:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v4}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cF()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long v0, v2, v0

    return-wide v0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/e;->cS()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dP:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cF()J

    move-result-wide v2

    sub-long v0, v2, v0

    return-wide v0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/e;->cR()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dO:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cF()J

    move-result-wide v2

    sub-long v0, v2, v0

    return-wide v0

    .line 31
    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public cU()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/e;->cR()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dO:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cM()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    iput-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dO:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    move v0, v1

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/e;->cS()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dP:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cM()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    iput-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dP:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    move v0, v1

    .line 56
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dP:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dO:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/android/launcher3/util/ComponentKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field private final mHashCode:I

.field public final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/android/launcher3/util/Preconditions;->assertNotNull(Ljava/lang/Object;)V

    .line 37
    invoke-static {p2}, Lcom/android/launcher3/util/Preconditions;->assertNotNull(Ljava/lang/Object;)V

    .line 38
    iput-object p1, p0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 39
    iput-object p2, p0, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/ComponentKey;->mHashCode:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string/jumbo v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 51
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 52
    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 53
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 54
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 55
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v1

    .line 56
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 55
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/launcher3/util/Preconditions;->assertNotNull(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-static {v0}, Lcom/android/launcher3/util/Preconditions;->assertNotNull(Ljava/lang/Object;)V

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/ComponentKey;->mHashCode:I

    .line 65
    return-void

    .line 59
    :cond_0
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 60
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 74
    check-cast p1, Lcom/android/launcher3/util/ComponentKey;

    .line 75
    iget-object v0, p1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/launcher3/util/ComponentKey;->mHashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

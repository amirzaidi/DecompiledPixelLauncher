.class public Lcom/android/launcher3/logging/LoggerUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sNameCache:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/logging/LoggerUtils;->sNameCache:Landroid/util/ArrayMap;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionStr(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->type:I

    packed-switch v0, :pswitch_data_0

    .line 73
    :pswitch_0
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 71
    :pswitch_1
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->touch:I

    const-class v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action$Touch;

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/LoggerUtils;->getFieldName(ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :pswitch_2
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->command:I

    const-class v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action$Command;

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/LoggerUtils;->getFieldName(ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getFieldName(ILjava/lang/Class;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 48
    sget-object v2, Lcom/android/launcher3/logging/LoggerUtils;->sNameCache:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 49
    :try_start_0
    sget-object v0, Lcom/android/launcher3/logging/LoggerUtils;->sNameCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 50
    if-nez v0, :cond_2

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 52
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v1, 0x0

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 53
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_0

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 55
    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 56
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_1
    :try_start_2
    sget-object v1, Lcom/android/launcher3/logging/LoggerUtils;->sNameCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit v2

    .line 65
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    if-eqz v0, :cond_3

    :goto_2
    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 66
    :cond_3
    const-string/jumbo v0, "UNKNOWN"

    goto :goto_2

    .line 57
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private static getItemStr(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    const-class v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$ItemType;

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/LoggerUtils;->getFieldName(ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 101
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    if-eqz v1, :cond_0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", packageHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_0
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->componentHash:I

    if-eqz v1, :cond_1

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", componentHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->componentHash:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_1
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->intentHash:I

    if-eqz v1, :cond_2

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", intentHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->intentHash:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", grid("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "), span("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    const-string/jumbo v1, "), pageIdx="

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTargetStr(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 79
    const-string/jumbo v0, ""

    return-object v0

    .line 81
    :cond_0
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->type:I

    packed-switch v0, :pswitch_data_0

    .line 95
    const-string/jumbo v0, "UNKNOWN TARGET TYPE"

    return-object v0

    .line 83
    :pswitch_0
    invoke-static {p0}, Lcom/android/launcher3/logging/LoggerUtils;->getItemStr(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :pswitch_1
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->controlType:I

    const-class v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$ControlType;

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/LoggerUtils;->getFieldName(ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 87
    :pswitch_2
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    const-class v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$ContainerType;

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/LoggerUtils;->getFieldName(ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 88
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_1
    :goto_0
    return-object v0

    .line 90
    :cond_2
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " grid("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static newAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    invoke-direct {v0}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;-><init>()V

    .line 170
    iput p0, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->type:I

    .line 171
    return-object v0
.end method

.method public static newCommandAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/launcher3/logging/LoggerUtils;->newAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v0

    .line 175
    iput p0, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->command:I

    .line 176
    return-object v0
.end method

.method public static newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v0

    .line 164
    iput p0, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 165
    return-object v0
.end method

.method public static newDropTarget(Landroid/view/View;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;
    .locals 2

    .prologue
    .line 143
    instance-of v0, p0, Lcom/android/launcher3/ButtonDropTarget;

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v0

    .line 147
    instance-of v1, p0, Lcom/android/launcher3/InfoDropTarget;

    if-eqz v1, :cond_2

    .line 148
    const/4 v1, 0x7

    iput v1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->controlType:I

    .line 154
    :cond_1
    :goto_0
    return-object v0

    .line 149
    :cond_2
    instance-of v1, p0, Lcom/android/launcher3/UninstallDropTarget;

    if-eqz v1, :cond_3

    .line 150
    const/4 v1, 0x6

    iput v1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->controlType:I

    goto :goto_0

    .line 151
    :cond_3
    instance-of v1, p0, Lcom/android/launcher3/DeleteDropTarget;

    if-eqz v1, :cond_1

    .line 152
    const/4 v1, 0x5

    iput v1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->controlType:I

    goto :goto_0
.end method

.method public static newItemTarget(Landroid/view/View;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/logging/LoggerUtils;->newItemTarget(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 117
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v0

    goto :goto_0
.end method

.method public static newItemTarget(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 121
    invoke-static {v2}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v0

    .line 122
    iget v1, p0, Lcom/android/launcher3/ItemInfo;->itemType:I

    packed-switch v1, :pswitch_data_0

    .line 139
    :goto_0
    :pswitch_0
    return-object v0

    .line 124
    :pswitch_1
    iput v2, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    goto :goto_0

    .line 127
    :pswitch_2
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    goto :goto_0

    .line 130
    :pswitch_3
    const/4 v1, 0x4

    iput v1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    goto :goto_0

    .line 133
    :pswitch_4
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    goto :goto_0

    .line 136
    :pswitch_5
    const/4 v1, 0x5

    iput v1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static varargs newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    invoke-direct {v0}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;-><init>()V

    .line 186
    iput-object p1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 187
    iput-object p0, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    .line 188
    return-object v0
.end method

.method public static newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v0}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;-><init>()V

    .line 159
    iput p0, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->type:I

    .line 160
    return-object v0
.end method

.method public static newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/logging/LoggerUtils;->newAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v0

    .line 180
    iput p0, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->touch:I

    .line 181
    return-object v0
.end method

.class public Lcom/android/launcher3/logging/DumpTargetWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field children:Ljava/util/ArrayList;

.field node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->children:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/launcher3/logging/DumpTargetWrapper;-><init>()V

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/logging/DumpTargetWrapper;->newContainerTarget(II)Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/ItemInfo;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/launcher3/logging/DumpTargetWrapper;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/launcher3/logging/DumpTargetWrapper;->newItemTarget(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    .line 52
    return-void
.end method

.method public static getDumpTargetStr(Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    if-nez p0, :cond_0

    .line 104
    const-string/jumbo v0, ""

    return-object v0

    .line 106
    :cond_0
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->type:I

    packed-switch v0, :pswitch_data_0

    .line 118
    const-string/jumbo v0, "UNKNOWN TARGET TYPE"

    return-object v0

    .line 108
    :pswitch_0
    invoke-static {p0}, Lcom/android/launcher3/logging/DumpTargetWrapper;->getItemStr(Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    :pswitch_1
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->containerType:I

    const-class v1, Lcom/android/launcher3/model/nano/LauncherDumpProto$ContainerType;

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/LoggerUtils;->getFieldName(ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 111
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->containerType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->pageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_1
    :goto_0
    return-object v0

    .line 113
    :cond_2
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->containerType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " grid("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getItemStr(Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemType:I

    const-class v1, Lcom/android/launcher3/model/nano/LauncherDumpProto$ItemType;

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/LoggerUtils;->getFieldName(ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->component:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->component:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", grid("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "), span("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    const-string/jumbo v1, "), pageIdx="

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->pageId:I

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    const-string/jumbo v1, " user="

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    iget v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->userType:I

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Lcom/android/launcher3/logging/DumpTargetWrapper;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public getFlattenedList()Ljava/util/List;
    .locals 3

    .prologue
    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->children:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logging/DumpTargetWrapper;

    .line 67
    invoke-virtual {v0}, Lcom/android/launcher3/logging/DumpTargetWrapper;->getFlattenedList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_1
    return-object v1
.end method

.method public newContainerTarget(II)Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    invoke-direct {v0}, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;-><init>()V

    .line 96
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->type:I

    .line 97
    iput p1, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->containerType:I

    .line 98
    iput p2, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->pageId:I

    .line 99
    return-object v0
.end method

.method public newItemTarget(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 74
    new-instance v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    invoke-direct {v0}, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;-><init>()V

    .line 75
    iput v2, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->type:I

    .line 77
    iget v1, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    packed-switch v1, :pswitch_data_0

    .line 91
    :goto_0
    :pswitch_0
    return-object v0

    .line 79
    :pswitch_1
    iput v2, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemType:I

    goto :goto_0

    .line 82
    :pswitch_2
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemType:I

    goto :goto_0

    .line 85
    :pswitch_3
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemType:I

    goto :goto_0

    .line 88
    :pswitch_4
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->itemType:I

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public writeToDumpTarget(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;
    .locals 3

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, v1, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->component:Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :goto_1
    iput-object v0, v1, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->packageName:Ljava/lang/String;

    .line 139
    instance-of v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->component:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->packageName:Ljava/lang/String;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    iget v1, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iput v1, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridX:I

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    iget v1, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput v1, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->gridY:I

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    iget v1, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iput v1, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanX:I

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    iget v1, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    iput v1, v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->spanY:I

    .line 148
    iget-object v1, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    iget-object v0, p1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    iput v0, v1, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->userType:I

    .line 149
    iget-object v0, p0, Lcom/android/launcher3/logging/DumpTargetWrapper;->node:Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    return-object v0

    .line 136
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 148
    :cond_3
    const/4 v0, 0x1

    goto :goto_2
.end method

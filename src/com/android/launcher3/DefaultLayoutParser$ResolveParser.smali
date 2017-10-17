.class public Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/AutoInstallsLayout$TagParser;


# instance fields
.field private final mChildParser:Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

.field final synthetic this$0:Lcom/android/launcher3/DefaultLayoutParser;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/DefaultLayoutParser;)V
    .locals 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

    iget-object v1, p0, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    invoke-direct {v0, v1}, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    iput-object v0, p0, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;->mChildParser:Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

    .line 206
    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 9

    .prologue
    const-wide/16 v2, -0x1

    .line 213
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move-wide v0, v2

    .line 216
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 217
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v4, :cond_3

    .line 218
    :cond_1
    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    cmp-long v5, v0, v2

    if-gtz v5, :cond_0

    .line 221
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 222
    const-string/jumbo v6, "favorite"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 223
    iget-object v0, p0, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;->mChildParser:Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;)J

    move-result-wide v0

    goto :goto_0

    .line 225
    :cond_2
    const-string/jumbo v6, "DefaultLayoutParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Fallback groups can contain only favorites, found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    :cond_3
    return-wide v0
.end method

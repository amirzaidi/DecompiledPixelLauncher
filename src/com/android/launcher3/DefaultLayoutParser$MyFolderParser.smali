.class Lcom/android/launcher3/DefaultLayoutParser$MyFolderParser;
.super Lcom/android/launcher3/AutoInstallsLayout$FolderParser;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DefaultLayoutParser;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DefaultLayoutParser;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$MyFolderParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    invoke-direct {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 267
    const-string/jumbo v0, "folderItems"

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/DefaultLayoutParser;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v0

    .line 268
    if-eqz v0, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/launcher3/DefaultLayoutParser$MyFolderParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v1, v1, Lcom/android/launcher3/DefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 270
    const-string/jumbo v0, "folder"

    invoke-static {p1, v0}, Lcom/android/launcher3/DefaultLayoutParser;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 272
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;)J

    move-result-wide v0

    return-wide v0
.end method

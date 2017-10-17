.class Lcom/android/launcher3/DefaultLayoutParser$PartnerFolderParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/AutoInstallsLayout$TagParser;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DefaultLayoutParser;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DefaultLayoutParser;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$PartnerFolderParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 5

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/launcher3/DefaultLayoutParser$PartnerFolderParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v0, v0, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0}, Lcom/android/launcher3/Partner;->get(Landroid/content/pm/PackageManager;)Lcom/android/launcher3/Partner;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 245
    const-string/jumbo v2, "partner_folder"

    .line 246
    const-string/jumbo v3, "xml"

    invoke-virtual {v0}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 247
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 249
    const-string/jumbo v2, "folder"

    invoke-static {v0, v2}, Lcom/android/launcher3/DefaultLayoutParser;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 251
    new-instance v2, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;

    iget-object v3, p0, Lcom/android/launcher3/DefaultLayoutParser$PartnerFolderParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v4, p0, Lcom/android/launcher3/DefaultLayoutParser$PartnerFolderParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/DefaultLayoutParser;->getFolderElementsMap(Landroid/content/res/Resources;)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;Ljava/util/HashMap;)V

    .line 252
    invoke-virtual {v2, v0}, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;)J

    move-result-wide v0

    return-wide v0

    .line 255
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

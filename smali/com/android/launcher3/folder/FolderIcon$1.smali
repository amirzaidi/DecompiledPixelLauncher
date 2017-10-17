.class final Lcom/android/launcher3/folder/FolderIcon$1;
.super Landroid/util/Property;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/folder/FolderIcon;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 143
    invoke-static {p1}, Lcom/android/launcher3/folder/FolderIcon;->-get0(Lcom/android/launcher3/folder/FolderIcon;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon$1;->get(Lcom/android/launcher3/folder/FolderIcon;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/android/launcher3/folder/FolderIcon;Ljava/lang/Float;)V
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher3/folder/FolderIcon;->-set0(Lcom/android/launcher3/folder/FolderIcon;F)F

    .line 149
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 150
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 146
    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/FolderIcon$1;->set(Lcom/android/launcher3/folder/FolderIcon;Ljava/lang/Float;)V

    return-void
.end method

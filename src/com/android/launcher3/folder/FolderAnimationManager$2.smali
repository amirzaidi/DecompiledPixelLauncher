.class final Lcom/android/launcher3/folder/FolderAnimationManager$2;
.super Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderAnimationManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderAnimationManager;FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    .line 200
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1
    return-void
.end method


# virtual methods
.method public shouldRemoveElevationDuringAnimation()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method

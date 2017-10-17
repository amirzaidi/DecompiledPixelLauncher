.class public abstract Lcom/android/launcher3/ItemInfoWithIcon;
.super Lcom/android/launcher3/ItemInfo;
.source "SourceFile"


# instance fields
.field public iconBitmap:Landroid/graphics/Bitmap;

.field public usingLowResIcon:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/android/launcher3/ItemInfoWithIcon;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/launcher3/ItemInfo;-><init>(Lcom/android/launcher3/ItemInfo;)V

    .line 40
    iget-object v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->iconBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/launcher3/ItemInfoWithIcon;->iconBitmap:Landroid/graphics/Bitmap;

    .line 41
    iget-boolean v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->usingLowResIcon:Z

    iput-boolean v0, p0, Lcom/android/launcher3/ItemInfoWithIcon;->usingLowResIcon:Z

    .line 42
    return-void
.end method

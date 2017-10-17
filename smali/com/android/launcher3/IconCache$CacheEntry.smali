.class public Lcom/android/launcher3/IconCache$CacheEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public contentDescription:Ljava/lang/CharSequence;

.field public icon:Landroid/graphics/Bitmap;

.field public isLowResIcon:Z

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 90
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 87
    return-void
.end method

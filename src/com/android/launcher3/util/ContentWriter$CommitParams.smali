.class public final Lcom/android/launcher3/util/ContentWriter$CommitParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mSelectionArgs:[Ljava/lang/String;

.field final mUri:Landroid/net/Uri;

.field mWhere:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    sget-object v0, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/launcher3/util/ContentWriter$CommitParams;->mUri:Landroid/net/Uri;

    .line 121
    iput-object p1, p0, Lcom/android/launcher3/util/ContentWriter$CommitParams;->mWhere:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lcom/android/launcher3/util/ContentWriter$CommitParams;->mSelectionArgs:[Ljava/lang/String;

    .line 123
    return-void
.end method

.class public Lcom/android/launcher3/IconProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mSystemState:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/android/launcher3/IconProvider;->updateSystemStateString()V

    .line 17
    return-void
.end method


# virtual methods
.method public getIcon(Landroid/content/pm/LauncherActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p1, p2}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconSystemState(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/launcher3/IconProvider;->mSystemState:Ljava/lang/String;

    return-object v0
.end method

.method public updateSystemStateString()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/IconProvider;->mSystemState:Ljava/lang/String;

    .line 21
    return-void
.end method

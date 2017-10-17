.class final Lcom/android/launcher3/Launcher$5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHotseatImportanceForAccessibility:I

.field private mHotseatImportanceStored:Z

.field private mWorkspaceImportanceForAccessibility:I

.field private mWorkspaceImportanceStored:Z

.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$5;->this$0:Lcom/android/launcher3/Launcher;

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    iput-boolean v0, p0, Lcom/android/launcher3/Launcher$5;->mWorkspaceImportanceStored:Z

    .line 555
    iput-boolean v0, p0, Lcom/android/launcher3/Launcher$5;->mHotseatImportanceStored:Z

    .line 556
    iput v0, p0, Lcom/android/launcher3/Launcher$5;->mWorkspaceImportanceForAccessibility:I

    .line 558
    iput v0, p0, Lcom/android/launcher3/Launcher$5;->mHotseatImportanceForAccessibility:I

    .line 1
    return-void
.end method

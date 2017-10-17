.class final Lcom/android/launcher3/model/PackageUpdatedTask$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/PackageUpdatedTask;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/PackageUpdatedTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/PackageUpdatedTask$6;->this$0:Lcom/android/launcher3/model/PackageUpdatedTask;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .locals 0

    .prologue
    .line 367
    invoke-interface {p1}, Lcom/android/launcher3/LauncherModel$Callbacks;->notifyWidgetProvidersChanged()V

    .line 368
    return-void
.end method

.class final Lcom/google/android/apps/nexuslauncher/qsb/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field final synthetic ai:Lcom/google/android/apps/nexuslauncher/qsb/d;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/o;->ai:Lcom/google/android/apps/nexuslauncher/qsb/d;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/o;->ai:Lcom/google/android/apps/nexuslauncher/qsb/d;

    invoke-static {v0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/d;->T(Lcom/google/android/apps/nexuslauncher/qsb/d;Lcom/android/launcher3/Alarm;)V

    .line 66
    return-void
.end method

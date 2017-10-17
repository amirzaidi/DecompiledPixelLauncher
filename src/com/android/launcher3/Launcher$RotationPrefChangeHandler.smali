.class Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    .prologue
    .line 4123
    iput-object p1, p0, Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;-><init>(Lcom/android/launcher3/Launcher;)V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 4128
    const-string/jumbo v0, "pref_allowRotation"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4131
    iget-object v0, p0, Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->finish()V

    .line 4133
    :cond_0
    return-void
.end method

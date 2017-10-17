.class final Lcom/google/android/apps/nexuslauncher/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic dM:Lcom/google/android/apps/nexuslauncher/a;

.field final synthetic dN:Landroid/preference/TwoStatePreference;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/a;Landroid/preference/TwoStatePreference;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/f;->dM:Lcom/google/android/apps/nexuslauncher/a;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/f;->dN:Landroid/preference/TwoStatePreference;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->dN:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->dM:Lcom/google/android/apps/nexuslauncher/a;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/l;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/l;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/l;->cq(Z)V

    .line 100
    return-void
.end method

.class final Lcom/android/launcher3/allapps/AllAppsGridAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->-get2(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->-get3(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z

    .line 308
    return-void
.end method

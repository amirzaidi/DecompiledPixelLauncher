.class Lcom/android/launcher3/TransitionStates;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final allAppsToWorkspace:Z

.field final oldStateIsNormal:Z

.field final oldStateIsNormalHidden:Z

.field final oldStateIsOverview:Z

.field final oldStateIsOverviewHidden:Z

.field final oldStateIsSpringLoaded:Z

.field final overviewToAllApps:Z

.field final overviewToWorkspace:Z

.field final stateIsNormal:Z

.field final stateIsNormalHidden:Z

.field final stateIsOverview:Z

.field final stateIsOverviewHidden:Z

.field final stateIsSpringLoaded:Z

.field final workspaceToAllApps:Z

.field final workspaceToOverview:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne p1, v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->oldStateIsNormal:Z

    .line 160
    sget-object v0, Lcom/android/launcher3/Workspace$State;->SPRING_LOADED:Lcom/android/launcher3/Workspace$State;

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->oldStateIsSpringLoaded:Z

    .line 161
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL_HIDDEN:Lcom/android/launcher3/Workspace$State;

    if-ne p1, v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->oldStateIsNormalHidden:Z

    .line 162
    sget-object v0, Lcom/android/launcher3/Workspace$State;->OVERVIEW_HIDDEN:Lcom/android/launcher3/Workspace$State;

    if-ne p1, v0, :cond_4

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->oldStateIsOverviewHidden:Z

    .line 163
    sget-object v0, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne p1, v0, :cond_5

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->oldStateIsOverview:Z

    .line 165
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne p2, v0, :cond_6

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->stateIsNormal:Z

    .line 166
    sget-object v0, Lcom/android/launcher3/Workspace$State;->SPRING_LOADED:Lcom/android/launcher3/Workspace$State;

    if-ne p2, v0, :cond_7

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->stateIsSpringLoaded:Z

    .line 167
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL_HIDDEN:Lcom/android/launcher3/Workspace$State;

    if-ne p2, v0, :cond_8

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->stateIsNormalHidden:Z

    .line 168
    sget-object v0, Lcom/android/launcher3/Workspace$State;->OVERVIEW_HIDDEN:Lcom/android/launcher3/Workspace$State;

    if-ne p2, v0, :cond_9

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->stateIsOverviewHidden:Z

    .line 169
    sget-object v0, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne p2, v0, :cond_a

    :goto_9
    iput-boolean v1, p0, Lcom/android/launcher3/TransitionStates;->stateIsOverview:Z

    .line 171
    iget-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->oldStateIsNormal:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->stateIsOverview:Z

    :goto_a
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->workspaceToOverview:Z

    .line 172
    iget-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->oldStateIsNormal:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->stateIsNormalHidden:Z

    :goto_b
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->workspaceToAllApps:Z

    .line 173
    iget-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->oldStateIsOverview:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->stateIsNormal:Z

    :goto_c
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->overviewToWorkspace:Z

    .line 174
    iget-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->oldStateIsOverview:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->stateIsOverviewHidden:Z

    :goto_d
    iput-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->overviewToAllApps:Z

    .line 175
    iget-boolean v0, p0, Lcom/android/launcher3/TransitionStates;->oldStateIsNormalHidden:Z

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher3/TransitionStates;->stateIsNormal:Z

    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher3/TransitionStates;->allAppsToWorkspace:Z

    .line 176
    return-void

    :cond_1
    move v0, v2

    .line 159
    goto :goto_0

    :cond_2
    move v0, v2

    .line 160
    goto :goto_1

    :cond_3
    move v0, v2

    .line 161
    goto :goto_2

    :cond_4
    move v0, v2

    .line 162
    goto :goto_3

    :cond_5
    move v0, v2

    .line 163
    goto :goto_4

    :cond_6
    move v0, v2

    .line 165
    goto :goto_5

    :cond_7
    move v0, v2

    .line 166
    goto :goto_6

    :cond_8
    move v0, v2

    .line 167
    goto :goto_7

    :cond_9
    move v0, v2

    .line 168
    goto :goto_8

    :cond_a
    move v1, v2

    .line 169
    goto :goto_9

    :cond_b
    move v0, v2

    .line 171
    goto :goto_a

    :cond_c
    move v0, v2

    .line 172
    goto :goto_b

    :cond_d
    move v0, v2

    .line 173
    goto :goto_c

    :cond_e
    move v0, v2

    .line 174
    goto :goto_d
.end method

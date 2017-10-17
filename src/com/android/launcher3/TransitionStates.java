// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

class TransitionStates
{
    final boolean allAppsToWorkspace;
    final boolean oldStateIsNormal;
    final boolean oldStateIsNormalHidden;
    final boolean oldStateIsOverview;
    final boolean oldStateIsOverviewHidden;
    final boolean oldStateIsSpringLoaded;
    final boolean overviewToAllApps;
    final boolean overviewToWorkspace;
    final boolean stateIsNormal;
    final boolean stateIsNormalHidden;
    final boolean stateIsOverview;
    final boolean stateIsOverviewHidden;
    final boolean stateIsSpringLoaded;
    final boolean workspaceToAllApps;
    final boolean workspaceToOverview;
    
    public TransitionStates(final Workspace$State workspace$State, final Workspace$State workspace$State2) {
        boolean stateIsOverview = true;
        boolean stateIsNormal = false;
        this.oldStateIsNormal = (workspace$State == Workspace$State.NORMAL && stateIsOverview);
        this.oldStateIsSpringLoaded = (workspace$State == Workspace$State.SPRING_LOADED && stateIsOverview);
        this.oldStateIsNormalHidden = (workspace$State == Workspace$State.NORMAL_HIDDEN && stateIsOverview);
        this.oldStateIsOverviewHidden = (workspace$State == Workspace$State.OVERVIEW_HIDDEN && stateIsOverview);
        this.oldStateIsOverview = (workspace$State == Workspace$State.OVERVIEW && stateIsOverview);
        this.stateIsNormal = (workspace$State2 == Workspace$State.NORMAL && stateIsOverview);
        this.stateIsSpringLoaded = (workspace$State2 == Workspace$State.SPRING_LOADED && stateIsOverview);
        this.stateIsNormalHidden = (workspace$State2 == Workspace$State.NORMAL_HIDDEN && stateIsOverview);
        this.stateIsOverviewHidden = (workspace$State2 == Workspace$State.OVERVIEW_HIDDEN && stateIsOverview);
        if (workspace$State2 != Workspace$State.OVERVIEW) {
            stateIsOverview = false;
        }
        this.stateIsOverview = stateIsOverview;
        this.workspaceToOverview = (this.oldStateIsNormal && this.stateIsOverview);
        this.workspaceToAllApps = (this.oldStateIsNormal && this.stateIsNormalHidden);
        this.overviewToWorkspace = (this.oldStateIsOverview && this.stateIsNormal);
        this.overviewToAllApps = (this.oldStateIsOverview && this.stateIsOverviewHidden);
        if (this.oldStateIsNormalHidden) {
            stateIsNormal = this.stateIsNormal;
        }
        this.allAppsToWorkspace = stateIsNormal;
    }
}

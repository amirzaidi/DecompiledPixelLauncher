// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.concurrent.Executor;
import com.android.launcher3.model.BgDataModel;

public interface LauncherModel$ModelUpdateTask extends Runnable
{
    void init(final LauncherAppState p0, final LauncherModel p1, final BgDataModel p2, final AllAppsList p3, final Executor p4);
}

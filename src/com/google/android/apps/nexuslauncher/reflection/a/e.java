// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.a;

import com.android.launcher3.userevent.nano.LauncherLogExtensions$TargetExtension;
import com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent;
import com.android.launcher3.util.ComponentKey;
import java.util.Comparator;
import java.util.Collections;
import com.google.research.reflection.b.h;
import com.google.research.reflection.b.i;
import com.google.research.reflection.b.d;
import java.util.Iterator;
import java.util.Map;
import java.util.Collection;
import com.google.android.gms.learning.Features;
import com.google.android.gms.learning.Example;
import com.google.android.gms.learning.TrainerOptions;
import com.google.android.gms.learning.ExampleCollectionOptions;
import com.google.android.gms.learning.PredictorOptions;
import android.content.Context;
import com.google.android.gms.learning.g;
import com.google.android.apps.nexuslauncher.reflection.filter.f;
import com.google.android.gms.learning.c;
import java.util.List;
import java.util.ArrayList;
import com.google.android.gms.tasks.b;

final class e implements b
{
    final /* synthetic */ a i;
    
    e(final a i) {
        this.i = i;
    }
    
    public void r(final Exception ex) {
        this.i.mPredictedApps = new ArrayList();
    }
}

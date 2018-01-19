// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.a;

import com.android.launcher3.userevent.nano.LauncherLogExtensions$TargetExtension;
import com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent;
import java.util.Comparator;
import java.util.Collections;
import com.google.research.reflection.b.h;
import com.google.research.reflection.b.i;
import java.util.Map;
import java.util.Collection;
import com.google.android.gms.learning.Example;
import com.google.android.gms.learning.TrainerOptions;
import com.google.android.gms.learning.ExampleCollectionOptions;
import com.google.android.gms.learning.e;
import com.google.android.gms.learning.PredictorOptions;
import android.content.Context;
import com.google.android.gms.learning.g;
import java.util.Iterator;
import com.google.android.gms.learning.Features;
import com.android.launcher3.util.ComponentKey;
import android.util.Pair;
import java.util.List;
import com.google.research.reflection.predictor.f;
import java.util.ArrayList;
import com.google.android.gms.learning.PredictionResult;
import com.google.android.gms.tasks.c;

final class d implements c
{
    static final /* synthetic */ boolean -assertionsDisabled;
    final /* synthetic */ a h;
    
    static {
        -assertionsDisabled = (d.class.desiredAssertionStatus() ^ true);
    }
    
    d(final a h) {
        this.h = h;
    }
    
    public void p(final PredictionResult predictionResult) {
        final Features xv = predictionResult.xV();
        final List xe = xv.xE("output_names");
        final float[] xf = xv.xF("output_scores");
        if (!d.-assertionsDisabled && xe.size() != xf.length) {
            throw new AssertionError();
        }
        final ArrayList list = new ArrayList<Object>(xe.size());
        for (int i = 0; i < xe.size(); ++i) {
            list.add(new f(xe.get(i), xf[i]));
        }
        this.h.c.G(list);
        final ArrayList<Pair> list2 = new ArrayList<Pair>();
        for (final f f : list) {
            list2.add(Pair.create((Object)new ComponentKey(this.h.mContext, f.Pd), (Object)f.Pc));
        }
        e(list2);
        final ArrayList<ComponentKey> list3 = new ArrayList<ComponentKey>();
        final Iterator<Object> iterator2 = list2.iterator();
        while (iterator2.hasNext()) {
            list3.add((ComponentKey)iterator2.next().first);
        }
        this.h.mPredictedApps = list3;
    }
}

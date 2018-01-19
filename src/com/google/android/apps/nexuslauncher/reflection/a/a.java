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
import com.google.android.gms.learning.e;
import com.google.android.gms.learning.PredictorOptions;
import java.util.ArrayList;
import android.content.Context;
import com.google.android.gms.learning.g;
import com.google.android.apps.nexuslauncher.reflection.filter.f;
import java.util.List;
import com.google.android.gms.learning.c;

public class a
{
    private static a g;
    private final c a;
    private final List b;
    private f c;
    private final com.google.android.gms.learning.f d;
    private final com.google.android.apps.nexuslauncher.reflection.a.c e;
    private final g f;
    private final Context mContext;
    private List mPredictedApps;
    
    private a(final Context mContext) {
        this.mPredictedApps = new ArrayList();
        this.mContext = mContext;
        this.c = new f(mContext);
        this.b = c();
        this.e = new b();
        this.d = com.google.android.gms.learning.e.xQ(mContext, PredictorOptions.xT().xY("Reflection_Tensorflow_Predictor").xW(this.e.l(), this.e.n()).xX(this.e.l(), this.e.m()).build());
        this.a = com.google.android.gms.learning.e.xR(mContext, ExampleCollectionOptions.xM().xN("Reflection_Tensorflow_Collection").xP(3024000000L).xO(200000000L).build());
        (this.f = com.google.android.gms.learning.e.xS(mContext, TrainerOptions.xU().xZ("Reflection_Tensorflow_Trainer", "Reflection_Tensorflow_Collection").ya(this.e.o(), this.e.m(), this.e.n()).build())).oV(1);
    }
    
    private Example a(final com.google.research.reflection.a.a a, final com.google.research.reflection.predictor.a a2) {
        final com.google.android.gms.learning.a xy = Example.xy();
        final Features features = new Features();
        for (final com.google.research.reflection.b.b b : this.b) {
            final com.google.research.reflection.layers.a hu = b.HU(a2.GH().Hi(), a);
            final int ip = hu.Ip(false);
            final ArrayList list = new ArrayList<Float>(ip);
            for (int i = 0; i < ip; ++i) {
                list.add((float)hu.Ik(false, 0, i));
            }
            features.xD(b.HZ(), list);
        }
        final ArrayList<Float> list2 = new ArrayList<Float>();
        for (int j = 0; j < a2.GR().size(); ++j) {
            for (int k = 0; k < a2.GO(); ++k) {
                if (j == k) {
                    list2.add(1.0f);
                }
                else {
                    list2.add(0.0f);
                }
            }
        }
        features.xD("app_vector", list2);
        final String[] array = new String[a2.GR().size()];
        for (final Map.Entry<K, Integer> entry : a2.GR().entrySet()) {
            array[entry.getValue()] = (String)entry.getKey();
        }
        for (int l = 0; l < array.length; ++l) {
            if (array[l] == null) {
                array[l] = "null";
            }
        }
        features.xA("app_name", array);
        features.xI("is_target", 0.0f);
        xy.xz(features);
        return xy.build();
    }
    
    private Example b(final com.google.research.reflection.a.a a, final int n, final boolean b, final com.google.research.reflection.predictor.a a2) {
        final com.google.android.gms.learning.a xy = Example.xy();
        final Features features = new Features();
        for (final com.google.research.reflection.b.b b2 : this.b) {
            final com.google.research.reflection.layers.a hu = b2.HU(a2.GH().Hi(), a);
            final int ip = hu.Ip(false);
            final ArrayList list = new ArrayList<Float>(ip);
            for (int i = 0; i < ip; ++i) {
                list.add((float)hu.Ik(false, 0, i));
            }
            features.xD(b2.HZ(), list);
        }
        final ArrayList<Float> list2 = new ArrayList<Float>();
        for (int j = 0; j < a2.GO(); ++j) {
            if (n == j) {
                list2.add(1.0f);
            }
            else {
                list2.add(0.0f);
            }
        }
        features.xD("app_vector", list2);
        features.xA("app_name", a.getId());
        final String s = "is_target";
        final float[] array = { 0.0f };
        float n2;
        if (b) {
            n2 = 1.0f;
        }
        else {
            n2 = 0.0f;
        }
        array[0] = n2;
        features.xI(s, array);
        xy.xz(features);
        return xy.build();
    }
    
    private static List c() {
        final ArrayList<com.google.research.reflection.b.c> list = new ArrayList<com.google.research.reflection.b.c>();
        list.add((com.google.research.reflection.b.c)new com.google.research.reflection.b.a());
        list.add((com.google.research.reflection.b.c)new com.google.research.reflection.b.g());
        list.add((com.google.research.reflection.b.c)new d());
        list.add((com.google.research.reflection.b.c)new i());
        list.add((com.google.research.reflection.b.c)new h());
        list.add((com.google.research.reflection.b.c)new com.google.research.reflection.b.f());
        list.add(new com.google.research.reflection.b.c());
        return list;
    }
    
    private static void e(final List list) {
        Collections.sort((List<Object>)list, new com.google.android.apps.nexuslauncher.reflection.a.f());
    }
    
    public static a getInstance(final Context context) {
        synchronized (a.class) {
            if (a.g == null) {
                a.g = new a(context);
            }
            return a.g;
        }
    }
    
    public void d(final com.google.research.reflection.a.a a, final com.google.research.reflection.predictor.a a2) {
        this.d.oW(this.a(a, a2)).BJ(new com.google.android.apps.nexuslauncher.reflection.a.d(this)).BH(new com.google.android.apps.nexuslauncher.reflection.a.e(this));
    }
    
    public void f(final com.google.research.reflection.a.a a, final com.google.research.reflection.predictor.a a2) {
        for (final String s : a2.GR().keySet()) {
            final Integer n = a2.GR().get(s);
            int intValue;
            if (n == null) {
                intValue = (a2.GR().size() + 1) % a2.GO();
            }
            else {
                intValue = n;
            }
            Example example;
            if (s.equals(a.getId())) {
                example = this.b(a, intValue, true, a2);
            }
            else {
                example = this.b(a, intValue, false, a2);
            }
            this.a.oX(example);
        }
    }
    
    public void g(final ComponentKey componentKey, final LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent) {
        final int index = this.mPredictedApps.indexOf(componentKey);
        if (launcherLogProto$LauncherEvent.srcTarget[0].extension == null) {
            launcherLogProto$LauncherEvent.srcTarget[0].extension = new LauncherLogExtensions$TargetExtension();
        }
        launcherLogProto$LauncherEvent.srcTarget[0].extension.predictedRankFromTensorflow = index;
    }
}

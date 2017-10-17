// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.b;

import java.io.DataOutputStream;
import java.io.DataInputStream;
import java.util.List;

public abstract class b
{
    a MX;
    
    public static b Tp(final String s) {
        if (s.equals("app_launch_extractor") || s.equals("com.google.research.reflection.a.d")) {
            return new d();
        }
        if (s.equals("app_usage_extractor") || s.equals("com.google.research.reflection.a.k")) {
            return new k();
        }
        if (s.equals("day_extractor") || s.equals("com.google.research.reflection.a.e")) {
            return new e();
        }
        if (s.equals("feature_aggregator") || s.equals("com.google.research.reflection.a.c")) {
            return new c();
        }
        if (s.equals("hour_extractor") || s.equals("com.google.research.reflection.a.f")) {
            return new f();
        }
        if (s.equals("headset_extractor") || s.equals("com.google.research.reflection.a.g")) {
            return new g();
        }
        if (s.equals("lat_lng_extractor") || s.equals("com.google.research.reflection.a.i")) {
            return new i();
        }
        if (!s.equals("place_extractor") && !s.equals("com.google.research.reflection.a.j")) {
            return null;
        }
        return new j();
    }
    
    public static String Tr(final b b) {
        if (b instanceof d && !(b instanceof k)) {
            return "app_launch_extractor";
        }
        if (b instanceof k) {
            return "app_usage_extractor";
        }
        if (b instanceof e) {
            return "day_extractor";
        }
        if (b instanceof c) {
            return "feature_aggregator";
        }
        if (b instanceof g) {
            return "headset_extractor";
        }
        if (b instanceof f) {
            return "hour_extractor";
        }
        if (b instanceof i) {
            return "lat_lng_extractor";
        }
        if (!(b instanceof j)) {
            return null;
        }
        return "place_extractor";
    }
    
    public void Tq(final a mx) {
        this.MX = mx;
    }
    
    public abstract int Ts();
    
    public abstract com.google.research.reflection.layers.b Tt(final com.google.research.reflection.common.a p0, final com.google.research.reflection.a.b p1);
    
    public void Tu(final List list) {
    }
    
    public void Tv(final DataInputStream dataInputStream) {
    }
    
    public void Tw(final DataOutputStream dataOutputStream) {
    }
    
    void Tx(final Integer n) {
        if (this.MX != null) {
            this.MX.SR(this, n);
        }
    }
    
    public abstract b clone();
}

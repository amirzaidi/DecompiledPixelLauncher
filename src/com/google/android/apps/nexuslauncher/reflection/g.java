// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import android.content.ComponentName;
import android.content.SharedPreferences;
import android.content.Context;
import java.util.Collections;
import java.util.Arrays;
import java.util.regex.Pattern;
import java.util.List;

public class g
{
    public static final List bs;
    public static final Pattern bt;
    
    static {
        bt = Pattern.compile("^([^/]+)/([^#/]+)(#(\\d+))?$");
        bs = Collections.unmodifiableList((List<?>)Arrays.asList("reflection.engine", "reflection.engine.background", "reflection.events", "model.properties.xml", "reflection_multi_process.xml", "client_actions"));
    }
    
    public static SharedPreferences aT(final Context context) {
        return context.getSharedPreferences("reflection.private.properties", 0);
    }
    
    public static String aU(final ComponentName componentName) {
        return componentName.flattenToString();
    }
}

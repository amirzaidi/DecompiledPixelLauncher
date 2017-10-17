// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import android.content.SharedPreferences;
import android.content.Context;
import android.content.ComponentName;
import java.util.Collections;
import java.util.Arrays;
import java.util.regex.Pattern;
import java.util.List;

public class g
{
    public static final List cN;
    public static final Pattern cO;
    
    static {
        cO = Pattern.compile("^([^/]+)/([^#/]+)(#(\\d+))?$");
        cN = Collections.unmodifiableList((List<?>)Arrays.asList("reflection.engine", "reflection.engine.background", "reflection.events", "model.properties.xml", "reflection_multi_process.xml", "client_actions"));
    }
    
    public static String bZ(final ComponentName componentName) {
        return componentName.flattenToString();
    }
    
    public static SharedPreferences ca(final Context context) {
        return context.getSharedPreferences("reflection.private.properties", 0);
    }
}

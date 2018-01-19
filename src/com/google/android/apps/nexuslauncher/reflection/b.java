// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import android.content.SharedPreferences;
import android.content.Context;
import android.content.ComponentName;
import java.util.Collections;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;

public class b
{
    public static final Pattern bn;
    public static final List bo;
    
    static {
        bn = Pattern.compile("^([^/]+)/([^#/]+)(#(\\d+))?$");
        bo = Collections.unmodifiableList((List<?>)Arrays.asList("reflection.engine", "reflection.engine.background", "reflection.events", "model.properties.xml", "reflection_multi_process.xml", "client_actions"));
    }
    
    public static String aK(final ComponentName componentName) {
        return componentName.flattenToString();
    }
    
    public static SharedPreferences aL(final Context context) {
        return context.getSharedPreferences("reflection.private.properties", 0);
    }
}

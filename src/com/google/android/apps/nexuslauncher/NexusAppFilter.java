// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import com.google.android.apps.nexuslauncher.experiment.a;
import android.content.ComponentName;
import android.content.Context;
import java.util.HashSet;
import com.android.launcher3.AppFilter;

public class NexusAppFilter extends AppFilter
{
    private final HashSet gx;
    
    public NexusAppFilter(final Context context) {
        (this.gx = new HashSet()).add(ComponentName.unflattenFromString("com.google.android.googlequicksearchbox/.VoiceSearchActivity"));
        this.gx.add(ComponentName.unflattenFromString("com.google.android.apps.wallpaper/.picker.CategoryPickerActivity"));
        a.ej(context);
    }
    
    public boolean shouldShowApp(final ComponentName componentName) {
        return this.gx.contains(componentName) ^ true;
    }
}

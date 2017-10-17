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
    private final HashSet fL;
    
    public NexusAppFilter(final Context context) {
        (this.fL = new HashSet()).add(ComponentName.unflattenFromString("com.google.android.googlequicksearchbox/.VoiceSearchActivity"));
        this.fL.add(ComponentName.unflattenFromString("com.google.android.apps.wallpaper/.picker.CategoryPickerActivity"));
        a.dS(context);
    }
    
    public boolean shouldShowApp(final ComponentName componentName) {
        return this.fL.contains(componentName) ^ true;
    }
}

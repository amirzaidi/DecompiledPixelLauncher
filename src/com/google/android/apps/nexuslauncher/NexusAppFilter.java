// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import com.google.android.apps.nexuslauncher.experiment.b;
import android.content.ComponentName;
import android.content.Context;
import java.util.HashSet;
import com.android.launcher3.AppFilter;

public class NexusAppFilter extends AppFilter
{
    private final HashSet dD;
    
    public NexusAppFilter(final Context context) {
        (this.dD = new HashSet()).add(ComponentName.unflattenFromString("com.google.android.googlequicksearchbox/.VoiceSearchActivity"));
        this.dD.add(ComponentName.unflattenFromString("com.google.android.apps.wallpaper/.picker.CategoryPickerActivity"));
        b.cK(context);
    }
    
    public boolean shouldShowApp(final ComponentName componentName) {
        return this.dD.contains(componentName) ^ true;
    }
}

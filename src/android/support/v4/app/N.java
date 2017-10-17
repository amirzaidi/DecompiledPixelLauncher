// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.app.RemoteInput$Builder;
import android.app.RemoteInput;

class n
{
    static RemoteInput[] akd(final at[] array) {
        if (array != null) {
            final RemoteInput[] array2 = new RemoteInput[array.length];
            for (int i = 0; i < array.length; ++i) {
                final at at = array[i];
                array2[i] = new RemoteInput$Builder(at.amr()).setLabel(at.getLabel()).setChoices(at.amt()).setAllowFreeFormInput(at.ams()).addExtras(at.getExtras()).build();
            }
            return array2;
        }
        return null;
    }
}

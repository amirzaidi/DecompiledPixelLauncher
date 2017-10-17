// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.app.RemoteInput$Builder;
import android.app.RemoteInput;

class o
{
    static RemoteInput[] alo(final as[] array) {
        if (array != null) {
            final RemoteInput[] array2 = new RemoteInput[array.length];
            for (int i = 0; i < array.length; ++i) {
                final as as = array[i];
                array2[i] = new RemoteInput$Builder(as.anG()).setLabel(as.getLabel()).setChoices(as.anI()).setAllowFreeFormInput(as.anH()).addExtras(as.getExtras()).build();
            }
            return array2;
        }
        return null;
    }
}

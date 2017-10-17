// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.os.Build$VERSION;
import android.os.Bundle;
import android.content.Intent;
import android.app.Activity;
import android.support.v4.c.a;

public class b extends a
{
    public static void ajq(final Activity activity, final Intent intent, final int n, final Bundle bundle) {
        if (Build$VERSION.SDK_INT < 16) {
            activity.startActivityForResult(intent, n);
        }
        else {
            activity.startActivityForResult(intent, n, bundle);
        }
    }
}

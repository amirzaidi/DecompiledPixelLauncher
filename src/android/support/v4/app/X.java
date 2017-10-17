// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.content.IntentSender;
import android.os.Bundle;
import android.content.Intent;

abstract class x extends P
{
    boolean Zz;
    
    public void startActivityForResult(final Intent intent, final int n, final Bundle bundle) {
        if (!this.Zz && n != -1) {
            P.amC(n);
        }
        super.startActivityForResult(intent, n, bundle);
    }
    
    public void startIntentSenderForResult(final IntentSender intentSender, final int n, final Intent intent, final int n2, final int n3, final int n4, final Bundle bundle) {
        if (!this.ZQ && n != -1) {
            P.amC(n);
        }
        super.startIntentSenderForResult(intentSender, n, intent, n2, n3, n4, bundle);
    }
}

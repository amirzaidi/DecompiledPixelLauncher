// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import android.os.Bundle;
import android.content.Intent;
import android.app.PendingIntent;
import java.util.concurrent.CountDownLatch;
import android.util.MutableLong;
import android.app.PendingIntent$OnFinished;

final class p implements PendingIntent$OnFinished
{
    final /* synthetic */ k bK;
    final /* synthetic */ MutableLong bL;
    final /* synthetic */ CountDownLatch bM;
    
    p(final k bk, final MutableLong bl, final CountDownLatch bm) {
        this.bK = bk;
        this.bL = bl;
        this.bM = bm;
    }
    
    public void onSendFinished(final PendingIntent pendingIntent, final Intent intent, final int n, final String s, final Bundle bundle) {
        this.bL.value = intent.getLongExtra("time", this.bL.value);
        this.bM.countDown();
    }
}

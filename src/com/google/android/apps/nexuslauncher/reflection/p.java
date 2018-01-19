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
    final /* synthetic */ g bW;
    final /* synthetic */ MutableLong bX;
    final /* synthetic */ CountDownLatch bY;
    
    p(final g bw, final MutableLong bx, final CountDownLatch by) {
        this.bW = bw;
        this.bX = bx;
        this.bY = by;
    }
    
    public void onSendFinished(final PendingIntent pendingIntent, final Intent intent, final int n, final String s, final Bundle bundle) {
        this.bX.value = intent.getLongExtra("time", this.bX.value);
        this.bY.countDown();
    }
}

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
    final /* synthetic */ a cX;
    final /* synthetic */ MutableLong cY;
    final /* synthetic */ CountDownLatch cZ;
    
    p(final a cx, final MutableLong cy, final CountDownLatch cz) {
        this.cX = cx;
        this.cY = cy;
        this.cZ = cz;
    }
    
    public void onSendFinished(final PendingIntent pendingIntent, final Intent intent, final int n, final String s, final Bundle bundle) {
        this.cY.value = intent.getLongExtra("time", this.cY.value);
        this.cZ.countDown();
    }
}

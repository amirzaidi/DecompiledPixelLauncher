// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.database.ContentObserver;
import android.os.Handler;
import android.os.Looper;
import android.content.ContentResolver;

class av extends Thread
{
    final /* synthetic */ ContentResolver st;
    
    av(final String s, final ContentResolver st) {
        this.st = st;
        super(s);
    }
    
    public void run() {
        Looper.prepare();
        this.st.registerContentObserver(aS.CONTENT_URI, true, (ContentObserver)new aX(this, new Handler(Looper.myLooper())));
        Looper.loop();
    }
}

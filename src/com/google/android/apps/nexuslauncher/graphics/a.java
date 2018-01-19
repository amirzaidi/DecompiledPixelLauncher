// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.graphics;

import android.content.IntentFilter;
import android.icu.text.DisplayContext;
import java.util.Locale;
import android.util.AttributeSet;
import android.icu.text.DateFormat;
import android.content.Intent;
import android.content.Context;
import android.content.BroadcastReceiver;

final class a extends BroadcastReceiver
{
    final /* synthetic */ IcuDateTextView fX;
    
    a(final IcuDateTextView fx) {
        this.fX = fx;
    }
    
    public void onReceive(final Context context, final Intent intent) {
        this.fX.ey("android.intent.action.TIME_TICK".equals(intent.getAction()) ^ true);
    }
}

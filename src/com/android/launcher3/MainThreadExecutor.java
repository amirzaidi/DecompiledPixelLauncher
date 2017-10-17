// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.os.Looper;
import com.android.launcher3.util.LooperExecutor;

public class MainThreadExecutor extends LooperExecutor
{
    public MainThreadExecutor() {
        super(Looper.getMainLooper());
    }
}

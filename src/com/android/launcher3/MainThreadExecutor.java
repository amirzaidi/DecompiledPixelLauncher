// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.os.Looper;
import com.android.launcher3.util.LooperExecuter;

public class MainThreadExecutor extends LooperExecuter
{
    public MainThreadExecutor() {
        super(Looper.getMainLooper());
    }
}

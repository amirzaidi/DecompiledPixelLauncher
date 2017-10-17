// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import com.android.launcher3.Utilities;
import android.view.Window;

public class SystemUiController
{
    private final int[] mStates;
    private final Window mWindow;
    
    public SystemUiController(final Window mWindow) {
        this.mStates = new int[3];
        this.mWindow = mWindow;
    }
    
    public void updateUiState(final int n, final int n2) {
        if (this.mStates[n] == n2) {
            return;
        }
        this.mStates[n] = n2;
        final int systemUiVisibility = this.mWindow.getDecorView().getSystemUiVisibility();
        final int[] mStates = this.mStates;
        final int length = mStates.length;
        int i = 0;
        int systemUiVisibility2 = systemUiVisibility;
        while (i < length) {
            final int n3 = mStates[i];
            if (Utilities.isAtLeastO()) {
                if ((n3 & 0x1) != 0x0) {
                    systemUiVisibility2 |= 0x10;
                }
                else if ((n3 & 0x2) != 0x0) {
                    systemUiVisibility2 &= 0xFFFFFFEF;
                }
            }
            if ((n3 & 0x4) != 0x0) {
                systemUiVisibility2 |= 0x2000;
            }
            else if ((n3 & 0x8) != 0x0) {
                systemUiVisibility2 &= 0xFFFFDFFF;
            }
            ++i;
        }
        if (systemUiVisibility2 != systemUiVisibility) {
            this.mWindow.getDecorView().setSystemUiVisibility(systemUiVisibility2);
        }
    }
    
    public void updateUiState(final int n, final boolean b) {
        int n2;
        if (b) {
            n2 = 5;
        }
        else {
            n2 = 10;
        }
        this.updateUiState(n, n2);
    }
}

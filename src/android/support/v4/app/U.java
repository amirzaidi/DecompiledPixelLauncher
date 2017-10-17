// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.os.Bundle;
import android.content.Intent;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;

class u extends r
{
    final /* synthetic */ a Zv;
    
    public u(final a zv) {
        this.Zv = zv;
        super(zv);
    }
    
    public int alB() {
        final Window window = this.Zv.getWindow();
        int windowAnimations;
        if (window != null) {
            windowAnimations = window.getAttributes().windowAnimations;
        }
        else {
            windowAnimations = 0;
        }
        return windowAnimations;
    }
    
    public boolean alC(final g g) {
        boolean b = false;
        if (!this.Zv.isFinishing()) {
            b = true;
        }
        return b;
    }
    
    public boolean alD() {
        final Window window = this.Zv.getWindow();
        return window != null && window.peekDecorView() != null;
    }
    
    public void alE(final g g) {
        this.Zv.ajl(g);
    }
    
    public boolean alF() {
        return this.Zv.getWindow() != null;
    }
    
    public View alH(final int n) {
        return this.Zv.findViewById(n);
    }
    
    public LayoutInflater alI() {
        return this.Zv.getLayoutInflater().cloneInContext((Context)this.Zv);
    }
    
    public void alJ(final g g, final Intent intent, final int n, final Bundle bundle) {
        this.Zv.ajp(g, intent, n, bundle);
    }
    
    public void alv(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        this.Zv.dump(s, fileDescriptor, printWriter, array);
    }
    
    public void alx() {
        this.Zv.ajh();
    }
}

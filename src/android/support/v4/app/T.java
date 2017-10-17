// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.os.Bundle;
import android.content.Intent;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import java.io.PrintWriter;
import java.io.FileDescriptor;

class t extends p
{
    final /* synthetic */ a XO;
    
    public t(final a xo) {
        this.XO = xo;
        super(xo);
    }
    
    public void akk(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        this.XO.dump(s, fileDescriptor, printWriter, array);
    }
    
    public void akm() {
        this.XO.ahX();
    }
    
    public int akq() {
        final Window window = this.XO.getWindow();
        int windowAnimations;
        if (window != null) {
            windowAnimations = window.getAttributes().windowAnimations;
        }
        else {
            windowAnimations = 0;
        }
        return windowAnimations;
    }
    
    public boolean akr(final e e) {
        boolean b = false;
        if (!this.XO.isFinishing()) {
            b = true;
        }
        return b;
    }
    
    public boolean aks() {
        final Window window = this.XO.getWindow();
        return window != null && window.peekDecorView() != null;
    }
    
    public void akt(final e e) {
        this.XO.aib(e);
    }
    
    public boolean aku() {
        return this.XO.getWindow() != null;
    }
    
    public View akw(final int n) {
        return this.XO.findViewById(n);
    }
    
    public LayoutInflater akx() {
        return this.XO.getLayoutInflater().cloneInContext((Context)this.XO);
    }
    
    public void aky(final e e, final Intent intent, final int n, final Bundle bundle) {
        this.XO.aif(e, intent, n, bundle);
    }
}

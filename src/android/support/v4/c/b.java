// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.c;

import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.support.v4.a.j;

public class b
{
    boolean adA;
    c adB;
    boolean adC;
    boolean adw;
    d adx;
    boolean ady;
    int adz;
    boolean mStarted;
    
    public void ark() {
        this.mStarted = false;
        this.arp();
    }
    
    protected void arl() {
    }
    
    public void arm(final c c) {
        if (this.adB == null) {
            throw new IllegalStateException("No listener register");
        }
        if (this.adB == c) {
            this.adB = null;
            return;
        }
        throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    }
    
    public final void arn() {
        this.mStarted = true;
        this.adw = false;
        this.adC = false;
        this.arl();
    }
    
    public void aro(final d d) {
        if (this.adx == null) {
            throw new IllegalStateException("No listener register");
        }
        if (this.adx == d) {
            this.adx = null;
            return;
        }
        throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    }
    
    protected void arp() {
    }
    
    protected void arq() {
    }
    
    public String arr(final Object o) {
        final StringBuilder sb = new StringBuilder(64);
        j.aha(o, sb);
        sb.append("}");
        return sb.toString();
    }
    
    public void ars(final int adz, final d adx) {
        if (this.adx == null) {
            this.adx = adx;
            this.adz = adz;
            return;
        }
        throw new IllegalStateException("There is already a listener registered");
    }
    
    public void art(final c adB) {
        if (this.adB == null) {
            this.adB = adB;
            return;
        }
        throw new IllegalStateException("There is already a listener registered");
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        printWriter.print(s);
        printWriter.print("mId=");
        printWriter.print(this.adz);
        printWriter.print(" mListener=");
        printWriter.println(this.adx);
        if (this.mStarted || this.ady || this.adA) {
            printWriter.print(s);
            printWriter.print("mStarted=");
            printWriter.print(this.mStarted);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.ady);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.adA);
        }
        if (this.adC || this.adw) {
            printWriter.print(s);
            printWriter.print("mAbandoned=");
            printWriter.print(this.adC);
            printWriter.print(" mReset=");
            printWriter.println(this.adw);
        }
    }
    
    public void reset() {
        this.arq();
        this.adw = true;
        this.mStarted = false;
        this.adC = false;
        this.ady = false;
        this.adA = false;
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder(64);
        j.aha(this, sb);
        sb.append(" id=");
        sb.append(this.adz);
        sb.append("}");
        return sb.toString();
    }
}

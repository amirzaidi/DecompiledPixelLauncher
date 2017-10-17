// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.c;

import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.support.v4.a.k;

public class b
{
    boolean aeI;
    d aeJ;
    boolean aeK;
    int aeL;
    boolean aeM;
    c aeN;
    boolean aeO;
    boolean mStarted;
    
    public void asg() {
        this.mStarted = false;
        this.asl();
    }
    
    protected void ash() {
    }
    
    public void asi(final c c) {
        if (this.aeN == null) {
            throw new IllegalStateException("No listener register");
        }
        if (this.aeN == c) {
            this.aeN = null;
            return;
        }
        throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    }
    
    public final void asj() {
        this.mStarted = true;
        this.aeI = false;
        this.aeO = false;
        this.ash();
    }
    
    public void ask(final d d) {
        if (this.aeJ == null) {
            throw new IllegalStateException("No listener register");
        }
        if (this.aeJ == d) {
            this.aeJ = null;
            return;
        }
        throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    }
    
    protected void asl() {
    }
    
    protected void asm() {
    }
    
    public String asn(final Object o) {
        final StringBuilder sb = new StringBuilder(64);
        k.aix(o, sb);
        sb.append("}");
        return sb.toString();
    }
    
    public void aso(final int aeL, final d aeJ) {
        if (this.aeJ == null) {
            this.aeJ = aeJ;
            this.aeL = aeL;
            return;
        }
        throw new IllegalStateException("There is already a listener registered");
    }
    
    public void asp(final c aeN) {
        if (this.aeN == null) {
            this.aeN = aeN;
            return;
        }
        throw new IllegalStateException("There is already a listener registered");
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        printWriter.print(s);
        printWriter.print("mId=");
        printWriter.print(this.aeL);
        printWriter.print(" mListener=");
        printWriter.println(this.aeJ);
        if (this.mStarted || this.aeK || this.aeM) {
            printWriter.print(s);
            printWriter.print("mStarted=");
            printWriter.print(this.mStarted);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.aeK);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.aeM);
        }
        if (this.aeO || this.aeI) {
            printWriter.print(s);
            printWriter.print("mAbandoned=");
            printWriter.print(this.aeO);
            printWriter.print(" mReset=");
            printWriter.println(this.aeI);
        }
    }
    
    public void reset() {
        this.asm();
        this.aeI = true;
        this.mStarted = false;
        this.aeO = false;
        this.aeK = false;
        this.aeM = false;
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder(64);
        k.aix(this, sb);
        sb.append(" id=");
        sb.append(this.aeL);
        sb.append("}");
        return sb.toString();
    }
}

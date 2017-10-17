// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.support.v4.a.j;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.util.Log;
import android.support.v4.a.a;

class aY extends E
{
    static boolean DEBUG;
    p acQ;
    final a acR;
    final String acS;
    boolean acT;
    final a acU;
    boolean mStarted;
    
    static {
        aY.DEBUG = false;
    }
    
    aY(final String acS, final p acQ, final boolean mStarted) {
        this.acU = new a();
        this.acR = new a();
        this.acS = acS;
        this.acQ = acQ;
        this.mStarted = mStarted;
    }
    
    void aql() {
        if (!this.acT) {
            if (aY.DEBUG) {
                Log.v("LoaderManager", "Destroying Active in " + this);
            }
            for (int i = this.acU.size() - 1; i >= 0; --i) {
                ((T)this.acU.agD(i)).alZ();
            }
            this.acU.clear();
        }
        if (aY.DEBUG) {
            Log.v("LoaderManager", "Destroying Inactive in " + this);
        }
        for (int j = this.acR.size() - 1; j >= 0; --j) {
            ((T)this.acR.agD(j)).alZ();
        }
        this.acR.clear();
        this.acQ = null;
    }
    
    void aqm(final p acQ) {
        this.acQ = acQ;
    }
    
    void aqn() {
        if (aY.DEBUG) {
            Log.v("LoaderManager", "Retaining in " + this);
        }
        if (this.mStarted) {
            this.acT = true;
            this.mStarted = false;
            for (int i = this.acU.size() - 1; i >= 0; --i) {
                ((T)this.acU.agD(i)).alV();
            }
            return;
        }
        final RuntimeException ex = new RuntimeException("here");
        ex.fillInStackTrace();
        Log.w("LoaderManager", "Called doRetain when not started: " + this, (Throwable)ex);
    }
    
    void aqo() {
        if (this.acT) {
            if (aY.DEBUG) {
                Log.v("LoaderManager", "Finished Retaining in " + this);
            }
            this.acT = false;
            for (int i = this.acU.size() - 1; i >= 0; --i) {
                ((T)this.acU.agD(i)).alY();
            }
        }
    }
    
    void aqp() {
        for (int i = this.acU.size() - 1; i >= 0; --i) {
            ((T)this.acU.agD(i)).Yu = true;
        }
    }
    
    void aqq() {
        if (aY.DEBUG) {
            Log.v("LoaderManager", "Starting in " + this);
        }
        if (!this.mStarted) {
            this.mStarted = true;
            for (int i = this.acU.size() - 1; i >= 0; --i) {
                ((T)this.acU.agD(i)).start();
            }
            return;
        }
        final RuntimeException ex = new RuntimeException("here");
        ex.fillInStackTrace();
        Log.w("LoaderManager", "Called doStart when already started: " + this, (Throwable)ex);
    }
    
    void aqr() {
        if (aY.DEBUG) {
            Log.v("LoaderManager", "Stopping in " + this);
        }
        if (this.mStarted) {
            for (int i = this.acU.size() - 1; i >= 0; --i) {
                ((T)this.acU.agD(i)).stop();
            }
            this.mStarted = false;
            return;
        }
        final RuntimeException ex = new RuntimeException("here");
        ex.fillInStackTrace();
        Log.w("LoaderManager", "Called doStop when not started: " + this, (Throwable)ex);
    }
    
    void aqs() {
        for (int i = this.acU.size() - 1; i >= 0; --i) {
            ((T)this.acU.agD(i)).alW();
        }
    }
    
    public boolean aqt() {
        final int size = this.acU.size();
        int i = 0;
        boolean b = false;
        while (i < size) {
            final T t = (T)this.acU.agD(i);
            b |= (t.mStarted && !t.YF);
            ++i;
        }
        return b;
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        int i = 0;
        if (this.acU.size() > 0) {
            printWriter.print(s);
            printWriter.println("Active Loaders:");
            final String string = s + "    ";
            for (int j = 0; j < this.acU.size(); ++j) {
                final T t = (T)this.acU.agD(j);
                printWriter.print(s);
                printWriter.print("  #");
                printWriter.print(this.acU.agG(j));
                printWriter.print(": ");
                printWriter.println(t.toString());
                t.dump(string, fileDescriptor, printWriter, array);
            }
        }
        if (this.acR.size() > 0) {
            printWriter.print(s);
            printWriter.println("Inactive Loaders:");
            final String string2 = s + "    ";
            while (i < this.acR.size()) {
                final T t2 = (T)this.acR.agD(i);
                printWriter.print(s);
                printWriter.print("  #");
                printWriter.print(this.acR.agG(i));
                printWriter.print(": ");
                printWriter.println(t2.toString());
                t2.dump(string2, fileDescriptor, printWriter, array);
                ++i;
            }
        }
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        j.aha(this.acQ, sb);
        sb.append("}}");
        return sb.toString();
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.support.v4.a.k;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.util.Log;
import android.support.v4.a.a;

class aU extends F
{
    static boolean DEBUG;
    r aek;
    final a ael;
    final String aem;
    boolean aen;
    final a aeo;
    boolean mStarted;
    
    static {
        aU.DEBUG = false;
    }
    
    aU(final String aem, final r aek, final boolean mStarted) {
        this.aeo = new a();
        this.ael = new a();
        this.aem = aem;
        this.aek = aek;
        this.mStarted = mStarted;
    }
    
    void arm() {
        if (!this.aen) {
            if (aU.DEBUG) {
                Log.v("LoaderManager", "Destroying Active in " + this);
            }
            for (int i = this.aeo.size() - 1; i >= 0; --i) {
                ((U)this.aeo.ahO(i)).ano();
            }
            this.aeo.clear();
        }
        if (aU.DEBUG) {
            Log.v("LoaderManager", "Destroying Inactive in " + this);
        }
        for (int j = this.ael.size() - 1; j >= 0; --j) {
            ((U)this.ael.ahO(j)).ano();
        }
        this.ael.clear();
        this.aek = null;
    }
    
    void arn(final r aek) {
        this.aek = aek;
    }
    
    void aro() {
        if (aU.DEBUG) {
            Log.v("LoaderManager", "Retaining in " + this);
        }
        if (this.mStarted) {
            this.aen = true;
            this.mStarted = false;
            for (int i = this.aeo.size() - 1; i >= 0; --i) {
                ((U)this.aeo.ahO(i)).ank();
            }
            return;
        }
        final RuntimeException ex = new RuntimeException("here");
        ex.fillInStackTrace();
        Log.w("LoaderManager", "Called doRetain when not started: " + this, (Throwable)ex);
    }
    
    void arp() {
        if (this.aen) {
            if (aU.DEBUG) {
                Log.v("LoaderManager", "Finished Retaining in " + this);
            }
            this.aen = false;
            for (int i = this.aeo.size() - 1; i >= 0; --i) {
                ((U)this.aeo.ahO(i)).ann();
            }
        }
    }
    
    void arq() {
        for (int i = this.aeo.size() - 1; i >= 0; --i) {
            ((U)this.aeo.ahO(i)).ZZ = true;
        }
    }
    
    void arr() {
        if (aU.DEBUG) {
            Log.v("LoaderManager", "Starting in " + this);
        }
        if (!this.mStarted) {
            this.mStarted = true;
            for (int i = this.aeo.size() - 1; i >= 0; --i) {
                ((U)this.aeo.ahO(i)).start();
            }
            return;
        }
        final RuntimeException ex = new RuntimeException("here");
        ex.fillInStackTrace();
        Log.w("LoaderManager", "Called doStart when already started: " + this, (Throwable)ex);
    }
    
    void ars() {
        if (aU.DEBUG) {
            Log.v("LoaderManager", "Stopping in " + this);
        }
        if (this.mStarted) {
            for (int i = this.aeo.size() - 1; i >= 0; --i) {
                ((U)this.aeo.ahO(i)).stop();
            }
            this.mStarted = false;
            return;
        }
        final RuntimeException ex = new RuntimeException("here");
        ex.fillInStackTrace();
        Log.w("LoaderManager", "Called doStop when not started: " + this, (Throwable)ex);
    }
    
    void art() {
        for (int i = this.aeo.size() - 1; i >= 0; --i) {
            ((U)this.aeo.ahO(i)).anl();
        }
    }
    
    public boolean aru() {
        final int size = this.aeo.size();
        int i = 0;
        boolean b = false;
        while (i < size) {
            final U u = (U)this.aeo.ahO(i);
            b |= (u.mStarted && !u.aak);
            ++i;
        }
        return b;
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        int i = 0;
        if (this.aeo.size() > 0) {
            printWriter.print(s);
            printWriter.println("Active Loaders:");
            final String string = s + "    ";
            for (int j = 0; j < this.aeo.size(); ++j) {
                final U u = (U)this.aeo.ahO(j);
                printWriter.print(s);
                printWriter.print("  #");
                printWriter.print(this.aeo.ahQ(j));
                printWriter.print(": ");
                printWriter.println(u.toString());
                u.dump(string, fileDescriptor, printWriter, array);
            }
        }
        if (this.ael.size() > 0) {
            printWriter.print(s);
            printWriter.println("Inactive Loaders:");
            final String string2 = s + "    ";
            while (i < this.ael.size()) {
                final U u2 = (U)this.ael.ahO(i);
                printWriter.print(s);
                printWriter.print("  #");
                printWriter.print(this.ael.ahQ(i));
                printWriter.print(": ");
                printWriter.println(u2.toString());
                u2.dump(string2, fileDescriptor, printWriter, array);
                ++i;
            }
        }
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        k.aix(this.aek, sb);
        sb.append("}}");
        return sb.toString();
    }
}

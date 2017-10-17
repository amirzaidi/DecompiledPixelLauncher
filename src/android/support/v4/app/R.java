// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.os.Bundle;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.os.Handler;
import android.content.Context;
import android.support.v4.a.b;
import android.app.Activity;

public abstract class r extends ac
{
    private boolean Zk;
    private final Activity Zl;
    final aR Zm;
    private aU Zn;
    private b Zo;
    final int Zp;
    private boolean Zq;
    private boolean Zr;
    final Context mContext;
    private final Handler mHandler;
    
    r(final Activity zl, final Context mContext, final Handler mHandler, final int zp) {
        this.Zm = new aR();
        this.Zl = zl;
        this.mContext = mContext;
        this.mHandler = mHandler;
        this.Zp = zp;
    }
    
    r(final a a) {
        this(a, (Context)a, a.mHandler, 0);
    }
    
    void alA() {
        if (this.Zo != null) {
            final int size = this.Zo.size();
            final aU[] array = new aU[size];
            for (int i = size - 1; i >= 0; --i) {
                array[i] = (aU)this.Zo.aia(i);
            }
            for (int j = 0; j < size; ++j) {
                final aU au = array[j];
                au.arp();
                au.art();
            }
        }
    }
    
    public int alB() {
        return this.Zp;
    }
    
    public boolean alC(final g g) {
        return true;
    }
    
    public boolean alD() {
        return true;
    }
    
    void alE(final g g) {
    }
    
    public boolean alF() {
        return true;
    }
    
    void alG(final String s) {
        if (this.Zo != null) {
            final aU au = (aU)this.Zo.get(s);
            if (au != null && !au.aen) {
                au.arm();
                this.Zo.remove(s);
            }
        }
    }
    
    public View alH(final int n) {
        return null;
    }
    
    public LayoutInflater alI() {
        return (LayoutInflater)this.mContext.getSystemService("layout_inflater");
    }
    
    public void alJ(final g g, final Intent intent, final int n, final Bundle bundle) {
        if (n == -1) {
            this.mContext.startActivity(intent);
            return;
        }
        throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
    }
    
    void alp() {
        final boolean b = true;
        if (!this.Zr) {
            this.Zr = b;
            if (this.Zn == null) {
                if (!this.Zk) {
                    this.Zn = this.alu("(root)", this.Zr, false);
                    if (this.Zn != null && !this.Zn.mStarted) {
                        this.Zn.arr();
                    }
                }
            }
            else {
                this.Zn.arr();
            }
            this.Zk = b;
        }
    }
    
    void alq(final boolean zq) {
        this.Zq = zq;
        if (this.Zn == null) {
            return;
        }
        if (this.Zr) {
            this.Zr = false;
            if (!zq) {
                this.Zn.ars();
            }
            else {
                this.Zn.aro();
            }
        }
    }
    
    b alr() {
        int i = 0;
        int n;
        if (this.Zo == null) {
            n = 0;
        }
        else {
            final int size = this.Zo.size();
            final aU[] array = new aU[size];
            for (int j = size - 1; j >= 0; --j) {
                array[j] = (aU)this.Zo.aia(j);
            }
            final boolean alz = this.alz();
            n = 0;
            while (i < size) {
                final aU au = array[i];
                if (!au.aen && alz) {
                    if (!au.mStarted) {
                        au.arr();
                    }
                    au.aro();
                }
                if (!au.aen) {
                    au.arm();
                    this.Zo.remove(au.aem);
                }
                else {
                    n = 1;
                }
                ++i;
            }
        }
        if (n == 0) {
            return null;
        }
        return this.Zo;
    }
    
    void als() {
        if (this.Zn != null) {
            this.Zn.arm();
        }
    }
    
    void alt(final b zo) {
        if (zo != null) {
            for (int size = zo.size(), i = 0; i < size; ++i) {
                ((aU)zo.aia(i)).arn(this);
            }
        }
        this.Zo = zo;
    }
    
    aU alu(final String s, final boolean b, final boolean b2) {
        if (this.Zo == null) {
            this.Zo = new b();
        }
        aU au = (aU)this.Zo.get(s);
        if (au == null && b2) {
            au = new aU(s, this, b);
            this.Zo.put(s, au);
        }
        else if (b && au != null && !au.mStarted) {
            au.arr();
        }
        return au;
    }
    
    public void alv(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
    }
    
    void alw(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        printWriter.print(s);
        printWriter.print("mLoadersStarted=");
        printWriter.println(this.Zr);
        if (this.Zn != null) {
            printWriter.print(s);
            printWriter.print("Loader Manager ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this.Zn)));
            printWriter.println(":");
            this.Zn.dump(s + "  ", fileDescriptor, printWriter, array);
        }
    }
    
    public void alx() {
    }
    
    aR aly() {
        return this.Zm;
    }
    
    boolean alz() {
        return this.Zq;
    }
    
    Activity getActivity() {
        return this.Zl;
    }
    
    Context getContext() {
        return this.mContext;
    }
    
    Handler getHandler() {
        return this.mHandler;
    }
}

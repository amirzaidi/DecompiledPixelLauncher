// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.os.Bundle;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.os.Handler;
import android.content.Context;
import android.support.v4.a.k;
import android.app.Activity;

public abstract class p extends ac
{
    private boolean XA;
    private final Activity XB;
    final aV XC;
    private aY XD;
    private k XE;
    final int XF;
    private boolean XG;
    private boolean XH;
    final Context mContext;
    private final Handler mHandler;
    
    p(final Activity xb, final Context mContext, final Handler mHandler, final int xf) {
        this.XC = new aV();
        this.XB = xb;
        this.mContext = mContext;
        this.mHandler = mHandler;
        this.XF = xf;
    }
    
    p(final a a) {
        this(a, (Context)a, a.mHandler, 0);
    }
    
    void ake() {
        final boolean b = true;
        if (!this.XH) {
            this.XH = b;
            if (this.XD == null) {
                if (!this.XA) {
                    this.XD = this.akj("(root)", this.XH, false);
                    if (this.XD != null && !this.XD.mStarted) {
                        this.XD.aqq();
                    }
                }
            }
            else {
                this.XD.aqq();
            }
            this.XA = b;
        }
    }
    
    void akf(final boolean xg) {
        this.XG = xg;
        if (this.XD == null) {
            return;
        }
        if (this.XH) {
            this.XH = false;
            if (!xg) {
                this.XD.aqr();
            }
            else {
                this.XD.aqn();
            }
        }
    }
    
    k akg() {
        int i = 0;
        int n;
        if (this.XE == null) {
            n = 0;
        }
        else {
            final int size = this.XE.size();
            final aY[] array = new aY[size];
            for (int j = size - 1; j >= 0; --j) {
                array[j] = (aY)this.XE.ahi(j);
            }
            final boolean ako = this.ako();
            n = 0;
            while (i < size) {
                final aY ay = array[i];
                if (!ay.acT && ako) {
                    if (!ay.mStarted) {
                        ay.aqq();
                    }
                    ay.aqn();
                }
                if (!ay.acT) {
                    ay.aql();
                    this.XE.remove(ay.acS);
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
        return this.XE;
    }
    
    void akh() {
        if (this.XD != null) {
            this.XD.aql();
        }
    }
    
    void aki(final k xe) {
        if (xe != null) {
            for (int size = xe.size(), i = 0; i < size; ++i) {
                ((aY)xe.ahi(i)).aqm(this);
            }
        }
        this.XE = xe;
    }
    
    aY akj(final String s, final boolean b, final boolean b2) {
        if (this.XE == null) {
            this.XE = new k();
        }
        aY ay = (aY)this.XE.get(s);
        if (ay == null && b2) {
            ay = new aY(s, this, b);
            this.XE.put(s, ay);
        }
        else if (b && ay != null && !ay.mStarted) {
            ay.aqq();
        }
        return ay;
    }
    
    public void akk(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
    }
    
    void akl(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        printWriter.print(s);
        printWriter.print("mLoadersStarted=");
        printWriter.println(this.XH);
        if (this.XD != null) {
            printWriter.print(s);
            printWriter.print("Loader Manager ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this.XD)));
            printWriter.println(":");
            this.XD.dump(s + "  ", fileDescriptor, printWriter, array);
        }
    }
    
    public void akm() {
    }
    
    aV akn() {
        return this.XC;
    }
    
    boolean ako() {
        return this.XG;
    }
    
    void akp() {
        if (this.XE != null) {
            final int size = this.XE.size();
            final aY[] array = new aY[size];
            for (int i = size - 1; i >= 0; --i) {
                array[i] = (aY)this.XE.ahi(i);
            }
            for (int j = 0; j < size; ++j) {
                final aY ay = array[j];
                ay.aqo();
                ay.aqs();
            }
        }
    }
    
    public int akq() {
        return this.XF;
    }
    
    public boolean akr(final e e) {
        return true;
    }
    
    public boolean aks() {
        return true;
    }
    
    void akt(final e e) {
    }
    
    public boolean aku() {
        return true;
    }
    
    void akv(final String s) {
        if (this.XE != null) {
            final aY ay = (aY)this.XE.get(s);
            if (ay != null && !ay.acT) {
                ay.aql();
                this.XE.remove(s);
            }
        }
    }
    
    public View akw(final int n) {
        return null;
    }
    
    public LayoutInflater akx() {
        return (LayoutInflater)this.mContext.getSystemService("layout_inflater");
    }
    
    public void aky(final e e, final Intent intent, final int n, final Bundle bundle) {
        if (n == -1) {
            this.mContext.startActivity(intent);
            return;
        }
        throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
    }
    
    Activity getActivity() {
        return this.XB;
    }
    
    Context getContext() {
        return this.mContext;
    }
    
    Handler getHandler() {
        return this.mHandler;
    }
}

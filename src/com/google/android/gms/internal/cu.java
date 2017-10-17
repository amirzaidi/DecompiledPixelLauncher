// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.util.Log;
import java.io.FileDescriptor;
import java.io.Writer;
import java.io.PrintWriter;
import java.io.StringWriter;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.l;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.f;
import com.google.android.gms.common.api.g;
import java.util.Iterator;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.d;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.ArrayList;
import com.google.android.gms.common.internal.S;
import com.google.android.gms.common.internal.J;
import android.os.Looper;
import java.util.concurrent.locks.Lock;
import java.util.Queue;
import com.google.android.gms.common.api.j;
import java.util.Map;
import java.util.Set;
import android.content.Context;
import com.google.android.gms.common.api.a;

public final class cu extends a implements bV
{
    private final Context mContext;
    Set xA;
    private br xB;
    final Map xC;
    private long xD;
    private final int xE;
    final j xF;
    private long xG;
    private final com.google.android.gms.common.a xH;
    private Integer xl;
    final Queue xm;
    private final Lock xn;
    private final Looper xo;
    final bQ xp;
    final Map xq;
    final com.google.android.gms.common.internal.a xr;
    bq xs;
    private final J xt;
    private volatile boolean xu;
    private final S xv;
    Set xw;
    private final ArrayList xx;
    private final by xy;
    private final cm xz;
    
    public cu(final Context mContext, final Lock xn, final Looper xo, final com.google.android.gms.common.internal.a xr, final com.google.android.gms.common.a xh, final j xf, final Map xc, final List list, final List list2, final Map xq, final int xe, final int n, final ArrayList xx) {
        this.xB = null;
        this.xm = new LinkedList();
        this.xD = 120000L;
        this.xG = 5000L;
        this.xw = new HashSet();
        this.xy = new by();
        this.xl = null;
        this.xA = null;
        this.xv = new ck(this);
        this.mContext = mContext;
        this.xn = xn;
        this.xt = new J(xo, this.xv);
        this.xo = xo;
        this.xz = new cm(this, xo);
        this.xH = xh;
        this.xE = xe;
        if (this.xE >= 0) {
            this.xl = n;
        }
        this.xC = xc;
        this.xq = xq;
        this.xx = xx;
        this.xp = new bQ(this.xq);
        final Iterator<d> iterator = list.iterator();
        while (iterator.hasNext()) {
            this.xt.lF(iterator.next());
        }
        final Iterator<c> iterator2 = list2.iterator();
        while (iterator2.hasNext()) {
            this.xt.lE(iterator2.next());
        }
        this.xr = xr;
        this.xF = xf;
    }
    
    static String Cj(final int n) {
        switch (n) {
            default: {
                return "UNKNOWN";
            }
            case 3: {
                return "SIGN_IN_MODE_NONE";
            }
            case 1: {
                return "SIGN_IN_MODE_REQUIRED";
            }
            case 2: {
                return "SIGN_IN_MODE_OPTIONAL";
            }
        }
    }
    
    private void Ck(final int n) {
        final boolean b = true;
        final float n2 = Float.MIN_VALUE;
        if (this.xl != null) {
            if (this.xl != n) {
                final String value = String.valueOf(Cj(n));
                final String value2 = String.valueOf(Cj(this.xl));
                throw new IllegalStateException(new StringBuilder(String.valueOf(value).length() + 51 + String.valueOf(value2).length()).append("Cannot use sign-in mode: ").append(value).append(". Mode was already set to ").append(value2).toString());
            }
        }
        else {
            this.xl = n;
        }
        if (this.xB == null) {
            final Iterator<g> iterator = this.xq.values().iterator();
            int n3 = 0;
            float n4 = 0.0f;
            boolean b2 = false;
            while (iterator.hasNext()) {
                final g g = iterator.next();
                if (g.gG()) {
                    b2 = b;
                }
                int n5;
                float n6;
                if (!g.gO()) {
                    n5 = n3;
                    n6 = n4;
                }
                else {
                    n5 = (b ? 1 : 0);
                    n6 = n2;
                }
                n3 = n5;
                n4 = n6;
            }
            switch (this.xl) {
                case 1: {
                    if (!b2) {
                        throw new IllegalStateException("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
                    }
                    if (n3 != 0) {
                        throw new IllegalStateException("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead.");
                    }
                    break;
                }
                case 2: {
                    if (b2) {
                        this.xB = bp.yL(this.mContext, this, this.xn, this.xo, this.xH, this.xq, this.xr, this.xC, this.xF, this.xx);
                        return;
                    }
                    break;
                }
            }
            this.xB = new bZ(this.mContext, this, this.xn, this.xo, this.xH, this.xq, this.xr, this.xC, this.xF, this.xx, this);
        }
    }
    
    public static int Cl(final Iterable iterable, final boolean b) {
        final boolean b2 = true;
        final float n = Float.MIN_VALUE;
        final Iterator<g> iterator = iterable.iterator();
        int n2 = 0;
        float n3 = 0.0f;
        boolean b3 = false;
        while (iterator.hasNext()) {
            final g g = iterator.next();
            if (g.gG()) {
                b3 = b2;
            }
            int n4;
            float n5;
            if (!g.gO()) {
                n4 = n2;
                n5 = n3;
            }
            else {
                n4 = (b2 ? 1 : 0);
                n5 = n;
            }
            n2 = n4;
            n3 = n5;
        }
        if (!b3) {
            return 3;
        }
        if (n2 != 0 && b) {
            return 2;
        }
        return b2 ? 1 : 0;
    }
    
    private void Co() {
        this.xn.lock();
        try {
            if (this.Cs()) {
                this.Cx();
            }
        }
        finally {
            this.xn.unlock();
        }
    }
    
    private void Cx() {
        this.xt.lA();
        this.xB.yM();
    }
    
    private void Cy() {
        this.xn.lock();
        try {
            if (this.Cq()) {
                this.Cx();
            }
        }
        finally {
            this.xn.unlock();
        }
    }
    
    public void Br(final ConnectionResult connectionResult) {
        if (!this.xH.qB(this.mContext, connectionResult.qh())) {
            this.Cs();
        }
        if (!this.Cq()) {
            this.xt.lH(connectionResult);
            this.xt.lC();
        }
    }
    
    public void Bs(final Bundle bundle) {
        while (!this.xm.isEmpty()) {
            this.Cr(this.xm.remove());
        }
        this.xt.lD(bundle);
    }
    
    public void Bt(final int n, final boolean b) {
        if (n == 1 && !b) {
            this.Cz();
        }
        this.xp.Bx();
        this.xt.lB(n);
        this.xt.lC();
        if (n == 2) {
            this.Cx();
        }
    }
    
    boolean CA() {
        boolean b = false;
        this.xn.lock();
        try {
            if (this.xA != null) {
                if (!this.xA.isEmpty()) {
                    b = true;
                }
                return b;
            }
            return false;
        }
        finally {
            this.xn.unlock();
        }
    }
    
    public boolean Cp() {
        boolean b = false;
        if (this.xB != null && this.xB.za()) {
            b = true;
        }
        return b;
    }
    
    boolean Cq() {
        return this.xu;
    }
    
    public b Cr(final b b) {
        boolean cq = false;
        while (true) {
            while (true) {
                Label_0015: {
                    if (b.ro() == null) {
                        break Label_0015;
                    }
                    Label_0171: {
                        break Label_0171;
                        while (true) {
                            final boolean containsKey;
                            final String s;
                            l.ke(containsKey, new StringBuilder(String.valueOf(s).length() + 65).append("GoogleApiClient is not configured to use ").append(s).append(" required for this call.").toString());
                            this.xn.lock();
                            try {
                                if (this.xB == null) {
                                    throw new IllegalStateException("GoogleApiClient is not connected yet.");
                                }
                                cq = this.Cq();
                                if (!cq) {
                                    return this.xB.zb(b);
                                }
                                break;
                                cq = true;
                                break Label_0015;
                                b.rq().gE();
                                continue;
                            }
                            finally {
                                this.xn.unlock();
                            }
                            break;
                        }
                    }
                    this.xm.add(b);
                    while (!this.xm.isEmpty()) {
                        final b b2 = this.xm.remove();
                        this.xp.BA(b2);
                        b2.ru(Status.ht);
                    }
                    this.xn.unlock();
                    return b;
                }
                l.ke(cq, "This task can not be executed (it's probably a Batch or malformed)");
                final boolean containsKey = this.xq.containsKey(b.ro());
                if (b.rq() == null) {
                    final String s = "the API";
                    continue;
                }
                break;
            }
            continue;
        }
    }
    
    boolean Cs() {
        final int n = 1;
        if (this.Cq()) {
            this.xu = false;
            this.xz.removeMessages(2);
            this.xz.removeMessages(n);
            if (this.xs != null) {
                this.xs.zo();
                this.xs = null;
            }
            return n != 0;
        }
        return false;
    }
    
    public int Ct() {
        return System.identityHashCode(this);
    }
    
    g Cu(final h h) {
        final g g = this.xq.get(h);
        l.kc(g, "Appropriate Api was not requested.");
        return g;
    }
    
    public void Cv(final int n) {
        boolean b = true;
        this.xn.lock();
        Label_0083: {
            if (n != 3) {
                break Label_0083;
            }
            try {
                // iftrue(Label_0022:, n == b || n == 2)
                while (true) {
                    while (true) {
                        l.ke(b, new StringBuilder(33).append("Illegal sign-in mode: ").append(n).toString());
                        this.Ck(n);
                        this.Cx();
                        return;
                        b = false;
                        continue;
                    }
                    continue;
                }
            }
            finally {
                this.xn.unlock();
            }
        }
    }
    
    String Cw() {
        final StringWriter stringWriter = new StringWriter();
        this.dump("", null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }
    
    void Cz() {
        final int xu = 1;
        if (!this.Cq()) {
            this.xu = (xu != 0);
            if (this.xs == null) {
                this.xs = this.xH.qm(this.mContext.getApplicationContext(), new ce(this));
            }
            this.xz.sendMessageDelayed(this.xz.obtainMessage(xu), this.xD);
            this.xz.sendMessageDelayed(this.xz.obtainMessage(2), this.xG);
        }
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        printWriter.append(s).append("mContext=").println(this.mContext);
        printWriter.append(s).append("mResuming=").print(this.xu);
        printWriter.append(" mWorkQueue.size()=").print(this.xm.size());
        this.xp.Bw(printWriter);
        if (this.xB != null) {
            this.xB.dump(s, fileDescriptor, printWriter, array);
        }
    }
    
    public Context getContext() {
        return this.mContext;
    }
    
    public Looper gf() {
        return this.xo;
    }
    
    public void gg() {
    Label_0054_Outer:
        while (true) {
            boolean b = false;
            this.xn.lock();
            while (true) {
                Label_0117: {
                    while (true) {
                        Label_0112: {
                            try {
                                if (this.xE < 0) {
                                    if (this.xl == null) {
                                        break Label_0117;
                                    }
                                    if (this.xl == 2) {
                                        break;
                                    }
                                }
                                else {
                                    if (this.xl != null) {
                                        break Label_0112;
                                    }
                                    l.kj(b, "Sign-in mode should have been set explicitly by auto-manage.");
                                }
                                this.Cv(this.xl);
                                this.xn.unlock();
                                return;
                            }
                            finally {
                                this.xn.unlock();
                            }
                        }
                        b = true;
                        continue Label_0054_Outer;
                    }
                }
                this.xl = Cl(this.xq.values(), false);
                continue;
            }
        }
        new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
    }
    
    public void gh(final c c) {
        this.xt.lG(c);
    }
    
    public void gi() {
        while (true) {
            this.xn.lock();
            while (true) {
                Iterator iterator;
                try {
                    this.xp.BD();
                    if (this.xB != null) {
                        this.xB.yU();
                    }
                    this.xy.zQ();
                    iterator = this.xm.iterator();
                    if (!iterator.hasNext()) {
                        this.xm.clear();
                        if (this.xB != null) {
                            this.Cs();
                            this.xt.lC();
                            return;
                        }
                        break;
                    }
                }
                finally {
                    this.xn.unlock();
                }
                final b b = iterator.next();
                b.rv(null);
                b.cancel();
                continue;
            }
        }
        this.xn.unlock();
    }
    
    public b gj(final b b) {
        while (true) {
            while (true) {
                boolean b2 = false;
                Label_0013: {
                    if (b.ro() == null) {
                        b2 = false;
                        break Label_0013;
                    }
                    Label_0160: {
                        break Label_0160;
                        while (true) {
                            final boolean containsKey;
                            final String s;
                            l.ke(containsKey, new StringBuilder(String.valueOf(s).length() + 65).append("GoogleApiClient is not configured to use ").append(s).append(" required for this call.").toString());
                            this.xn.lock();
                            try {
                                if (this.xB != null) {
                                    return this.xB.yW(b);
                                }
                                this.xm.add(b);
                                return b;
                                b.rq().gE();
                                continue;
                                b2 = true;
                                break;
                            }
                            finally {
                                this.xn.unlock();
                            }
                        }
                    }
                }
                l.ke(b2, "This task can not be enqueued (it's probably a Batch or malformed)");
                final boolean containsKey = this.xq.containsKey(b.ro());
                if (b.rq() == null) {
                    final String s = "the API";
                    continue;
                }
                break;
            }
            continue;
        }
    }
    
    public void gk(final c c) {
        this.xt.lE(c);
    }
    
    public g gl(final h h) {
        final g g = this.xq.get(h);
        l.kc(g, "Appropriate Api was not requested.");
        return g;
    }
    
    public void gm(final com.google.android.gms.internal.d d) {
        while (true) {
            this.xn.lock();
            Label_0128: {
                Label_0098: {
                    try {
                        if (this.xA != null) {
                            if (!this.xA.remove(d)) {
                                break Label_0098;
                            }
                            if (!this.CA()) {
                                break Label_0128;
                            }
                        }
                        else {
                            Log.wtf("GoogleApiClientImpl", "Attempted to remove pending transform when no transforms are registered.", (Throwable)new Exception());
                        }
                        return;
                    }
                    finally {
                        this.xn.unlock();
                    }
                }
                Log.wtf("GoogleApiClientImpl", "Failed to remove pending transform - this may lead to memory leaks!", (Throwable)new Exception());
                return;
            }
            this.xB.yP();
        }
    }
    
    public void gn(final com.google.android.gms.internal.d d) {
        this.xn.lock();
        try {
            if (this.xA == null) {
                this.xA = new HashSet();
            }
            this.xA.add(d);
        }
        finally {
            this.xn.unlock();
        }
    }
}

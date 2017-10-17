// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.a;

import java.util.Iterator;
import java.util.Collection;
import java.util.PriorityQueue;
import android.support.v4.b.a;
import android.graphics.Color;
import java.util.ArrayList;
import java.util.List;
import android.util.TimingLogger;
import java.util.Comparator;

final class i
{
    private static final Comparator Vs;
    final TimingLogger Vr;
    final List Vt;
    final int[] Vu;
    final b[] Vv;
    private final float[] Vw;
    final int[] mColors;
    
    static {
        Vs = new h();
    }
    
    i(final int[] array, final int n, final b[] vv) {
        int i = 0;
        this.Vw = new float[3];
        this.Vr = null;
        this.Vv = vv;
        final int[] vu = new int[32768];
        this.Vu = vu;
        for (int j = 0; j < array.length; ++j) {
            final int aev = aev(array[j]);
            vu[array[j] = aev] = vu[aev] + 1;
        }
        int k = 0;
        int n2 = 0;
        while (k < vu.length) {
            if (vu[k] > 0 && this.aeE(k)) {
                vu[k] = 0;
            }
            if (vu[k] > 0) {
                ++n2;
            }
            ++k;
        }
        final int[] mColors = new int[n2];
        this.mColors = mColors;
        int l = 0;
        int n3 = 0;
        while (l < vu.length) {
            if (vu[l] > 0) {
                final int n4 = n3 + 1;
                mColors[n3] = l;
                n3 = n4;
            }
            ++l;
        }
        if (n2 > n) {
            this.Vt = this.aey(n);
        }
        else {
            this.Vt = new ArrayList();
            while (i < mColors.length) {
                final int n5 = mColors[i];
                this.Vt.add(new d(aew(n5), vu[n5]));
                ++i;
            }
        }
    }
    
    private boolean aeA(final int n, final float[] array) {
        if (this.Vv != null && this.Vv.length > 0) {
            for (int length = this.Vv.length, i = 0; i < length; ++i) {
                if (!this.Vv[i].adC(n, array)) {
                    return true;
                }
            }
        }
        return false;
    }
    
    static int aeB(final int n, final int n2, final int n3) {
        final int n4 = 8;
        final int n5 = 5;
        return Color.rgb(aeD(n, n5, n4), aeD(n2, n5, n4), aeD(n3, n5, n4));
    }
    
    static int aeC(final int n) {
        return n & 0x1F;
    }
    
    private static int aeD(final int n, final int n2, final int n3) {
        int n4;
        if (n3 <= n2) {
            n4 = n >> n2 - n3;
        }
        else {
            n4 = n << n3 - n2;
        }
        return n4 & (1 << n3) - 1;
    }
    
    private boolean aeE(final int n) {
        final int aew = aew(n);
        a.arU(aew, this.Vw);
        return this.aeA(aew, this.Vw);
    }
    
    private boolean aeF(final d d) {
        return this.aeA(d.adM(), d.adI());
    }
    
    static int aes(final int n) {
        return n >> 5 & 0x1F;
    }
    
    private void aet(final PriorityQueue priorityQueue, final int n) {
        while (priorityQueue.size() < n) {
            final f f = priorityQueue.poll();
            if (f == null || !f.aen()) {
                return;
            }
            priorityQueue.offer(f.aei());
            priorityQueue.offer(f);
        }
    }
    
    static void aeu(final int[] array, final int n, int i, final int n2) {
        switch (n) {
            case -2: {
                while (i <= n2) {
                    final int n3 = array[i];
                    array[i] = (aeC(n3) | (aes(n3) << 10 | aex(n3) << 5));
                    ++i;
                }
                break;
            }
            case -1: {
                while (i <= n2) {
                    final int n4 = array[i];
                    array[i] = (aex(n4) | (aeC(n4) << 10 | aes(n4) << 5));
                    ++i;
                }
                break;
            }
        }
    }
    
    private static int aev(final int n) {
        final int n2 = 8;
        final int n3 = 5;
        return aeD(Color.red(n), n2, n3) << 10 | aeD(Color.green(n), n2, n3) << 5 | aeD(Color.blue(n), n2, n3);
    }
    
    private static int aew(final int n) {
        return aeB(aex(n), aes(n), aeC(n));
    }
    
    static int aex(final int n) {
        return n >> 10 & 0x1F;
    }
    
    private List aey(final int n) {
        final PriorityQueue<f> priorityQueue = new PriorityQueue<f>(n, i.Vs);
        priorityQueue.offer(new f(this, 0, this.mColors.length - 1));
        this.aet(priorityQueue, n);
        return this.aez(priorityQueue);
    }
    
    private List aez(final Collection collection) {
        final ArrayList<d> list = new ArrayList<d>(collection.size());
        final Iterator<f> iterator = collection.iterator();
        while (iterator.hasNext()) {
            final d aeh = iterator.next().aeh();
            if (!this.aeF(aeh)) {
                list.add(aeh);
            }
        }
        return list;
    }
    
    List aeG() {
        return this.Vt;
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.a;

import java.util.Iterator;
import java.util.Collection;
import android.graphics.Color;
import java.util.PriorityQueue;
import android.support.v4.b.a;
import java.util.ArrayList;
import java.util.List;
import android.util.TimingLogger;
import java.util.Comparator;

final class i
{
    private static final Comparator TJ;
    final TimingLogger TI;
    final List TK;
    final int[] TL;
    final b[] TM;
    private final float[] TN;
    final int[] mColors;
    
    static {
        TJ = new h();
    }
    
    i(final int[] array, final int n, final b[] tm) {
        int i = 0;
        this.TN = new float[3];
        this.TI = null;
        this.TM = tm;
        final int[] tl = new int[32768];
        this.TL = tl;
        for (int j = 0; j < array.length; ++j) {
            final int adr = adr(array[j]);
            tl[array[j] = adr] = tl[adr] + 1;
        }
        int k = 0;
        int n2 = 0;
        while (k < tl.length) {
            if (tl[k] > 0 && this.adA(k)) {
                tl[k] = 0;
            }
            if (tl[k] > 0) {
                ++n2;
            }
            ++k;
        }
        final int[] mColors = new int[n2];
        this.mColors = mColors;
        int l = 0;
        int n3 = 0;
        while (l < tl.length) {
            if (tl[l] > 0) {
                final int n4 = n3 + 1;
                mColors[n3] = l;
                n3 = n4;
            }
            ++l;
        }
        if (n2 > n) {
            this.TK = this.adu(n);
        }
        else {
            this.TK = new ArrayList();
            while (i < mColors.length) {
                final int n5 = mColors[i];
                this.TK.add(new d(ads(n5), tl[n5]));
                ++i;
            }
        }
    }
    
    private boolean adA(final int n) {
        final int ads = ads(n);
        a.aqW(ads, this.TN);
        return this.adw(ads, this.TN);
    }
    
    private boolean adB(final d d) {
        return this.adw(d.acI(), d.acE());
    }
    
    static int ado(final int n) {
        return n >> 5 & 0x1F;
    }
    
    private void adp(final PriorityQueue priorityQueue, final int n) {
        while (priorityQueue.size() < n) {
            final f f = priorityQueue.poll();
            if (f == null || !f.adj()) {
                return;
            }
            priorityQueue.offer(f.ade());
            priorityQueue.offer(f);
        }
    }
    
    static void adq(final int[] array, final int n, int i, final int n2) {
        switch (n) {
            case -2: {
                while (i <= n2) {
                    final int n3 = array[i];
                    array[i] = (ady(n3) | (ado(n3) << 10 | adt(n3) << 5));
                    ++i;
                }
                break;
            }
            case -1: {
                while (i <= n2) {
                    final int n4 = array[i];
                    array[i] = (adt(n4) | (ady(n4) << 10 | ado(n4) << 5));
                    ++i;
                }
                break;
            }
        }
    }
    
    private static int adr(final int n) {
        final int n2 = 8;
        final int n3 = 5;
        return adz(Color.red(n), n2, n3) << 10 | adz(Color.green(n), n2, n3) << 5 | adz(Color.blue(n), n2, n3);
    }
    
    private static int ads(final int n) {
        return adx(adt(n), ado(n), ady(n));
    }
    
    static int adt(final int n) {
        return n >> 10 & 0x1F;
    }
    
    private List adu(final int n) {
        final PriorityQueue<f> priorityQueue = new PriorityQueue<f>(n, i.TJ);
        priorityQueue.offer(new f(this, 0, this.mColors.length - 1));
        this.adp(priorityQueue, n);
        return this.adv(priorityQueue);
    }
    
    private List adv(final Collection collection) {
        final ArrayList<d> list = new ArrayList<d>(collection.size());
        final Iterator<f> iterator = collection.iterator();
        while (iterator.hasNext()) {
            final d add = iterator.next().add();
            if (!this.adB(add)) {
                list.add(add);
            }
        }
        return list;
    }
    
    private boolean adw(final int n, final float[] array) {
        if (this.TM != null && this.TM.length > 0) {
            for (int length = this.TM.length, i = 0; i < length; ++i) {
                if (!this.TM[i].acy(n, array)) {
                    return true;
                }
            }
        }
        return false;
    }
    
    static int adx(final int n, final int n2, final int n3) {
        final int n4 = 8;
        final int n5 = 5;
        return Color.rgb(adz(n, n5, n4), adz(n2, n5, n4), adz(n3, n5, n4));
    }
    
    static int ady(final int n) {
        return n & 0x1F;
    }
    
    private static int adz(final int n, final int n2, final int n3) {
        int n4;
        if (n3 <= n2) {
            n4 = n >> n2 - n3;
        }
        else {
            n4 = n << n3 - n2;
        }
        return n4 & (1 << n3) - 1;
    }
    
    List adC() {
        return this.TK;
    }
}

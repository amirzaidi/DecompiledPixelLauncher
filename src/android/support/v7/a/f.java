// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.a;

import java.util.Arrays;

class f
{
    private int Vh;
    private int Vi;
    private int Vj;
    private int Vk;
    private int Vl;
    private int Vm;
    private int Vn;
    private int Vo;
    private int Vp;
    final /* synthetic */ i Vq;
    
    f(final i vq, final int vm, final int vi) {
        this.Vq = vq;
        this.Vm = vm;
        this.Vi = vi;
        this.aem();
    }
    
    final int aeg() {
        final int aej = this.aej();
        final int[] mColors = this.Vq.mColors;
        final int[] vu = this.Vq.Vu;
        i.aeu(mColors, aej, this.Vm, this.Vi);
        Arrays.sort(mColors, this.Vm, this.Vi + 1);
        i.aeu(mColors, aej, this.Vm, this.Vi);
        final int n = this.Vp / 2;
        int i = this.Vm;
        int n2 = 0;
        while (i <= this.Vi) {
            n2 += vu[mColors[i]];
            if (n2 >= n) {
                return Math.min(this.Vi - 1, i);
            }
            ++i;
        }
        return this.Vm;
    }
    
    final d aeh() {
        int n = 0;
        final int[] mColors = this.Vq.mColors;
        final int[] vu = this.Vq.Vu;
        int i = this.Vm;
        int n2 = 0;
        int n3 = 0;
        int n4 = 0;
        while (i <= this.Vi) {
            final int n5 = mColors[i];
            final int n6 = vu[n5];
            n += n6;
            n4 += android.support.v7.a.i.aex(n5) * n6;
            n3 += android.support.v7.a.i.aes(n5) * n6;
            n2 += android.support.v7.a.i.aeC(n5) * n6;
            ++i;
        }
        return new d(android.support.v7.a.i.aeB(Math.round(n4 / n), Math.round(n3 / n), Math.round(n2 / n)), n);
    }
    
    final f aei() {
        if (this.aen()) {
            final int aeg = this.aeg();
            final f f = new f(this.Vq, aeg + 1, this.Vi);
            this.Vi = aeg;
            this.aem();
            return f;
        }
        throw new IllegalStateException("Can not split a box with only 1 color");
    }
    
    final int aej() {
        final int n = this.Vk - this.Vn;
        final int n2 = this.Vl - this.Vj;
        final int n3 = this.Vo - this.Vh;
        if (n >= n2 && n >= n3) {
            return -3;
        }
        if (n2 >= n && n2 >= n3) {
            return -2;
        }
        return -1;
    }
    
    final int aek() {
        return (this.Vk - this.Vn + 1) * (this.Vl - this.Vj + 1) * (this.Vo - this.Vh + 1);
    }
    
    final int ael() {
        return this.Vi + 1 - this.Vm;
    }
    
    final void aem() {
        final int n = -1 >>> 1;
        int vk = -1 << -1;
        final int[] mColors = this.Vq.mColors;
        final int[] vu = this.Vq.Vu;
        int vp = 0;
        int i = this.Vm;
        int vo = vk;
        int vn = n;
        int vj = n;
        int vh = n;
        int vl = vk;
        while (i <= this.Vi) {
            final int n2 = mColors[i];
            vp += vu[n2];
            final int aex = android.support.v7.a.i.aex(n2);
            final int aes = android.support.v7.a.i.aes(n2);
            final int aeC = android.support.v7.a.i.aeC(n2);
            if (aex > vk) {
                vk = aex;
            }
            if (aex < vn) {
                vn = aex;
            }
            if (aes > vl) {
                vl = aes;
            }
            if (aes < vj) {
                vj = aes;
            }
            if (aeC > vo) {
                vo = aeC;
            }
            if (aeC < vh) {
                vh = aeC;
            }
            ++i;
        }
        this.Vn = vn;
        this.Vk = vk;
        this.Vj = vj;
        this.Vl = vl;
        this.Vh = vh;
        this.Vo = vo;
        this.Vp = vp;
    }
    
    final boolean aen() {
        int n = 1;
        if (this.ael() <= n) {
            n = 0;
        }
        return n != 0;
    }
}

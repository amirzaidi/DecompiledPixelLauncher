// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import java.util.List;

class ay
{
    final Y Sz;
    
    ay(final Y sz) {
        this.Sz = sz;
    }
    
    private void abN(final List list, final int n, final aK ak, final int n2, final aK ak2) {
        int n3 = 0;
        if (ak.SR < ak2.SQ) {
            n3 = -1;
        }
        if (ak.SQ < ak2.SQ) {
            ++n3;
        }
        if (ak2.SQ <= ak.SQ) {
            ak.SQ += ak2.SR;
        }
        if (ak2.SQ <= ak.SR) {
            ak.SR += ak2.SR;
        }
        ak2.SQ += n3;
        list.set(n, ak2);
        list.set(n2, ak);
    }
    
    private void abO(final List list, final int n, final int n2) {
        final aK ak = list.get(n);
        final aK ak2 = list.get(n2);
        switch (ak2.SO) {
            case 2: {
                this.abM(list, n, ak, n2, ak2);
                break;
            }
            case 1: {
                this.abN(list, n, ak, n2, ak2);
                break;
            }
            case 4: {
                this.abP(list, n, ak, n2, ak2);
                break;
            }
        }
    }
    
    private int abQ(final List list) {
        int n = 0;
        float n2 = 0.0f;
        int n3;
        float n4;
        for (int i = list.size() - 1; i >= 0; --i, n = n3, n2 = n4) {
            if (list.get(i).SO != 8) {
                n3 = 1;
                n4 = Float.MIN_VALUE;
            }
            else {
                if (n != 0) {
                    return i;
                }
                n3 = n;
                n4 = n2;
            }
        }
        return -1;
    }
    
    void abM(final List list, final int n, final aK ak, final int n2, final aK ak2) {
        final int so = 2;
        final boolean sr = true;
        boolean b = false;
        int n3;
        if (ak.SQ >= ak.SR) {
            if (ak2.SQ == ak.SR + 1 && ak2.SR == ak.SQ - ak.SR) {
                b = sr;
                n3 = (sr ? 1 : 0);
            }
            else {
                n3 = 0;
                b = sr;
            }
        }
        else {
            n3 = ((ak2.SQ == ak.SQ && ak2.SR == ak.SR - ak.SQ && sr) ? 1 : 0);
        }
        if (ak.SR >= ak2.SQ) {
            if (ak.SR < ak2.SQ + ak2.SR) {
                --ak2.SR;
                ak.SO = so;
                ak.SR = (sr ? 1 : 0);
                if (ak2.SR == 0) {
                    list.remove(n2);
                    this.Sz.YY(ak2);
                }
                return;
            }
        }
        else {
            --ak2.SQ;
        }
        aK yx;
        if (ak.SQ > ak2.SQ) {
            if (ak.SQ >= ak2.SQ + ak2.SR) {
                yx = null;
            }
            else {
                yx = this.Sz.YX(so, ak.SQ + 1, ak2.SQ + ak2.SR - ak.SQ, null);
                ak2.SR = ak.SQ - ak2.SQ;
            }
        }
        else {
            ++ak2.SQ;
            yx = null;
        }
        if (n3 == 0) {
            if (!b) {
                if (yx != null) {
                    if (ak.SQ >= yx.SQ) {
                        ak.SQ -= yx.SR;
                    }
                    if (ak.SR >= yx.SQ) {
                        ak.SR -= yx.SR;
                    }
                }
                if (ak.SQ >= ak2.SQ) {
                    ak.SQ -= ak2.SR;
                }
                if (ak.SR >= ak2.SQ) {
                    ak.SR -= ak2.SR;
                }
            }
            else {
                if (yx != null) {
                    if (ak.SQ > yx.SQ) {
                        ak.SQ -= yx.SR;
                    }
                    if (ak.SR > yx.SQ) {
                        ak.SR -= yx.SR;
                    }
                }
                if (ak.SQ > ak2.SQ) {
                    ak.SQ -= ak2.SR;
                }
                if (ak.SR > ak2.SQ) {
                    ak.SR -= ak2.SR;
                }
            }
            list.set(n, ak2);
            if (ak.SQ == ak.SR) {
                list.remove(n2);
            }
            else {
                list.set(n2, ak);
            }
            if (yx != null) {
                list.add(n, yx);
            }
            return;
        }
        list.set(n, ak2);
        list.remove(n2);
        this.Sz.YY(ak);
    }
    
    void abP(final List list, final int n, final aK ak, final int n2, final aK ak2) {
        final int n3 = 4;
        aK yx = null;
        aK yx2;
        if (ak.SR >= ak2.SQ) {
            if (ak.SR >= ak2.SQ + ak2.SR) {
                yx2 = null;
            }
            else {
                --ak2.SR;
                yx2 = this.Sz.YX(n3, ak.SQ, 1, ak2.SP);
            }
        }
        else {
            --ak2.SQ;
            yx2 = null;
        }
        if (ak.SQ > ak2.SQ) {
            if (ak.SQ < ak2.SQ + ak2.SR) {
                final int n4 = ak2.SQ + ak2.SR - ak.SQ;
                yx = this.Sz.YX(n3, ak.SQ + 1, n4, ak2.SP);
                ak2.SR -= n4;
            }
        }
        else {
            ++ak2.SQ;
        }
        list.set(n2, ak);
        if (ak2.SR <= 0) {
            list.remove(n);
            this.Sz.YY(ak2);
        }
        else {
            list.set(n, ak2);
        }
        if (yx2 != null) {
            list.add(n, yx2);
        }
        if (yx != null) {
            list.add(n, yx);
        }
    }
    
    void abR(final List list) {
        while (true) {
            final int abQ = this.abQ(list);
            if (abQ == -1) {
                break;
            }
            this.abO(list, abQ, abQ + 1);
        }
    }
}

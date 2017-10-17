// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import java.util.List;

class ay
{
    final Y Ui;
    
    ay(final Y ui) {
        this.Ui = ui;
    }
    
    private void acO(final List list, final int n, final aK ak, final int n2, final aK ak2) {
        int n3 = 0;
        if (ak.UA < ak2.Uz) {
            n3 = -1;
        }
        if (ak.Uz < ak2.Uz) {
            ++n3;
        }
        if (ak2.Uz <= ak.Uz) {
            ak.Uz += ak2.UA;
        }
        if (ak2.Uz <= ak.UA) {
            ak.UA += ak2.UA;
        }
        ak2.Uz += n3;
        list.set(n, ak2);
        list.set(n2, ak);
    }
    
    private void acP(final List list, final int n, final int n2) {
        final aK ak = list.get(n);
        final aK ak2 = list.get(n2);
        switch (ak2.Ux) {
            case 2: {
                this.acN(list, n, ak, n2, ak2);
                break;
            }
            case 1: {
                this.acO(list, n, ak, n2, ak2);
                break;
            }
            case 4: {
                this.acQ(list, n, ak, n2, ak2);
                break;
            }
        }
    }
    
    private int acR(final List list) {
        int n = 0;
        float n2 = 0.0f;
        int n3;
        float n4;
        for (int i = list.size() - 1; i >= 0; --i, n = n3, n2 = n4) {
            if (list.get(i).Ux != 8) {
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
    
    void acN(final List list, final int n, final aK ak, final int n2, final aK ak2) {
        final int ux = 2;
        final boolean ua = true;
        boolean b = false;
        int n3;
        if (ak.Uz >= ak.UA) {
            if (ak2.Uz == ak.UA + 1 && ak2.UA == ak.Uz - ak.UA) {
                b = ua;
                n3 = (ua ? 1 : 0);
            }
            else {
                n3 = 0;
                b = ua;
            }
        }
        else {
            n3 = ((ak2.Uz == ak.Uz && ak2.UA == ak.UA - ak.Uz && ua) ? 1 : 0);
        }
        if (ak.UA >= ak2.Uz) {
            if (ak.UA < ak2.Uz + ak2.UA) {
                --ak2.UA;
                ak.Ux = ux;
                ak.UA = (ua ? 1 : 0);
                if (ak2.UA == 0) {
                    list.remove(n2);
                    this.Ui.aaa(ak2);
                }
                return;
            }
        }
        else {
            --ak2.Uz;
        }
        aK zz;
        if (ak.Uz > ak2.Uz) {
            if (ak.Uz >= ak2.Uz + ak2.UA) {
                zz = null;
            }
            else {
                zz = this.Ui.ZZ(ux, ak.Uz + 1, ak2.Uz + ak2.UA - ak.Uz, null);
                ak2.UA = ak.Uz - ak2.Uz;
            }
        }
        else {
            ++ak2.Uz;
            zz = null;
        }
        if (n3 == 0) {
            if (!b) {
                if (zz != null) {
                    if (ak.Uz >= zz.Uz) {
                        ak.Uz -= zz.UA;
                    }
                    if (ak.UA >= zz.Uz) {
                        ak.UA -= zz.UA;
                    }
                }
                if (ak.Uz >= ak2.Uz) {
                    ak.Uz -= ak2.UA;
                }
                if (ak.UA >= ak2.Uz) {
                    ak.UA -= ak2.UA;
                }
            }
            else {
                if (zz != null) {
                    if (ak.Uz > zz.Uz) {
                        ak.Uz -= zz.UA;
                    }
                    if (ak.UA > zz.Uz) {
                        ak.UA -= zz.UA;
                    }
                }
                if (ak.Uz > ak2.Uz) {
                    ak.Uz -= ak2.UA;
                }
                if (ak.UA > ak2.Uz) {
                    ak.UA -= ak2.UA;
                }
            }
            list.set(n, ak2);
            if (ak.Uz == ak.UA) {
                list.remove(n2);
            }
            else {
                list.set(n2, ak);
            }
            if (zz != null) {
                list.add(n, zz);
            }
            return;
        }
        list.set(n, ak2);
        list.remove(n2);
        this.Ui.aaa(ak);
    }
    
    void acQ(final List list, final int n, final aK ak, final int n2, final aK ak2) {
        final int n3 = 4;
        aK zz = null;
        aK zz2;
        if (ak.UA >= ak2.Uz) {
            if (ak.UA >= ak2.Uz + ak2.UA) {
                zz2 = null;
            }
            else {
                --ak2.UA;
                zz2 = this.Ui.ZZ(n3, ak.Uz, 1, ak2.Uy);
            }
        }
        else {
            --ak2.Uz;
            zz2 = null;
        }
        if (ak.Uz > ak2.Uz) {
            if (ak.Uz < ak2.Uz + ak2.UA) {
                final int n4 = ak2.Uz + ak2.UA - ak.Uz;
                zz = this.Ui.ZZ(n3, ak.Uz + 1, n4, ak2.Uy);
                ak2.UA -= n4;
            }
        }
        else {
            ++ak2.Uz;
        }
        list.set(n2, ak);
        if (ak2.UA <= 0) {
            list.remove(n);
            this.Ui.aaa(ak2);
        }
        else {
            list.set(n, ak2);
        }
        if (zz2 != null) {
            list.add(n, zz2);
        }
        if (zz != null) {
            list.add(n, zz);
        }
    }
    
    void acS(final List list) {
        while (true) {
            final int acR = this.acR(list);
            if (acR == -1) {
                break;
            }
            this.acP(list, acR, acR + 1);
        }
    }
}

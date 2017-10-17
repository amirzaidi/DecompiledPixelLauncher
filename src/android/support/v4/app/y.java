// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.content.Context;
import java.util.ArrayList;
import android.app.Notification;
import android.os.Bundle;
import android.widget.RemoteViews;
import android.graphics.Bitmap;
import android.app.PendingIntent;

public class Y
{
    public CharSequence ZA;
    PendingIntent ZB;
    public Bitmap ZC;
    public int ZD;
    RemoteViews ZE;
    boolean ZF;
    boolean ZG;
    boolean ZH;
    String ZI;
    int ZJ;
    Bundle ZK;
    int ZL;
    String ZM;
    public Notification ZN;
    int ZO;
    public boolean ZP;
    RemoteViews ZQ;
    boolean ZR;
    PendingIntent ZS;
    Notification ZT;
    public CharSequence ZU;
    RemoteViews ZV;
    long ZW;
    public z ZX;
    boolean ZY;
    String ZZ;
    int Zp;
    public ArrayList Zq;
    String Zr;
    public ArrayList Zs;
    String Zt;
    public CharSequence Zu;
    public CharSequence Zv;
    boolean Zw;
    RemoteViews Zx;
    int Zy;
    private int Zz;
    public CharSequence[] aaa;
    int mBadgeIcon;
    public Context mContext;
    
    public Y(final Context context) {
        this(context, null);
    }
    
    public Y(final Context mContext, final String zm) {
        this.ZR = true;
        this.Zq = new ArrayList();
        this.Zw = false;
        this.Zp = 0;
        this.ZJ = 0;
        this.mBadgeIcon = 0;
        this.Zz = 0;
        this.ZN = new Notification();
        this.mContext = mContext;
        this.ZM = zm;
        this.ZN.when = System.currentTimeMillis();
        this.ZN.audioStreamType = -1;
        this.ZO = 0;
        this.Zs = new ArrayList();
    }
    
    private void amD(final int n, final boolean b) {
        if (!b) {
            final Notification zn = this.ZN;
            zn.flags &= ~n;
        }
        else {
            final Notification zn2 = this.ZN;
            zn2.flags |= n;
        }
    }
    
    protected static CharSequence amy(CharSequence subSequence) {
        final int n = 5120;
        if (subSequence != null) {
            if (subSequence.length() > n) {
                subSequence = subSequence.subSequence(0, n);
            }
            return subSequence;
        }
        return subSequence;
    }
    
    protected CharSequence amA() {
        return this.Zu;
    }
    
    public Y amC(final CharSequence charSequence) {
        this.ZN.tickerText = amy(charSequence);
        return this;
    }
    
    public Y amE(final boolean b) {
        this.amD(16, b);
        return this;
    }
    
    public Y amF(final PendingIntent zs) {
        this.ZS = zs;
        return this;
    }
    
    protected ar amG() {
        return new ar();
    }
    
    public Y amu(final int icon) {
        this.ZN.icon = icon;
        return this;
    }
    
    public Y amv(final long when) {
        this.ZN.when = when;
        return this;
    }
    
    public Y amw(final CharSequence charSequence) {
        this.Zv = amy(charSequence);
        return this;
    }
    
    protected CharSequence amx() {
        return this.Zv;
    }
    
    public Y amz(final CharSequence charSequence) {
        this.Zu = amy(charSequence);
        return this;
    }
    
    public Notification build() {
        return i.Xg.ajY(this, this.amG());
    }
}

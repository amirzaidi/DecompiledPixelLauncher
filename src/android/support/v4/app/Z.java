// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.content.Context;
import android.app.Notification;
import android.os.Bundle;
import android.graphics.Bitmap;
import android.app.PendingIntent;
import android.widget.RemoteViews;
import java.util.ArrayList;

public class Z
{
    int aaU;
    public ArrayList aaV;
    String aaW;
    public ArrayList aaX;
    String aaY;
    public CharSequence aaZ;
    RemoteViews abA;
    long abB;
    public A abC;
    boolean abD;
    String abE;
    public CharSequence[] abF;
    public CharSequence aba;
    boolean abb;
    RemoteViews abc;
    int abd;
    private int abe;
    public CharSequence abf;
    PendingIntent abg;
    public Bitmap abh;
    public int abi;
    RemoteViews abj;
    boolean abk;
    boolean abl;
    boolean abm;
    String abn;
    int abo;
    Bundle abp;
    int abq;
    String abr;
    public Notification abs;
    int abt;
    public boolean abu;
    RemoteViews abv;
    boolean abw;
    PendingIntent abx;
    Notification aby;
    public CharSequence abz;
    int mBadgeIcon;
    public Context mContext;
    
    public Z(final Context context) {
        this(context, null);
    }
    
    public Z(final Context mContext, final String abr) {
        this.abw = true;
        this.aaV = new ArrayList();
        this.abb = false;
        this.aaU = 0;
        this.abo = 0;
        this.mBadgeIcon = 0;
        this.abe = 0;
        this.abs = new Notification();
        this.mContext = mContext;
        this.abr = abr;
        this.abs.when = System.currentTimeMillis();
        this.abs.audioStreamType = -1;
        this.abt = 0;
        this.aaX = new ArrayList();
    }
    
    protected static CharSequence anM(CharSequence subSequence) {
        final int n = 5120;
        if (subSequence != null) {
            if (subSequence.length() > n) {
                subSequence = subSequence.subSequence(0, n);
            }
            return subSequence;
        }
        return subSequence;
    }
    
    private void anQ(final int n, final boolean b) {
        if (!b) {
            final Notification abs = this.abs;
            abs.flags &= ~n;
        }
        else {
            final Notification abs2 = this.abs;
            abs2.flags |= n;
        }
    }
    
    public Z anJ(final int icon) {
        this.abs.icon = icon;
        return this;
    }
    
    public Z anK(final long when) {
        this.abs.when = when;
        return this;
    }
    
    public Z anL(final CharSequence charSequence) {
        this.aba = anM(charSequence);
        return this;
    }
    
    public Z anN(final CharSequence charSequence) {
        this.aaZ = anM(charSequence);
        return this;
    }
    
    public Z anP(final CharSequence charSequence) {
        this.abs.tickerText = anM(charSequence);
        return this;
    }
    
    public Z anR(final boolean b) {
        this.anQ(16, b);
        return this;
    }
    
    public Z anS(final PendingIntent abx) {
        this.abx = abx;
        return this;
    }
    
    protected aq anT() {
        return new aq();
    }
    
    public Notification build() {
        return k.YQ.all(this, this.anT());
    }
}

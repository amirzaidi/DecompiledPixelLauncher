// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.content.IntentSender;
import android.view.MenuItem;
import android.os.Parcelable;
import android.content.res.Configuration;
import android.os.Build$VERSION;
import android.util.Log;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.app.Activity;
import android.os.Bundle;
import android.content.Intent;
import android.util.AttributeSet;
import android.content.Context;
import android.view.Menu;
import android.view.View;
import android.os.Handler;

public class a extends x
{
    boolean XD;
    boolean XE;
    android.support.v4.a.a XF;
    boolean XG;
    final J XH;
    boolean XI;
    int XJ;
    final Handler mHandler;
    boolean mStopped;
    
    public a() {
        final boolean b = true;
        this.mHandler = new h(this);
        this.XH = J.amA(new u(this));
        this.mStopped = b;
        this.XG = b;
    }
    
    private int ajn(final g g) {
        final char c = (char)(-2);
        if (this.XF.size() < c) {
            while (this.XF.ahR(this.XJ) >= 0) {
                this.XJ = (this.XJ + 1) % c;
            }
            final int xj = this.XJ;
            this.XF.ahS(xj, g.XV);
            this.XJ = (this.XJ + 1) % c;
            return xj;
        }
        throw new IllegalStateException("Too many pending Fragment activity results.");
    }
    
    public Object ajf() {
        return null;
    }
    
    void ajg(final boolean xe) {
        final int xg = 1;
        if (this.XG) {
            if (xe) {
                this.XH.alX();
                this.XH.alY(xg != 0);
            }
        }
        else {
            this.XG = (xg != 0);
            this.XE = xe;
            this.mHandler.removeMessages(xg);
            this.ajo();
        }
    }
    
    public void ajh() {
        this.invalidateOptionsMenu();
    }
    
    public aW aji() {
        return this.XH.amm();
    }
    
    protected boolean ajj(final View view, final Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }
    
    protected void ajk() {
        this.XH.amw();
    }
    
    public void ajl(final g g) {
    }
    
    final View ajm(final View view, final String s, final Context context, final AttributeSet set) {
        return this.XH.onCreateView(view, s, context, set);
    }
    
    void ajo() {
        this.XH.alY(this.XE);
        this.XH.ams();
    }
    
    public void ajp(final g g, final Intent intent, final int n, final Bundle bundle) {
        final int n2 = -1;
        this.Zz = true;
        Label_0062: {
            if (n == n2) {
                break Label_0062;
            }
            try {
                P.amC(n);
                b.ajq(this, intent, (this.ajn(g) + 1 << 16) + ((char)(-1) & n), bundle);
                return;
                b.ajq(this, intent, -1, bundle);
            }
            finally {
                this.Zz = false;
            }
        }
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        super.dump(s, fileDescriptor, printWriter, array);
        printWriter.print(s);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        final String string = s + "  ";
        printWriter.print(string);
        printWriter.print("mCreated=");
        printWriter.print(this.XD);
        printWriter.print("mResumed=");
        printWriter.print(this.XI);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        printWriter.print(" mReallyStopped=");
        printWriter.println(this.XG);
        this.XH.aml(string, fileDescriptor, printWriter, array);
        this.XH.amm().dump(s, fileDescriptor, printWriter, array);
    }
    
    protected void onActivityResult(final int n, final int n2, final Intent intent) {
        this.XH.amp();
        final int n3 = n >> 16;
        if (n3 == 0) {
            super.onActivityResult(n, n2, intent);
            return;
        }
        final int n4 = n3 - 1;
        final String s = (String)this.XF.get(n4);
        this.XF.ahP(n4);
        if (s != null) {
            final g alZ = this.XH.alZ(s);
            if (alZ != null) {
                alZ.onActivityResult((char)(-1) & n, n2, intent);
            }
            else {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: " + s);
            }
            return;
        }
        Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
    }
    
    public void onBackPressed() {
        final aW amm = this.XH.amm();
        final boolean aqT = amm.aqT();
        if (aqT && Build$VERSION.SDK_INT <= 25) {
            return;
        }
        if (aqT || !amm.apn()) {
            super.onBackPressed();
        }
    }
    
    public void onConfigurationChanged(final Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.XH.amx(configuration);
    }
    
    protected void onCreate(final Bundle bundle) {
        this.XH.amk(null);
        super.onCreate(bundle);
        final v v = (v)this.getLastNonConfigurationInstance();
        if (v != null) {
            this.XH.ame(v.Zx);
        }
        if (bundle != null) {
            final Parcelable parcelable = bundle.getParcelable("android:support:fragments");
            final J xh = this.XH;
            ax zw;
            if (v == null) {
                zw = null;
            }
            else {
                zw = v.Zw;
            }
            xh.amv(parcelable, zw);
            if (bundle.containsKey("android:support:next_request_index")) {
                this.XJ = bundle.getInt("android:support:next_request_index");
                final int[] intArray = bundle.getIntArray("android:support:request_indicies");
                final String[] stringArray = bundle.getStringArray("android:support:request_fragment_who");
                if (intArray != null && stringArray != null && intArray.length == stringArray.length) {
                    this.XF = new android.support.v4.a.a(intArray.length);
                    for (int i = 0; i < intArray.length; ++i) {
                        this.XF.ahS(intArray[i], stringArray[i]);
                    }
                }
                else {
                    Log.w("FragmentActivity", "Invalid requestCode mapping in savedInstanceState.");
                }
            }
        }
        if (this.XF == null) {
            this.XF = new android.support.v4.a.a();
            this.XJ = 0;
        }
        this.XH.amh();
    }
    
    public boolean onCreatePanelMenu(final int n, final Menu menu) {
        if (n != 0) {
            return super.onCreatePanelMenu(n, menu);
        }
        return super.onCreatePanelMenu(n, menu) | this.XH.amg(menu, this.getMenuInflater());
    }
    
    protected void onDestroy() {
        super.onDestroy();
        this.ajg(false);
        this.XH.amo();
        this.XH.amb();
    }
    
    public void onLowMemory() {
        super.onLowMemory();
        this.XH.amu();
    }
    
    public boolean onMenuItemSelected(final int n, final MenuItem menuItem) {
        if (super.onMenuItemSelected(n, menuItem)) {
            return true;
        }
        switch (n) {
            default: {
                return false;
            }
            case 0: {
                return this.XH.amj(menuItem);
            }
            case 6: {
                return this.XH.amd(menuItem);
            }
        }
    }
    
    public void onMultiWindowModeChanged(final boolean b) {
        this.XH.amz(b);
    }
    
    protected void onNewIntent(final Intent intent) {
        super.onNewIntent(intent);
        this.XH.amp();
    }
    
    public void onPanelClosed(final int n, final Menu menu) {
        switch (n) {
            case 0: {
                this.XH.alV(menu);
                break;
            }
        }
        super.onPanelClosed(n, menu);
    }
    
    protected void onPause() {
        final int n = 2;
        super.onPause();
        this.XI = false;
        if (this.mHandler.hasMessages(n)) {
            this.mHandler.removeMessages(n);
            this.ajk();
        }
        this.XH.amf();
    }
    
    public void onPictureInPictureModeChanged(final boolean b) {
        this.XH.alU(b);
    }
    
    protected void onPostResume() {
        super.onPostResume();
        this.mHandler.removeMessages(2);
        this.ajk();
        this.XH.amy();
    }
    
    public boolean onPreparePanel(final int n, final View view, final Menu menu) {
        if (n == 0 && menu != null) {
            return this.ajj(view, menu) | this.XH.amc(menu);
        }
        return super.onPreparePanel(n, view, menu);
    }
    
    public void onRequestPermissionsResult(final int n, final String[] array, final int[] array2) {
        final char c = (char)(-1);
        final int n2 = n >> 16 & c;
        if (n2 != 0) {
            final int n3 = n2 - 1;
            final String s = (String)this.XF.get(n3);
            this.XF.ahP(n3);
            if (s == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            final g alZ = this.XH.alZ(s);
            if (alZ != null) {
                alZ.onRequestPermissionsResult(n & c, array, array2);
            }
            else {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: " + s);
            }
        }
    }
    
    protected void onResume() {
        super.onResume();
        this.mHandler.sendEmptyMessage(2);
        this.XI = true;
        this.XH.amy();
    }
    
    public final Object onRetainNonConfigurationInstance() {
        if (this.mStopped) {
            this.ajg(true);
        }
        final Object ajf = this.ajf();
        final ax amr = this.XH.amr();
        final android.support.v4.a.b ama = this.XH.ama();
        if (amr == null && ama == null && ajf == null) {
            return null;
        }
        final v v = new v();
        v.Zy = ajf;
        v.Zw = amr;
        v.Zx = ama;
        return v;
    }
    
    protected void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        final Parcelable amn = this.XH.amn();
        if (amn != null) {
            bundle.putParcelable("android:support:fragments", amn);
        }
        if (this.XF.size() > 0) {
            bundle.putInt("android:support:next_request_index", this.XJ);
            final int[] array = new int[this.XF.size()];
            final String[] array2 = new String[this.XF.size()];
            for (int i = 0; i < this.XF.size(); ++i) {
                array[i] = this.XF.ahQ(i);
                array2[i] = (String)this.XF.ahO(i);
            }
            bundle.putIntArray("android:support:request_indicies", array);
            bundle.putStringArray("android:support:request_fragment_who", array2);
        }
    }
    
    protected void onStart() {
        final int xd = 1;
        super.onStart();
        this.mStopped = false;
        this.XG = false;
        this.mHandler.removeMessages(xd);
        if (!this.XD) {
            this.XD = (xd != 0);
            this.XH.amt();
        }
        this.XH.amp();
        this.XH.amy();
        this.XH.alX();
        this.XH.alW();
        this.XH.amq();
    }
    
    public void onStateNotSaved() {
        this.XH.amp();
    }
    
    protected void onStop() {
        final int mStopped = 1;
        super.onStop();
        this.mStopped = (mStopped != 0);
        this.mHandler.sendEmptyMessage(mStopped);
        this.XH.ami();
    }
    
    public void startActivityForResult(final Intent intent, final int n) {
        if (!this.Zz && n != -1) {
            P.amC(n);
        }
        super.startActivityForResult(intent, n);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.content.IntentSender;
import android.support.v4.a.k;
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

public class a extends w
{
    boolean VU;
    boolean VV;
    android.support.v4.a.a VW;
    boolean VX;
    final H VY;
    boolean VZ;
    int Wa;
    final Handler mHandler;
    boolean mStopped;
    
    public a() {
        final boolean b = true;
        this.mHandler = new f(this);
        this.VY = H.all(new t(this));
        this.mStopped = b;
        this.VX = b;
    }
    
    private int aid(final e e) {
        final char c = (char)(-2);
        if (this.VW.size() < c) {
            while (this.VW.agH(this.Wa) >= 0) {
                this.Wa = (this.Wa + 1) % c;
            }
            final int wa = this.Wa;
            this.VW.agI(wa, e.Wl);
            this.Wa = (this.Wa + 1) % c;
            return wa;
        }
        throw new IllegalStateException("Too many pending Fragment activity results.");
    }
    
    public Object ahV() {
        return null;
    }
    
    void ahW(final boolean vv) {
        final int vx = 1;
        if (this.VX) {
            if (vv) {
                this.VY.akI();
                this.VY.akJ(vx != 0);
            }
        }
        else {
            this.VX = (vx != 0);
            this.VV = vv;
            this.mHandler.removeMessages(vx);
            this.aie();
        }
    }
    
    public void ahX() {
        this.invalidateOptionsMenu();
    }
    
    public bb ahY() {
        return this.VY.akX();
    }
    
    protected boolean ahZ(final View view, final Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }
    
    protected void aia() {
        this.VY.alh();
    }
    
    public void aib(final e e) {
    }
    
    final View aic(final View view, final String s, final Context context, final AttributeSet set) {
        return this.VY.onCreateView(view, s, context, set);
    }
    
    void aie() {
        this.VY.akJ(this.VV);
        this.VY.ald();
    }
    
    public void aif(final e e, final Intent intent, final int n, final Bundle bundle) {
        final int n2 = -1;
        this.XS = true;
        Label_0062: {
            if (n == n2) {
                break Label_0062;
            }
            try {
                N.aln(n);
                ab.amI(this, intent, (this.aid(e) + 1 << 16) + ((char)(-1) & n), bundle);
                return;
                ab.amI(this, intent, -1, bundle);
            }
            finally {
                this.XS = false;
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
        printWriter.print(this.VU);
        printWriter.print("mResumed=");
        printWriter.print(this.VZ);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        printWriter.print(" mReallyStopped=");
        printWriter.println(this.VX);
        this.VY.akW(string, fileDescriptor, printWriter, array);
        this.VY.akX().dump(s, fileDescriptor, printWriter, array);
    }
    
    protected void onActivityResult(final int n, final int n2, final Intent intent) {
        this.VY.ala();
        final int n3 = n >> 16;
        if (n3 == 0) {
            super.onActivityResult(n, n2, intent);
            return;
        }
        final int n4 = n3 - 1;
        final String s = (String)this.VW.agF(n4);
        this.VW.agE(n4);
        if (s != null) {
            final e akK = this.VY.akK(s);
            if (akK != null) {
                akK.onActivityResult((char)(-1) & n, n2, intent);
            }
            else {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: " + s);
            }
            return;
        }
        Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
    }
    
    public void onBackPressed() {
        final bb akX = this.VY.akX();
        final boolean apS = akX.apS();
        if (apS && Build$VERSION.SDK_INT <= 25) {
            return;
        }
        if (apS || !akX.aom()) {
            super.onBackPressed();
        }
    }
    
    public void onConfigurationChanged(final Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.VY.ali(configuration);
    }
    
    protected void onCreate(final Bundle bundle) {
        this.VY.akV(null);
        super.onCreate(bundle);
        final u u = (u)this.getLastNonConfigurationInstance();
        if (u != null) {
            this.VY.akP(u.XQ);
        }
        if (bundle != null) {
            final Parcelable parcelable = bundle.getParcelable("android:support:fragments");
            final H vy = this.VY;
            az xp;
            if (u == null) {
                xp = null;
            }
            else {
                xp = u.XP;
            }
            vy.alg(parcelable, xp);
            if (bundle.containsKey("android:support:next_request_index")) {
                this.Wa = bundle.getInt("android:support:next_request_index");
                final int[] intArray = bundle.getIntArray("android:support:request_indicies");
                final String[] stringArray = bundle.getStringArray("android:support:request_fragment_who");
                if (intArray != null && stringArray != null && intArray.length == stringArray.length) {
                    this.VW = new android.support.v4.a.a(intArray.length);
                    for (int i = 0; i < intArray.length; ++i) {
                        this.VW.agI(intArray[i], stringArray[i]);
                    }
                }
                else {
                    Log.w("FragmentActivity", "Invalid requestCode mapping in savedInstanceState.");
                }
            }
        }
        if (this.VW == null) {
            this.VW = new android.support.v4.a.a();
            this.Wa = 0;
        }
        this.VY.akS();
    }
    
    public boolean onCreatePanelMenu(final int n, final Menu menu) {
        if (n != 0) {
            return super.onCreatePanelMenu(n, menu);
        }
        return super.onCreatePanelMenu(n, menu) | this.VY.akR(menu, this.getMenuInflater());
    }
    
    protected void onDestroy() {
        super.onDestroy();
        this.ahW(false);
        this.VY.akZ();
        this.VY.akM();
    }
    
    public void onLowMemory() {
        super.onLowMemory();
        this.VY.alf();
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
                return this.VY.akU(menuItem);
            }
            case 6: {
                return this.VY.akO(menuItem);
            }
        }
    }
    
    public void onMultiWindowModeChanged(final boolean b) {
        this.VY.alk(b);
    }
    
    protected void onNewIntent(final Intent intent) {
        super.onNewIntent(intent);
        this.VY.ala();
    }
    
    public void onPanelClosed(final int n, final Menu menu) {
        switch (n) {
            case 0: {
                this.VY.akG(menu);
                break;
            }
        }
        super.onPanelClosed(n, menu);
    }
    
    protected void onPause() {
        final int n = 2;
        super.onPause();
        this.VZ = false;
        if (this.mHandler.hasMessages(n)) {
            this.mHandler.removeMessages(n);
            this.aia();
        }
        this.VY.akQ();
    }
    
    public void onPictureInPictureModeChanged(final boolean b) {
        this.VY.akF(b);
    }
    
    protected void onPostResume() {
        super.onPostResume();
        this.mHandler.removeMessages(2);
        this.aia();
        this.VY.alj();
    }
    
    public boolean onPreparePanel(final int n, final View view, final Menu menu) {
        if (n == 0 && menu != null) {
            return this.ahZ(view, menu) | this.VY.akN(menu);
        }
        return super.onPreparePanel(n, view, menu);
    }
    
    public void onRequestPermissionsResult(final int n, final String[] array, final int[] array2) {
        final char c = (char)(-1);
        final int n2 = n >> 16 & c;
        if (n2 != 0) {
            final int n3 = n2 - 1;
            final String s = (String)this.VW.agF(n3);
            this.VW.agE(n3);
            if (s == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            final e akK = this.VY.akK(s);
            if (akK != null) {
                akK.onRequestPermissionsResult(n & c, array, array2);
            }
            else {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: " + s);
            }
        }
    }
    
    protected void onResume() {
        super.onResume();
        this.mHandler.sendEmptyMessage(2);
        this.VZ = true;
        this.VY.alj();
    }
    
    public final Object onRetainNonConfigurationInstance() {
        if (this.mStopped) {
            this.ahW(true);
        }
        final Object ahV = this.ahV();
        final az alc = this.VY.alc();
        final k akL = this.VY.akL();
        if (alc == null && akL == null && ahV == null) {
            return null;
        }
        final u u = new u();
        u.XR = ahV;
        u.XP = alc;
        u.XQ = akL;
        return u;
    }
    
    protected void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        final Parcelable akY = this.VY.akY();
        if (akY != null) {
            bundle.putParcelable("android:support:fragments", akY);
        }
        if (this.VW.size() > 0) {
            bundle.putInt("android:support:next_request_index", this.Wa);
            final int[] array = new int[this.VW.size()];
            final String[] array2 = new String[this.VW.size()];
            for (int i = 0; i < this.VW.size(); ++i) {
                array[i] = this.VW.agG(i);
                array2[i] = (String)this.VW.agD(i);
            }
            bundle.putIntArray("android:support:request_indicies", array);
            bundle.putStringArray("android:support:request_fragment_who", array2);
        }
    }
    
    protected void onStart() {
        final int vu = 1;
        super.onStart();
        this.mStopped = false;
        this.VX = false;
        this.mHandler.removeMessages(vu);
        if (!this.VU) {
            this.VU = (vu != 0);
            this.VY.ale();
        }
        this.VY.ala();
        this.VY.alj();
        this.VY.akI();
        this.VY.akH();
        this.VY.alb();
    }
    
    public void onStateNotSaved() {
        this.VY.ala();
    }
    
    protected void onStop() {
        final int mStopped = 1;
        super.onStop();
        this.mStopped = (mStopped != 0);
        this.mHandler.sendEmptyMessage(mStopped);
        this.VY.akT();
    }
    
    public void startActivityForResult(final Intent intent, final int n) {
        if (!this.XS && n != -1) {
            N.aln(n);
        }
        super.startActivityForResult(intent, n);
    }
}

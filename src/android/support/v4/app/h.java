// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.util.AttributeSet;
import android.content.Context;
import android.view.View;
import android.content.res.Configuration;
import android.os.Parcelable;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.support.v4.a.k;
import android.view.Menu;

public class H
{
    private final p Yc;
    
    private H(final p yc) {
        this.Yc = yc;
    }
    
    public static final H all(final p p) {
        return new H(p);
    }
    
    public void akF(final boolean b) {
        this.Yc.XC.apE(b);
    }
    
    public void akG(final Menu menu) {
        this.Yc.XC.apc(menu);
    }
    
    public void akH() {
        this.Yc.XC.aob();
    }
    
    public void akI() {
        this.Yc.ake();
    }
    
    public void akJ(final boolean b) {
        this.Yc.akf(b);
    }
    
    public e akK(final String s) {
        return this.Yc.XC.apG(s);
    }
    
    public k akL() {
        return this.Yc.akg();
    }
    
    public void akM() {
        this.Yc.akh();
    }
    
    public boolean akN(final Menu menu) {
        return this.Yc.XC.apI(menu);
    }
    
    public boolean akO(final MenuItem menuItem) {
        return this.Yc.XC.aoC(menuItem);
    }
    
    public void akP(final k k) {
        this.Yc.aki(k);
    }
    
    public void akQ() {
        this.Yc.XC.apl();
    }
    
    public boolean akR(final Menu menu, final MenuInflater menuInflater) {
        return this.Yc.XC.aod(menu, menuInflater);
    }
    
    public void akS() {
        this.Yc.XC.apL();
    }
    
    public void akT() {
        this.Yc.XC.aoF();
    }
    
    public boolean akU(final MenuItem menuItem) {
        return this.Yc.XC.apP(menuItem);
    }
    
    public void akV(final e e) {
        this.Yc.XC.aps(this.Yc, this.Yc, e);
    }
    
    public void akW(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        this.Yc.akl(s, fileDescriptor, printWriter, array);
    }
    
    public bb akX() {
        return this.Yc.akn();
    }
    
    public Parcelable akY() {
        return this.Yc.XC.aog();
    }
    
    public void akZ() {
        this.Yc.XC.aoL();
    }
    
    public void ala() {
        this.Yc.XC.apU();
    }
    
    public void alb() {
        this.Yc.akp();
    }
    
    public az alc() {
        return this.Yc.XC.aoR();
    }
    
    public void ald() {
        this.Yc.XC.aoP();
    }
    
    public void ale() {
        this.Yc.XC.apv();
    }
    
    public void alf() {
        this.Yc.XC.aoU();
    }
    
    public void alg(final Parcelable parcelable, final az az) {
        this.Yc.XC.aoW(parcelable, az);
    }
    
    public void alh() {
        this.Yc.XC.aqf();
    }
    
    public void ali(final Configuration configuration) {
        this.Yc.XC.apz(configuration);
    }
    
    public boolean alj() {
        return this.Yc.XC.aoZ();
    }
    
    public void alk(final boolean b) {
        this.Yc.XC.aqg(b);
    }
    
    public View onCreateView(final View view, final String s, final Context context, final AttributeSet set) {
        return this.Yc.XC.onCreateView(view, s, context, set);
    }
}

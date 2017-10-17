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
import android.support.v4.a.b;
import android.view.Menu;

public class J
{
    private final r ZI;
    
    private J(final r zi) {
        this.ZI = zi;
    }
    
    public static final J amA(final r r) {
        return new J(r);
    }
    
    public void alU(final boolean b) {
        this.ZI.Zm.aqF(b);
    }
    
    public void alV(final Menu menu) {
        this.ZI.Zm.aqd(menu);
    }
    
    public void alW() {
        this.ZI.Zm.apc();
    }
    
    public void alX() {
        this.ZI.alp();
    }
    
    public void alY(final boolean b) {
        this.ZI.alq(b);
    }
    
    public g alZ(final String s) {
        return this.ZI.Zm.aqH(s);
    }
    
    public b ama() {
        return this.ZI.alr();
    }
    
    public void amb() {
        this.ZI.als();
    }
    
    public boolean amc(final Menu menu) {
        return this.ZI.Zm.aqJ(menu);
    }
    
    public boolean amd(final MenuItem menuItem) {
        return this.ZI.Zm.apD(menuItem);
    }
    
    public void ame(final b b) {
        this.ZI.alt(b);
    }
    
    public void amf() {
        this.ZI.Zm.aqm();
    }
    
    public boolean amg(final Menu menu, final MenuInflater menuInflater) {
        return this.ZI.Zm.ape(menu, menuInflater);
    }
    
    public void amh() {
        this.ZI.Zm.aqM();
    }
    
    public void ami() {
        this.ZI.Zm.apG();
    }
    
    public boolean amj(final MenuItem menuItem) {
        return this.ZI.Zm.aqQ(menuItem);
    }
    
    public void amk(final g g) {
        this.ZI.Zm.aqt(this.ZI, this.ZI, g);
    }
    
    public void aml(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        this.ZI.alw(s, fileDescriptor, printWriter, array);
    }
    
    public aW amm() {
        return this.ZI.aly();
    }
    
    public Parcelable amn() {
        return this.ZI.Zm.aph();
    }
    
    public void amo() {
        this.ZI.Zm.apM();
    }
    
    public void amp() {
        this.ZI.Zm.aqV();
    }
    
    public void amq() {
        this.ZI.alA();
    }
    
    public ax amr() {
        return this.ZI.Zm.apS();
    }
    
    public void ams() {
        this.ZI.Zm.apQ();
    }
    
    public void amt() {
        this.ZI.Zm.aqw();
    }
    
    public void amu() {
        this.ZI.Zm.apV();
    }
    
    public void amv(final Parcelable parcelable, final ax ax) {
        this.ZI.Zm.apX(parcelable, ax);
    }
    
    public void amw() {
        this.ZI.Zm.arg();
    }
    
    public void amx(final Configuration configuration) {
        this.ZI.Zm.aqA(configuration);
    }
    
    public boolean amy() {
        return this.ZI.Zm.aqa();
    }
    
    public void amz(final boolean b) {
        this.ZI.Zm.arh(b);
    }
    
    public View onCreateView(final View view, final String s, final Context context, final AttributeSet set) {
        return this.ZI.Zm.onCreateView(view, s, context, set);
    }
}

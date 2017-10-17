// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.support.v4.a.k;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import java.util.Arrays;
import android.content.res.Configuration;
import android.content.res.Resources;
import java.io.Serializable;
import android.view.MenuInflater;
import android.view.Menu;
import android.os.Parcelable;
import android.content.res.Resources$NotFoundException;
import android.view.animation.AnimationUtils;
import android.animation.AnimatorInflater;
import android.support.v4.a.i;
import android.view.MenuItem;
import java.io.FileDescriptor;
import java.io.Writer;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import android.support.v4.view.f;
import android.os.Build$VERSION;
import android.graphics.Paint;
import android.support.v4.a.c;
import android.view.ViewGroup;
import android.animation.Animator$AnimatorListener;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.ScaleAnimation;
import android.view.animation.AnimationSet;
import android.content.Context;
import android.util.Log;
import android.view.animation.Animation$AnimationListener;
import android.view.animation.Animation;
import android.os.Looper;
import android.animation.PropertyValuesHolder;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.animation.Animator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.os.Bundle;
import android.util.SparseArray;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.ArrayList;
import java.lang.reflect.Field;
import android.view.animation.Interpolator;
import android.view.LayoutInflater$Factory2;

class e implements ap
{
    private final boolean XP;
    private int XQ;
    private final V XR;
    
    e(final V xr, final boolean xp) {
        this.XP = xp;
        this.XR = xr;
    }
    
    public boolean aju() {
        boolean b = false;
        if (this.XQ == 0) {
            b = true;
        }
        return b;
    }
    
    public void ajv() {
        --this.XQ;
        if (this.XQ == 0) {
            this.XR.aar.aqz();
        }
    }
    
    public void ajx() {
        this.XR.aar.aqf(this.XR, this.XP, false, false);
    }
    
    public void ajz() {
        final boolean b = true;
        boolean b2 = false;
        final boolean b3 = this.XQ > 0 && b;
        final aR aar = this.XR.aar;
        for (int size = aar.adx.size(), i = 0; i < size; ++i) {
            final g g = aar.adx.get(i);
            g.alj(null);
            if (b3 && g.ajV()) {
                g.ald();
            }
        }
        final aR aar2 = this.XR.aar;
        final V xr = this.XR;
        final boolean xp = this.XP;
        if (!b3) {
            b2 = b;
        }
        aar2.aqf(xr, xp, b2, b);
    }
    
    public void startListening() {
        ++this.XQ;
    }
}

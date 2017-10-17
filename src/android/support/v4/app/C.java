// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.support.v4.a.j;
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
import android.util.SparseArray;
import java.util.concurrent.CopyOnWriteArrayList;
import android.os.Bundle;
import java.util.ArrayList;
import java.lang.reflect.Field;
import android.view.animation.Interpolator;
import android.view.LayoutInflater$Factory2;

class c implements aq
{
    private final boolean Wf;
    private int Wg;
    private final U Wh;
    
    c(final U wh, final boolean wf) {
        this.Wf = wf;
        this.Wh = wh;
    }
    
    public boolean aig() {
        boolean b = false;
        if (this.Wg == 0) {
            b = true;
        }
        return b;
    }
    
    public void aih() {
        --this.Wg;
        if (this.Wg == 0) {
            this.Wh.YM.apy();
        }
    }
    
    public void aij() {
        this.Wh.YM.ape(this.Wh, this.Wf, false, false);
    }
    
    public void ail() {
        final boolean b = true;
        boolean b2 = false;
        final boolean b3 = this.Wg > 0 && b;
        final aV ym = this.Wh.YM;
        for (int size = ym.acd.size(), i = 0; i < size; ++i) {
            final e e = ym.acd.get(i);
            e.ajW(null);
            if (b3 && e.aiI()) {
                e.ajQ();
            }
        }
        final aV ym2 = this.Wh.YM;
        final U wh = this.Wh;
        final boolean wf = this.Wf;
        if (!b3) {
            b2 = b;
        }
        ym2.ape(wh, wf, b2, b);
    }
    
    public void startListening() {
        ++this.Wg;
    }
}

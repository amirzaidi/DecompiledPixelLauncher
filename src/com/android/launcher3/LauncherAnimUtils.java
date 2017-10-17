// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.Iterator;
import java.util.Collection;
import java.util.HashSet;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.animation.ObjectAnimator;
import android.util.Property;
import android.view.View;
import android.animation.AnimatorSet;
import android.animation.Animator;
import android.animation.Animator$AnimatorListener;
import java.util.WeakHashMap;

public class LauncherAnimUtils
{
    static WeakHashMap sAnimators;
    static Animator$AnimatorListener sEndAnimListener;
    
    static {
        LauncherAnimUtils.sAnimators = new WeakHashMap();
        LauncherAnimUtils.sEndAnimListener = (Animator$AnimatorListener)new LauncherAnimUtils$1();
    }
    
    public static void cancelOnDestroyActivity(final Animator animator) {
        animator.addListener(LauncherAnimUtils.sEndAnimListener);
    }
    
    public static AnimatorSet createAnimatorSet() {
        final AnimatorSet set = new AnimatorSet();
        cancelOnDestroyActivity((Animator)set);
        return set;
    }
    
    public static ObjectAnimator ofFloat(final View view, final Property property, final float... array) {
        final ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object)view, property, array);
        cancelOnDestroyActivity((Animator)ofFloat);
        new FirstFrameAnimatorHelper((ValueAnimator)ofFloat, view);
        return ofFloat;
    }
    
    public static ValueAnimator ofFloat(final float... floatValues) {
        final ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setFloatValues(floatValues);
        cancelOnDestroyActivity((Animator)valueAnimator);
        return valueAnimator;
    }
    
    public static ObjectAnimator ofPropertyValuesHolder(final View view, final PropertyValuesHolder... array) {
        return ofPropertyValuesHolder((Object)view, view, array);
    }
    
    public static ObjectAnimator ofPropertyValuesHolder(final Object o, final View view, final PropertyValuesHolder... array) {
        final ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(o, array);
        cancelOnDestroyActivity((Animator)ofPropertyValuesHolder);
        new FirstFrameAnimatorHelper((ValueAnimator)ofPropertyValuesHolder, view);
        return ofPropertyValuesHolder;
    }
    
    public static ObjectAnimator ofViewAlphaAndScale(final View view, final float n, final float n2, final float n3) {
        final int n4 = 1;
        final PropertyValuesHolder[] array = new PropertyValuesHolder[3];
        final Property alpha = View.ALPHA;
        final float[] array2 = new float[n4];
        array2[0] = n;
        array[0] = PropertyValuesHolder.ofFloat(alpha, array2);
        final Property scale_X = View.SCALE_X;
        final float[] array3 = new float[n4];
        array3[0] = n2;
        array[n4] = PropertyValuesHolder.ofFloat(scale_X, array3);
        final Property scale_Y = View.SCALE_Y;
        final float[] array4 = new float[n4];
        array4[0] = n3;
        array[2] = PropertyValuesHolder.ofFloat(scale_Y, array4);
        return ofPropertyValuesHolder(view, array);
    }
    
    public static void onDestroyActivity() {
        for (final Animator animator : new HashSet<Animator>(LauncherAnimUtils.sAnimators.keySet())) {
            if (animator.isRunning()) {
                animator.cancel();
            }
            LauncherAnimUtils.sAnimators.remove(animator);
        }
    }
}

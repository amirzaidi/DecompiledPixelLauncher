// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import java.lang.reflect.Constructor;
import java.util.Locale;
import android.content.Context;
import java.lang.reflect.Method;

class AlphabeticIndexCompat$AlphabeticIndexV16 extends AlphabeticIndexCompat$BaseIndex
{
    private Object mAlphabeticIndex;
    private Method mGetBucketIndexMethod;
    private Method mGetBucketLabelMethod;
    
    public AlphabeticIndexCompat$AlphabeticIndexV16(final Context context) {
        final int n = 1;
        super(null);
        final Locale locale = context.getResources().getConfiguration().locale;
        final Class<?> forName = Class.forName("libcore.icu.AlphabeticIndex");
        final Class[] array = new Class[n];
        array[0] = String.class;
        this.mGetBucketIndexMethod = forName.getDeclaredMethod("getBucketIndex", (Class<?>[])array);
        final Class[] array2 = new Class[n];
        array2[0] = Integer.TYPE;
        this.mGetBucketLabelMethod = forName.getDeclaredMethod("getBucketLabel", (Class<?>[])array2);
        final Class[] array3 = new Class[n];
        array3[0] = Locale.class;
        final Constructor<?> constructor = forName.getConstructor((Class<?>[])array3);
        final Object[] array4 = new Object[n];
        array4[0] = locale;
        this.mAlphabeticIndex = constructor.newInstance(array4);
        if (!locale.getLanguage().equals(Locale.ENGLISH.getLanguage())) {
            final Class[] array5 = new Class[n];
            array5[0] = Locale.class;
            final Method declaredMethod = forName.getDeclaredMethod("addLabels", (Class<?>[])array5);
            final Object mAlphabeticIndex = this.mAlphabeticIndex;
            final Object[] array6 = new Object[n];
            array6[0] = Locale.ENGLISH;
            declaredMethod.invoke(mAlphabeticIndex, array6);
        }
    }
    
    protected int getBucketIndex(final String s) {
        try {
            final Method mGetBucketIndexMethod = this.mGetBucketIndexMethod;
            try {
                final Object invoke = mGetBucketIndexMethod.invoke(this.mAlphabeticIndex, s);
                try {
                    final Integer n = (Integer)invoke;
                    try {
                        return n;
                    }
                    catch (Exception ex) {
                        ex.printStackTrace();
                        return super.getBucketIndex(s);
                    }
                }
                catch (Exception ex2) {}
            }
            catch (Exception ex3) {}
        }
        catch (Exception ex4) {}
    }
    
    protected String getBucketLabel(final int n) {
        try {
            final Method mGetBucketLabelMethod = this.mGetBucketLabelMethod;
            try {
                final Object mAlphabeticIndex = this.mAlphabeticIndex;
                final Object[] array = { null };
                try {
                    array[0] = n;
                    final Object invoke = mGetBucketLabelMethod.invoke(mAlphabeticIndex, array);
                    try {
                        return (String)invoke;
                    }
                    catch (Exception ex) {
                        ex.printStackTrace();
                        return super.getBucketLabel(n);
                    }
                }
                catch (Exception ex2) {}
            }
            catch (Exception ex3) {}
        }
        catch (Exception ex4) {}
    }
}

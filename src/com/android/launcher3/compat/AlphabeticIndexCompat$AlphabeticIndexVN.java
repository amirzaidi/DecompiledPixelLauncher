// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import android.os.LocaleList;
import android.icu.text.AlphabeticIndex;
import java.util.Locale;
import android.content.Context;
import android.icu.text.AlphabeticIndex$ImmutableIndex;

class AlphabeticIndexCompat$AlphabeticIndexVN extends AlphabeticIndexCompat$BaseIndex
{
    private final AlphabeticIndex$ImmutableIndex mAlphabeticIndex;
    
    public AlphabeticIndexCompat$AlphabeticIndexVN(final Context context) {
        final int n = 1;
        super(null);
        final LocaleList locales = context.getResources().getConfiguration().getLocales();
        final int size = locales.size();
        Locale locale;
        if (size == 0) {
            locale = Locale.ENGLISH;
        }
        else {
            locale = locales.get(0);
        }
        final AlphabeticIndex alphabeticIndex = new AlphabeticIndex(locale);
        for (int i = n; i < size; ++i) {
            final Locale[] array = new Locale[n];
            array[0] = locales.get(i);
            alphabeticIndex.addLabels(array);
        }
        final Locale[] array2 = new Locale[n];
        array2[0] = Locale.ENGLISH;
        alphabeticIndex.addLabels(array2);
        this.mAlphabeticIndex = alphabeticIndex.buildImmutableIndex();
    }
    
    protected int getBucketIndex(final String s) {
        return this.mAlphabeticIndex.getBucketIndex((CharSequence)s);
    }
    
    protected String getBucketLabel(final int n) {
        return this.mAlphabeticIndex.getBucket(n).getLabel();
    }
}

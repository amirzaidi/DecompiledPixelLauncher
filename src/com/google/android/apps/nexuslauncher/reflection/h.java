// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import java.io.ObjectInputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.Iterator;
import com.google.research.reflection.predictor.f;
import java.util.List;
import android.content.SharedPreferences;

public class h
{
    static final String PREDICTION_APP_SEPARATOR = ";";
    private final SharedPreferences mPrefs;
    
    public h(final SharedPreferences mPrefs) {
        this.mPrefs = mPrefs;
    }
    
    public static String cd(final List list) {
        final StringBuilder sb = new StringBuilder();
        final Iterator<f> iterator = list.iterator();
        while (iterator.hasNext()) {
            sb.append(iterator.next().LR);
            sb.append(";");
        }
        return sb.toString();
    }
    
    public static String ce(final List list) {
        final StringBuilder sb = new StringBuilder();
        final Iterator<f> iterator = (Iterator<f>)list.iterator();
        while (iterator.hasNext()) {
            final Matcher matcher = g.cO.matcher(iterator.next().LR);
            if (matcher.find()) {
                final String group = matcher.group(1);
                final String group2 = matcher.group(2);
                final String group3 = matcher.group(4);
                if (sb.length() > 0) {
                    sb.append(";");
                }
                sb.append(group);
                sb.append("/");
                sb.append(group2);
                if (group3 == null) {
                    continue;
                }
                sb.append("#");
                sb.append(group3);
            }
        }
        return sb.toString();
    }
    
    public Map cb() {
        final String[] split = this.mPrefs.getString("prediction_order", "").split(";");
        final HashMap<String, Integer> hashMap = new HashMap<String, Integer>();
        final int length = split.length;
        int i = 0;
        int n = 0;
        while (i < length) {
            final String s = split[i];
            int n2;
            if (!s.isEmpty()) {
                n2 = n + 1;
                hashMap.put(s, n);
            }
            else {
                n2 = n;
            }
            ++i;
            n = n2;
        }
        return hashMap;
    }
    
    public void cc(final List list) {
        this.mPrefs.edit().putString("reflection_last_predictions", ce(list)).putLong("reflection_last_predictions_timestamp", System.currentTimeMillis()).putString("prediction_order", cd(list)).apply();
    }
}

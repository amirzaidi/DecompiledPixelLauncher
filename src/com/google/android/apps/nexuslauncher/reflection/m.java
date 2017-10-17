// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import java.io.ObjectInputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.Iterator;
import com.google.research.reflection.predictor.f;
import java.util.List;
import android.content.SharedPreferences;

public class m
{
    static final String PREDICTION_APP_SEPARATOR = ";";
    private final SharedPreferences bz;
    
    public m(final SharedPreferences bz) {
        this.bz = bz;
    }
    
    public static String aZ(final List list) {
        final StringBuilder sb = new StringBuilder();
        final Iterator<f> iterator = list.iterator();
        while (iterator.hasNext()) {
            sb.append(iterator.next().ML);
            sb.append(";");
        }
        return sb.toString();
    }
    
    public static String ba(final List list) {
        final StringBuilder sb = new StringBuilder();
        final Iterator<f> iterator = (Iterator<f>)list.iterator();
        while (iterator.hasNext()) {
            final Matcher matcher = g.bt.matcher(iterator.next().ML);
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
    
    public Map aY() {
        final String[] split = this.bz.getString("prediction_order", "").split(";");
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
    
    public void bb(final List list, final List list2) {
        final ArrayList list3 = new ArrayList(list.size() + list2.size());
        list3.addAll(list);
        list3.addAll(list2);
        this.bz.edit().putString("reflection_last_predictions", ba(list3)).putLong("reflection_last_predictions_timestamp", System.currentTimeMillis()).putString("prediction_order", aZ(list)).apply();
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import java.util.Comparator;

class w implements Comparator
{
    public int It(final DetectedActivity detectedActivity, final DetectedActivity detectedActivity2) {
        final int compareTo = Integer.valueOf(detectedActivity2.GO()).compareTo(Integer.valueOf(detectedActivity.GO()));
        if (compareTo != 0) {
            return compareTo;
        }
        return Integer.valueOf(detectedActivity.GQ()).compareTo(Integer.valueOf(detectedActivity2.GQ()));
    }
}

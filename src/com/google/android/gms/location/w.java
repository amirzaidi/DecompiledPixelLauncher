// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import java.util.Comparator;

class w implements Comparator
{
    public int Jm(final DetectedActivity detectedActivity, final DetectedActivity detectedActivity2) {
        final int compareTo = Integer.valueOf(detectedActivity2.HH()).compareTo(Integer.valueOf(detectedActivity.HH()));
        if (compareTo != 0) {
            return compareTo;
        }
        return Integer.valueOf(detectedActivity.HJ()).compareTo(Integer.valueOf(detectedActivity2.HJ()));
    }
}

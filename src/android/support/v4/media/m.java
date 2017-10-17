// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media;

import android.os.Parcel;
import android.net.Uri;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.media.MediaDescription;

class m
{
    public static CharSequence atB(final Object o) {
        return ((MediaDescription)o).getTitle();
    }
    
    public static Bundle atC(final Object o) {
        return ((MediaDescription)o).getExtras();
    }
    
    public static CharSequence atD(final Object o) {
        return ((MediaDescription)o).getSubtitle();
    }
    
    public static Bitmap atE(final Object o) {
        return ((MediaDescription)o).getIconBitmap();
    }
    
    public static Uri atF(final Object o) {
        return ((MediaDescription)o).getIconUri();
    }
    
    public static CharSequence atG(final Object o) {
        return ((MediaDescription)o).getDescription();
    }
    
    public static void atH(final Object o, final Parcel parcel, final int n) {
        ((MediaDescription)o).writeToParcel(parcel, n);
    }
    
    public static Object atI(final Parcel parcel) {
        return MediaDescription.CREATOR.createFromParcel(parcel);
    }
    
    public static String atJ(final Object o) {
        return ((MediaDescription)o).getMediaId();
    }
}

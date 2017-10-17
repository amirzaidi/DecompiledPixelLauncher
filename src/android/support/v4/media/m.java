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
    public static CharSequence asE(final Object o) {
        return ((MediaDescription)o).getTitle();
    }
    
    public static Bundle asF(final Object o) {
        return ((MediaDescription)o).getExtras();
    }
    
    public static CharSequence asG(final Object o) {
        return ((MediaDescription)o).getSubtitle();
    }
    
    public static Bitmap asH(final Object o) {
        return ((MediaDescription)o).getIconBitmap();
    }
    
    public static Uri asI(final Object o) {
        return ((MediaDescription)o).getIconUri();
    }
    
    public static CharSequence asJ(final Object o) {
        return ((MediaDescription)o).getDescription();
    }
    
    public static void asK(final Object o, final Parcel parcel, final int n) {
        ((MediaDescription)o).writeToParcel(parcel, n);
    }
    
    public static Object asL(final Parcel parcel) {
        return MediaDescription.CREATOR.createFromParcel(parcel);
    }
    
    public static String asM(final Object o) {
        return ((MediaDescription)o).getMediaId();
    }
}

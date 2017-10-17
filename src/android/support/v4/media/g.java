// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media;

import android.net.Uri;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.media.MediaDescription$Builder;

class g
{
    public static void asj(final Object o, final String mediaId) {
        ((MediaDescription$Builder)o).setMediaId(mediaId);
    }
    
    public static void ask(final Object o, final CharSequence description) {
        ((MediaDescription$Builder)o).setDescription(description);
    }
    
    public static void asl(final Object o, final Bundle extras) {
        ((MediaDescription$Builder)o).setExtras(extras);
    }
    
    public static void asm(final Object o, final Bitmap iconBitmap) {
        ((MediaDescription$Builder)o).setIconBitmap(iconBitmap);
    }
    
    public static void asn(final Object o, final Uri iconUri) {
        ((MediaDescription$Builder)o).setIconUri(iconUri);
    }
    
    public static Object aso(final Object o) {
        return ((MediaDescription$Builder)o).build();
    }
    
    public static Object asp() {
        return new MediaDescription$Builder();
    }
    
    public static void asq(final Object o, final CharSequence title) {
        ((MediaDescription$Builder)o).setTitle(title);
    }
    
    public static void asr(final Object o, final CharSequence subtitle) {
        ((MediaDescription$Builder)o).setSubtitle(subtitle);
    }
}

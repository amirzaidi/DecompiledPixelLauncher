// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.os.Parcelable;
import android.app.Notification$Builder;
import android.app.Notification$BigPictureStyle;
import android.graphics.Bitmap;
import android.app.Notification$BigTextStyle;
import android.util.SparseArray;
import java.util.List;
import android.util.Log;
import android.os.Bundle;
import android.app.Notification;
import java.util.Iterator;
import android.app.Notification$InboxStyle;
import java.util.ArrayList;
import java.lang.reflect.Field;

class aJ
{
    private static Field abt;
    private static final Object abu;
    private static boolean abv;
    private static final Object abw;
    
    static {
        abu = new Object();
        abw = new Object();
    }
    
    public static void ani(final X x, final CharSequence bigContentTitle, final boolean b, final CharSequence summaryText, final ArrayList list) {
        final Notification$InboxStyle setBigContentTitle = new Notification$InboxStyle(x.ain()).setBigContentTitle(bigContentTitle);
        if (b) {
            setBigContentTitle.setSummaryText(summaryText);
        }
        final Iterator<CharSequence> iterator = list.iterator();
        while (iterator.hasNext()) {
            setBigContentTitle.addLine((CharSequence)iterator.next());
        }
    }
    
    public static Bundle anj(final Notification notification) {
        final Object abu = aJ.abu;
        // monitorenter(abu)
        try {
            Label_0045: {
                if (aJ.abv) {
                    break Label_0045;
                }
                try {
                    Label_0049: {
                        if (aJ.abt == null) {
                            break Label_0049;
                        }
                        while (true) {
                            final Object value = aJ.abt.get(notification);
                            try {
                                Bundle bundle = (Bundle)value;
                                if (bundle != null) {
                                    return bundle;
                                }
                                Label_0155: {
                                    break Label_0155;
                                    final Field declaredField = Notification.class.getDeclaredField("extras");
                                    try {
                                        if (Bundle.class.isAssignableFrom(declaredField.getType())) {
                                            declaredField.setAccessible(true);
                                            aJ.abt = declaredField;
                                            continue;
                                        }
                                        Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                                        aJ.abv = true;
                                        return null;
                                        aJ.abv = true;
                                        return null;
                                        bundle = new(android.os.Bundle.class);
                                    }
                                    catch (IllegalAccessException ex) {}
                                    catch (NoSuchFieldException ex2) {}
                                }
                                return null;
                            }
                            catch (IllegalAccessException ex3) {}
                            catch (NoSuchFieldException ex4) {}
                            finally {
                            }
                            // monitorexit(abu)
                        }
                    }
                }
                catch (IllegalAccessException ex5) {}
                catch (NoSuchFieldException ex6) {}
            }
        }
        finally {}
    }
    
    public static SparseArray ank(final List list) {
        SparseArray sparseArray = null;
        for (int size = list.size(), i = 0; i < size; ++i) {
            final Bundle bundle = list.get(i);
            if (bundle != null) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                }
                sparseArray.put(i, (Object)bundle);
            }
        }
        return sparseArray;
    }
    
    public static void anl(final X x, final CharSequence bigContentTitle, final boolean b, final CharSequence summaryText, final CharSequence charSequence) {
        final Notification$BigTextStyle bigText = new Notification$BigTextStyle(x.ain()).setBigContentTitle(bigContentTitle).bigText(charSequence);
        if (b) {
            bigText.setSummaryText(summaryText);
        }
    }
    
    public static void anm(final X x, final CharSequence bigContentTitle, final boolean b, final CharSequence summaryText, final Bitmap bitmap, final Bitmap bitmap2, final boolean b2) {
        final Notification$BigPictureStyle bigPicture = new Notification$BigPictureStyle(x.ain()).setBigContentTitle(bigContentTitle).bigPicture(bitmap);
        if (b2) {
            bigPicture.bigLargeIcon(bitmap2);
        }
        if (b) {
            bigPicture.setSummaryText(summaryText);
        }
    }
    
    public static Bundle ann(final Notification$Builder notification$Builder, final S s) {
        notification$Builder.addAction(s.getIcon(), s.getTitle(), s.alT());
        final Bundle bundle = new Bundle(s.getExtras());
        if (s.alR() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", (Parcelable[])aU.anY(s.alR()));
        }
        if (s.alU() != null) {
            bundle.putParcelableArray("android.support.dataRemoteInputs", (Parcelable[])aU.anY(s.alU()));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", s.alS());
        return bundle;
    }
}

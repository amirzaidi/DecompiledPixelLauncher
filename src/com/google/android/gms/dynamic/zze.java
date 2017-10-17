// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.dynamic;

import java.lang.reflect.Field;
import android.os.IBinder;

public final class zze extends zzd$zza
{
    private final Object mWrappedObject;
    
    private zze(final Object mWrappedObject) {
        this.mWrappedObject = mWrappedObject;
    }
    
    public static Object zzag(final zzd zzd) {
        final boolean accessible = true;
        if (zzd instanceof zze) {
            return ((zze)zzd).mWrappedObject;
        }
        final IBinder binder = zzd.asBinder();
        final Field[] declaredFields = binder.getClass().getDeclaredFields();
        if (declaredFields.length != (accessible ? 1 : 0)) {
            throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly *one* declared private field for the wrapped object.  Preferably, this is an instance of the ObjectWrapper<T> class.");
        }
        final Field field = declaredFields[0];
        if (field.isAccessible()) {
            throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly one declared *private* field for the wrapped object. Preferably, this is an instance of the ObjectWrapper<T> class.");
        }
        field.setAccessible(accessible);
        final Field field2 = field;
        try {
            return field2.get(binder);
        }
        catch (NullPointerException ex) {
            throw new IllegalArgumentException("Binder object is null.", ex);
        }
        catch (IllegalArgumentException ex2) {
            throw new IllegalArgumentException("remoteBinder is the wrong class.", ex2);
        }
        catch (IllegalAccessException ex3) {
            throw new IllegalArgumentException("Could not access the field in remoteBinder.", ex3);
        }
    }
    
    public static zzd zzal(final Object o) {
        return new zze(o);
    }
}

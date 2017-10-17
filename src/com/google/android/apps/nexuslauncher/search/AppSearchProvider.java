// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.search;

import java.util.concurrent.Executor;
import java.util.Comparator;
import com.android.launcher3.allapps.AppInfoComparator;
import com.android.launcher3.ItemInfoWithIcon;
import com.android.launcher3.allapps.search.DefaultAppSearchAlgorithm;
import com.android.launcher3.allapps.search.DefaultAppSearchAlgorithm$StringMatcher;
import java.util.Collections;
import java.lang.ref.WeakReference;
import com.android.launcher3.model.LoaderResults;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.AllAppsList;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.ExecutionException;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import com.android.launcher3.LauncherModel$ModelUpdateTask;
import java.io.FileNotFoundException;
import android.os.ParcelFileDescriptor;
import com.android.launcher3.LauncherModel;
import android.content.ContentValues;
import java.util.concurrent.Future;
import android.os.Parcelable;
import android.graphics.Bitmap;
import java.util.concurrent.Callable;
import android.util.Log;
import android.os.Looper;
import android.os.Bundle;
import android.database.MatrixCursor$RowBuilder;
import java.util.Iterator;
import android.database.MatrixCursor;
import android.database.Cursor;
import java.util.List;
import android.net.Uri$Builder;
import com.android.launcher3.AppInfo;
import com.android.launcher3.compat.UserManagerCompat;
import android.content.ComponentName;
import com.android.launcher3.util.ComponentKey;
import android.content.Context;
import android.net.Uri;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.util.LooperExecutor;
import android.content.ContentProvider$PipeDataWriter;
import android.content.ContentProvider;

public class AppSearchProvider extends ContentProvider
{
    private static final String[] eK;
    private final ContentProvider$PipeDataWriter eL;
    private LooperExecutor eM;
    private LauncherAppState mApp;
    
    static {
        eK = new String[] { "_id", "suggest_text_1", "suggest_icon_1", "suggest_intent_action", "suggest_intent_data" };
    }
    
    public AppSearchProvider() {
        this.eL = (ContentProvider$PipeDataWriter)new h(this);
    }
    
    public static ComponentKey dl(final Uri uri, final Context context) {
        return new ComponentKey(ComponentName.unflattenFromString(uri.getQueryParameter("component")), UserManagerCompat.getInstance(context).getUserForSerialNumber(Long.parseLong(uri.getQueryParameter("user"))));
    }
    
    public static Uri dm(final AppInfo appInfo, final UserManagerCompat userManagerCompat) {
        return new Uri$Builder().scheme("content").authority("com.google.android.apps.nexuslauncher.appssearch").appendQueryParameter("component", appInfo.componentName.flattenToShortString()).appendQueryParameter("user", Long.toString(userManagerCompat.getSerialNumberForUser(appInfo.user))).build();
    }
    
    private Cursor dn(final List list) {
        final MatrixCursor matrixCursor = new MatrixCursor(AppSearchProvider.eK, list.size());
        final UserManagerCompat instance = UserManagerCompat.getInstance(this.getContext());
        final Iterator<AppInfo> iterator = (Iterator<AppInfo>)list.iterator();
        int n = 0;
        while (iterator.hasNext()) {
            final AppInfo appInfo = iterator.next();
            final String string = dm(appInfo, instance).toString();
            final MatrixCursor$RowBuilder row = matrixCursor.newRow();
            final int n2 = n + 1;
            row.add((Object)n).add((Object)appInfo.title.toString()).add((Object)string).add((Object)"com.google.android.apps.nexuslauncher.search.APP_LAUNCH").add((Object)string);
            n = n2;
        }
        return (Cursor)matrixCursor;
    }
    
    public Bundle call(final String s, final String s2, final Bundle bundle) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Log.d("AppSearchProvider", "Content provider accessed on main thread");
            return null;
        }
        if ("loadIcon".equals(s)) {
            try {
                final Uri parse = Uri.parse(s2);
                try {
                    final ComponentKey dl = dl(parse, this.getContext());
                    try {
                        final LooperExecutor em = this.eM;
                        try {
                            final g g = new g(this, dl);
                            final LooperExecutor looperExecutor = em;
                            try {
                                final Future<Bitmap> submit = looperExecutor.submit((Callable<Bitmap>)g);
                                try {
                                    final Bitmap value = submit.get();
                                    try {
                                        final Bitmap bitmap = value;
                                        try {
                                            try {
                                                final Bundle bundle2 = new Bundle();
                                                bundle2.putParcelable("suggest_icon_1", (Parcelable)bitmap);
                                                return bundle2;
                                            }
                                            catch (Exception ex) {
                                                Log.e("AppSearchProvider", "Unable to load icon " + ex);
                                                return null;
                                            }
                                        }
                                        catch (Exception ex2) {}
                                    }
                                    catch (Exception ex3) {}
                                }
                                catch (Exception ex4) {}
                            }
                            catch (Exception ex5) {}
                        }
                        catch (Exception ex6) {}
                    }
                    catch (Exception ex7) {}
                }
                catch (Exception ex8) {}
            }
            catch (Exception ex9) {}
        }
        return super.call(s, s2, bundle);
    }
    
    public int delete(final Uri uri, final String s, final String[] array) {
        throw new UnsupportedOperationException();
    }
    
    public String getType(final Uri uri) {
        return "vnd.android.cursor.dir/vnd.android.search.suggest";
    }
    
    public Uri insert(final Uri uri, final ContentValues contentValues) {
        throw new UnsupportedOperationException();
    }
    
    public boolean onCreate() {
        this.eM = new LooperExecutor(LauncherModel.getWorkerLooper());
        this.mApp = LauncherAppState.getInstance(this.getContext());
        return true;
    }
    
    public ParcelFileDescriptor openFile(final Uri uri, final String s) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Log.e("AppSearchProvider", "Content provider accessed on main thread");
            return null;
        }
        try {
            final ComponentKey dl = dl(uri, this.getContext());
            final String s2 = "image/png";
            final LooperExecutor em = this.eM;
            try {
                final g g = new g(this, dl);
                final LooperExecutor looperExecutor = em;
                try {
                    final Future<Object> submit = looperExecutor.submit((Callable<Object>)g);
                    try {
                        return this.openPipeHelper(uri, s2, (Bundle)null, (Object)submit, this.eL);
                    }
                    catch (Exception ex) {
                        throw new FileNotFoundException(ex.getMessage());
                    }
                }
                catch (Exception ex2) {}
            }
            catch (Exception ex3) {}
        }
        catch (Exception ex4) {}
    }
    
    public Cursor query(final Uri uri, final String[] array, final String s, final String[] array2, final String s2) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Log.e("AppSearchProvider", "Content provider accessed on main thread");
            return (Cursor)new MatrixCursor(AppSearchProvider.eK, 0);
        }
        final f f = new f(uri.getLastPathSegment());
        this.mApp.getModel().enqueueModelUpdateTask(f);
        try {
            final Object value = f.eN.get(5, TimeUnit.SECONDS);
            try {
                final List<?> list = (List<?>)value;
                return this.dn(list);
            }
            catch (InterruptedException | ExecutionException | TimeoutException ex) {
                final Throwable t;
                Log.d("AppSearchProvider", "Error searching apps", t);
                final List<?> list = new ArrayList<Object>();
            }
        }
        catch (InterruptedException ex2) {}
        catch (ExecutionException ex3) {}
        catch (TimeoutException ex4) {}
    }
    
    public int update(final Uri uri, final ContentValues contentValues, final String s, final String[] array) {
        throw new UnsupportedOperationException();
    }
}

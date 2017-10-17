// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import android.os.Looper;
import com.android.launcher3.util.LooperIdleLock;
import com.android.launcher3.util.ViewOnDrawExecutor;
import java.util.Collection;
import android.util.Log;
import com.android.launcher3.LauncherModel$Callbacks;
import com.android.launcher3.util.MultiHashMap;
import com.android.launcher3.InvariantDeviceProfile;
import java.util.Comparator;
import java.util.List;
import java.util.Collections;
import java.util.HashSet;
import com.android.launcher3.ItemInfo;
import java.util.Iterator;
import com.android.launcher3.LauncherAppWidgetInfo;
import java.util.ArrayList;
import com.android.launcher3.MainThreadExecutor;
import java.util.concurrent.Executor;
import java.lang.ref.WeakReference;
import com.android.launcher3.AllAppsList;
import com.android.launcher3.LauncherAppState;

public class LoaderResults
{
    private final LauncherAppState mApp;
    private final AllAppsList mBgAllAppsList;
    private final BgDataModel mBgDataModel;
    private final WeakReference mCallbacks;
    private final int mPageToBindFirst;
    private final Executor mUiExecutor;
    
    public LoaderResults(final LauncherAppState mApp, final BgDataModel mBgDataModel, final AllAppsList mBgAllAppsList, final int mPageToBindFirst, WeakReference mCallbacks) {
        this.mUiExecutor = new MainThreadExecutor();
        this.mApp = mApp;
        this.mBgDataModel = mBgDataModel;
        this.mBgAllAppsList = mBgAllAppsList;
        this.mPageToBindFirst = mPageToBindFirst;
        if (mCallbacks == null) {
            mCallbacks = new WeakReference(null);
        }
        this.mCallbacks = mCallbacks;
    }
    
    private void bindWorkspaceItems(final ArrayList list, final ArrayList list2, final Executor executor) {
        int i = 0;
        for (int size = list.size(), j = 0; j < size; j += 6) {
            int n;
            if (j + 6 <= size) {
                n = 6;
            }
            else {
                n = size - j;
            }
            executor.execute(new LoaderResults$8(this, list, j, n));
        }
        while (i < list2.size()) {
            executor.execute(new LoaderResults$9(this, list2.get(i)));
            ++i;
        }
    }
    
    private void filterCurrentAppWidgets(final long n, final ArrayList list, final ArrayList list2, final ArrayList list3) {
        for (final LauncherAppWidgetInfo launcherAppWidgetInfo : list) {
            if (launcherAppWidgetInfo != null) {
                if (launcherAppWidgetInfo.container == -100 && launcherAppWidgetInfo.screenId == n) {
                    list2.add(launcherAppWidgetInfo);
                }
                else {
                    list3.add(launcherAppWidgetInfo);
                }
            }
        }
    }
    
    private void filterCurrentWorkspaceItems(final long n, final ArrayList list, final ArrayList list2, final ArrayList list3) {
        final Iterator<ItemInfo> iterator = list.iterator();
        while (iterator.hasNext()) {
            if (iterator.next() == null) {
                iterator.remove();
            }
        }
        final HashSet<Long> set = new HashSet<Long>();
        Collections.sort((List<Object>)list, new LoaderResults$6(this));
        for (final ItemInfo itemInfo : list) {
            if (itemInfo.container == -100) {
                if (itemInfo.screenId == n) {
                    list2.add(itemInfo);
                    set.add(itemInfo.id);
                }
                else {
                    list3.add(itemInfo);
                }
            }
            else if (itemInfo.container == -101) {
                list2.add(itemInfo);
                set.add(itemInfo.id);
            }
            else if (set.contains(itemInfo.container)) {
                list2.add(itemInfo);
                set.add(itemInfo.id);
            }
            else {
                list3.add(itemInfo);
            }
        }
    }
    
    private void sortWorkspaceItemsSpatially(final ArrayList list) {
        final InvariantDeviceProfile invariantDeviceProfile = this.mApp.getInvariantDeviceProfile();
        Collections.sort((List<Object>)list, new LoaderResults$7(this, invariantDeviceProfile.numRows * invariantDeviceProfile.numColumns, invariantDeviceProfile.numColumns));
    }
    
    public void bindAllApps() {
        this.mUiExecutor.execute(new LoaderResults$11(this, (ArrayList)this.mBgAllAppsList.data.clone()));
    }
    
    public void bindDeepShortcuts() {
        Object mBgDataModel = this.mBgDataModel;
        synchronized (mBgDataModel) {
            final MultiHashMap clone = this.mBgDataModel.deepShortcutMap.clone();
            // monitorexit(mBgDataModel)
            mBgDataModel = new LoaderResults$10(this, clone);
            this.mUiExecutor.execute((Runnable)mBgDataModel);
        }
    }
    
    public void bindWidgets() {
        this.mUiExecutor.execute(new LoaderResults$12(this, this.mBgDataModel.widgetsModel.getWidgetsMap()));
    }
    
    public void bindWorkspace() {
        if (this.mCallbacks.get() == null) {
            Log.w("LoaderResults", "LoaderTask running with no launcher");
            return;
        }
    Label_0170_Outer:
        while (true) {
            final ArrayList list = new ArrayList();
            final ArrayList list2 = new ArrayList();
            final ArrayList<Long> list3 = new ArrayList<Long>();
            Object o = this.mBgDataModel;
            int n = 0;
            int n2;
            boolean b;
            long longValue;
            ArrayList list4;
            ArrayList list5;
            ArrayList list6;
            ArrayList list7;
            Executor mUiExecutor;
            Runnable runnable;
            final LauncherModel$Callbacks launcherModel$Callbacks;
            Label_0204_Outer:Label_0363_Outer:
            while (true) {
                Label_0488: {
                    while (true) {
                    Label_0482:
                        while (true) {
                        Label_0475:
                            while (true) {
                            Label_0464:
                                while (true) {
                                    synchronized (o) {
                                        list.addAll(this.mBgDataModel.workspaceItems);
                                        list2.addAll(this.mBgDataModel.appWidgets);
                                        list3.addAll(this.mBgDataModel.workspaceScreens);
                                        // monitorexit(o)
                                        if (this.mPageToBindFirst != -1001) {
                                            n = this.mPageToBindFirst;
                                            if (n < list3.size()) {
                                                break Label_0488;
                                            }
                                            n = (n2 = -1001);
                                            if (n2 < 0) {
                                                break Label_0464;
                                            }
                                            n = ((b = true) ? 1 : 0);
                                            if (!b) {
                                                break Label_0475;
                                            }
                                            longValue = list3.get(n2);
                                            list4 = new ArrayList();
                                            list5 = new ArrayList();
                                            list6 = new ArrayList();
                                            list7 = new ArrayList();
                                            o = this;
                                            this.filterCurrentWorkspaceItems(longValue, list, list4, list5);
                                            this.filterCurrentAppWidgets(longValue, list2, list6, list7);
                                            this.sortWorkspaceItemsSpatially(list4);
                                            this.sortWorkspaceItemsSpatially(list5);
                                            this.mUiExecutor.execute(new LoaderResults$1(this));
                                            mUiExecutor = this.mUiExecutor;
                                            o = new LoaderResults$2(this, list3);
                                            mUiExecutor.execute((Runnable)o);
                                            o = this.mUiExecutor;
                                            this.bindWorkspaceItems(list4, list6, (Executor)o);
                                            if (b) {
                                                runnable = new ViewOnDrawExecutor(this.mUiExecutor);
                                                ((Executor)o).execute(new LoaderResults$3(this, b, (Executor)runnable));
                                                this.bindWorkspaceItems(list5, list7, (Executor)runnable);
                                                o = new LoaderResults$4(this);
                                                ((Executor)runnable).execute((Runnable)o);
                                                if (b) {
                                                    o = new LoaderResults$5(this, n2, (Executor)runnable);
                                                    this.mUiExecutor.execute((Runnable)o);
                                                }
                                                return;
                                            }
                                            break Label_0482;
                                        }
                                    }
                                    n = launcherModel$Callbacks.getCurrentWorkspaceScreen();
                                    continue Label_0170_Outer;
                                }
                                n = 0;
                                b = false;
                                continue Label_0204_Outer;
                            }
                            longValue = -1;
                            continue Label_0363_Outer;
                        }
                        runnable = (Runnable)o;
                        continue;
                    }
                }
                n2 = n;
                continue;
            }
        }
    }
    
    public LooperIdleLock newIdleLock(final Object o) {
        final LooperIdleLock looperIdleLock = new LooperIdleLock(o, Looper.getMainLooper());
        if (this.mCallbacks.get() == null) {
            looperIdleLock.queueIdle();
        }
        return looperIdleLock;
    }
}

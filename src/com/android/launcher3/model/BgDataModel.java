// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import com.android.launcher3.shortcuts.ShortcutInfoCompat;
import com.android.launcher3.util.ComponentKey;
import java.util.List;
import android.os.UserHandle;
import java.util.Arrays;
import com.android.launcher3.InstallShortcutReceiver;
import com.android.launcher3.LauncherAppWidgetInfo;
import com.android.launcher3.shortcuts.DeepShortcutManager;
import android.util.MutableInt;
import com.android.launcher3.shortcuts.ShortcutKey;
import android.content.Context;
import java.util.Iterator;
import android.util.Log;
import java.io.IOException;
import com.google.protobuf.nano.a;
import java.io.FileOutputStream;
import com.android.launcher3.model.nano.LauncherDumpProto$LauncherImpression;
import android.text.TextUtils;
import java.util.Collection;
import com.android.launcher3.model.nano.LauncherDumpProto$DumpTarget;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.FolderInfo;
import com.android.launcher3.logging.DumpTargetWrapper;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import java.util.HashMap;
import java.util.Map;
import com.android.launcher3.util.LongArrayMap;
import com.android.launcher3.util.MultiHashMap;
import java.util.ArrayList;

public class BgDataModel
{
    public final ArrayList appWidgets;
    public final MultiHashMap deepShortcutMap;
    public final LongArrayMap folders;
    public boolean hasShortcutHostPermission;
    public final LongArrayMap itemsIdMap;
    public final Map pinnedShortcutCounts;
    public final WidgetsModel widgetsModel;
    public final ArrayList workspaceItems;
    public final ArrayList workspaceScreens;
    
    public BgDataModel() {
        this.itemsIdMap = new LongArrayMap();
        this.workspaceItems = new ArrayList();
        this.appWidgets = new ArrayList();
        this.folders = new LongArrayMap();
        this.workspaceScreens = new ArrayList();
        this.pinnedShortcutCounts = new HashMap();
        this.deepShortcutMap = new MultiHashMap();
        this.widgetsModel = new WidgetsModel();
    }
    
    private void dumpProto(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        // monitorenter(this)
        LauncherDumpProto$LauncherImpression launcherDumpProto$LauncherImpression;
        FileOutputStream fileOutputStream;
        try {
            final DumpTargetWrapper dumpTargetWrapper = new DumpTargetWrapper(2, 0);
            final LongArrayMap longArrayMap = new LongArrayMap();
            for (int i = 0; i < this.workspaceScreens.size(); ++i) {
                final long longValue = this.workspaceScreens.get(i);
                final int j = 1;
                longArrayMap.put(longValue, (Object)new DumpTargetWrapper(j, i));
            }
            for (int j = 0; j < this.folders.size(); ++j) {
                final FolderInfo folderInfo = (FolderInfo)this.folders.valueAt(j);
                final DumpTargetWrapper dumpTargetWrapper2 = new DumpTargetWrapper(3, this.folders.size());
                dumpTargetWrapper2.writeToDumpTarget(folderInfo);
                for (final ShortcutInfo shortcutInfo : folderInfo.contents) {
                    final DumpTargetWrapper dumpTargetWrapper3 = new DumpTargetWrapper(shortcutInfo);
                    dumpTargetWrapper3.writeToDumpTarget(shortcutInfo);
                    dumpTargetWrapper2.add(dumpTargetWrapper3);
                }
                final FolderInfo folderInfo2;
                if (folderInfo2.container == -101) {
                    dumpTargetWrapper.add(dumpTargetWrapper2);
                }
                else if (folderInfo2.container == -100) {
                    ((DumpTargetWrapper)longArrayMap.get(folderInfo2.screenId)).add(dumpTargetWrapper2);
                }
            }
            for (int k = 0; k < this.workspaceItems.size(); ++k) {
                final ItemInfo itemInfo = this.workspaceItems.get(k);
                if (!(itemInfo instanceof FolderInfo)) {
                    final DumpTargetWrapper dumpTargetWrapper4 = new DumpTargetWrapper(itemInfo);
                    dumpTargetWrapper4.writeToDumpTarget(itemInfo);
                    if (itemInfo.container == -101) {
                        dumpTargetWrapper.add(dumpTargetWrapper4);
                    }
                    else if (itemInfo.container == -100) {
                        ((DumpTargetWrapper)longArrayMap.get(itemInfo.screenId)).add(dumpTargetWrapper4);
                    }
                }
            }
            for (int l = 0; l < this.appWidgets.size(); ++l) {
                final ItemInfo itemInfo2 = this.appWidgets.get(l);
                final DumpTargetWrapper dumpTargetWrapper5 = new DumpTargetWrapper(itemInfo2);
                dumpTargetWrapper5.writeToDumpTarget(itemInfo2);
                if (itemInfo2.container == -101) {
                    dumpTargetWrapper.add(dumpTargetWrapper5);
                }
                else if (itemInfo2.container == -100) {
                    ((DumpTargetWrapper)longArrayMap.get(itemInfo2.screenId)).add(dumpTargetWrapper5);
                }
            }
            final ArrayList<LauncherDumpProto$DumpTarget> list = new ArrayList<LauncherDumpProto$DumpTarget>();
            list.addAll(dumpTargetWrapper.getFlattenedList());
            for (int n = 0; n < longArrayMap.size(); ++n) {
                list.addAll(((DumpTargetWrapper)longArrayMap.valueAt(n)).getFlattenedList());
            }
            if (array.length > 1 && TextUtils.equals((CharSequence)array[1], (CharSequence)"--debug")) {
                for (int n2 = 0; n2 < list.size(); ++n2) {
                    printWriter.println(s + DumpTargetWrapper.getDumpTargetStr(list.get(n2)));
                }
                // monitorexit(this)
                return;
            }
            launcherDumpProto$LauncherImpression = new LauncherDumpProto$LauncherImpression();
            launcherDumpProto$LauncherImpression.targets = new LauncherDumpProto$DumpTarget[list.size()];
            for (int n3 = 0; n3 < list.size(); ++n3) {
                launcherDumpProto$LauncherImpression.targets[n3] = list.get(n3);
            }
            fileOutputStream = new FileOutputStream(fileDescriptor);
            final LauncherDumpProto$LauncherImpression launcherDumpProto$LauncherImpression2 = launcherDumpProto$LauncherImpression;
            final byte[] array2 = a.toByteArray(launcherDumpProto$LauncherImpression2);
            final FileOutputStream fileOutputStream2 = fileOutputStream;
            final byte[] array3 = array2;
            fileOutputStream2.write(array3);
            final String s2 = "BgDataModel";
            final StringBuilder sb = new(java.lang.StringBuilder.class);
            final StringBuilder sb2 = sb;
            try {
                final StringBuilder sb3 = sb2;
                new StringBuilder();
                final LauncherDumpProto$LauncherImpression launcherDumpProto$LauncherImpression3 = launcherDumpProto$LauncherImpression;
                final byte[] array5;
                final byte[] array4 = array5 = a.toByteArray(launcherDumpProto$LauncherImpression3);
            }
            catch (IOException ex2) {}
        }
        finally {}
        try {
            final LauncherDumpProto$LauncherImpression launcherDumpProto$LauncherImpression2 = launcherDumpProto$LauncherImpression;
            final byte[] array2 = a.toByteArray(launcherDumpProto$LauncherImpression2);
            final FileOutputStream fileOutputStream2 = fileOutputStream;
            final byte[] array3 = array2;
            fileOutputStream2.write(array3);
            final String s2 = "BgDataModel";
            final StringBuilder sb = new(java.lang.StringBuilder.class);
            final StringBuilder sb3;
            final StringBuilder sb2 = sb3 = sb;
            new StringBuilder();
            final LauncherDumpProto$LauncherImpression launcherDumpProto$LauncherImpression3 = launcherDumpProto$LauncherImpression;
            final byte[] array5 = a.toByteArray(launcherDumpProto$LauncherImpression3);
            final StringBuilder append = sb2.append(array5.length).append("Bytes");
            try {
                Log.d(s2, append.toString());
            }
            // monitorexit(this)
            catch (IOException ex) {
                Log.e("BgDataModel", "Exception writing dumpsys --proto", (Throwable)ex);
            }
        }
        catch (IOException ex3) {}
    }
    
    public void addItem(final Context context, final ItemInfo itemInfo, final boolean b) {
        while (true) {
            final boolean b2 = true;
            Label_0460: {
                Label_0235: {
                    Label_0136: {
                        synchronized (this) {
                            this.itemsIdMap.put(itemInfo.id, (Object)itemInfo);
                            switch (itemInfo.itemType) {
                                case 2: {
                                    this.folders.put(itemInfo.id, (Object)itemInfo);
                                    this.workspaceItems.add(itemInfo);
                                    break;
                                }
                                case 6: {
                                    break Label_0136;
                                }
                                case 0:
                                case 1: {
                                    break Label_0235;
                                }
                                case 4:
                                case 5: {
                                    break Label_0460;
                                }
                            }
                            return;
                        }
                    }
                    final ShortcutKey fromItemInfo = ShortcutKey.fromItemInfo(itemInfo);
                    MutableInt mutableInt = this.pinnedShortcutCounts.get(fromItemInfo);
                    if (mutableInt == null) {
                        mutableInt = new MutableInt(1);
                        this.pinnedShortcutCounts.put(fromItemInfo, mutableInt);
                    }
                    else {
                        ++mutableInt.value;
                    }
                    if (b && mutableInt.value == (b2 ? 1 : 0)) {
                        DeepShortcutManager.getInstance(context).pinShortcut(fromItemInfo);
                    }
                }
                if (itemInfo.container == -100 || itemInfo.container == -101) {
                    this.workspaceItems.add(itemInfo);
                    return;
                }
                if (!b) {
                    this.findOrMakeFolder(itemInfo.container).add((ShortcutInfo)itemInfo, false);
                    return;
                }
                if (!this.folders.containsKey(itemInfo.container)) {
                    Log.e("BgDataModel", "adding item: " + itemInfo + " to a folder that " + " doesn't exist");
                    return;
                }
                return;
            }
            this.appWidgets.add(itemInfo);
        }
    }
    
    public void clear() {
        synchronized (this) {
            this.workspaceItems.clear();
            this.appWidgets.clear();
            this.folders.clear();
            this.itemsIdMap.clear();
            this.workspaceScreens.clear();
            this.pinnedShortcutCounts.clear();
            this.deepShortcutMap.clear();
        }
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        while (true) {
            int i = 0;
            Object iterator = null;
            while (true) {
                synchronized (this) {
                    if (array.length > 0 && TextUtils.equals((CharSequence)array[0], (CharSequence)"--proto")) {
                        this.dumpProto(s, fileDescriptor, printWriter, array);
                        return;
                    }
                    printWriter.println(s + "Data Model:");
                    printWriter.print(s + " ---- workspace screens: ");
                    for (int j = 0; j < this.workspaceScreens.size(); ++j) {
                        printWriter.print(" " + ((Long)this.workspaceScreens.get(j)).toString());
                    }
                    printWriter.println();
                    printWriter.println(s + " ---- workspace items ");
                    for (int k = 0; k < this.workspaceItems.size(); ++k) {
                        printWriter.println(s + '\t' + ((ItemInfo)this.workspaceItems.get(k)).toString());
                    }
                    printWriter.println(s + " ---- appwidget items ");
                    for (int l = 0; l < this.appWidgets.size(); ++l) {
                        printWriter.println(s + '\t' + ((LauncherAppWidgetInfo)this.appWidgets.get(l)).toString());
                    }
                    printWriter.println(s + " ---- folder items ");
                    for (int n = 0; n < this.folders.size(); ++n) {
                        printWriter.println(s + '\t' + ((FolderInfo)this.folders.valueAt(n)).toString());
                    }
                    printWriter.println(s + " ---- items id map ");
                    while (i < this.itemsIdMap.size()) {
                        printWriter.println(s + '\t' + ((ItemInfo)this.itemsIdMap.valueAt(i)).toString());
                        ++i;
                    }
                    if (array.length <= 0) {
                        break;
                    }
                    final String s2 = array[0];
                    iterator = "--all";
                    if (!TextUtils.equals((CharSequence)s2, (CharSequence)iterator)) {
                        break;
                    }
                    final StringBuilder append = new StringBuilder().append(s);
                    iterator = "shortcuts";
                    printWriter.println(append.append((String)iterator).toString());
                    iterator = this.deepShortcutMap.values().iterator();
                    if (!((Iterator)iterator).hasNext()) {
                        break;
                    }
                    final ArrayList<Object> list = ((Iterator<ArrayList<Object>>)iterator).next();
                    printWriter.print(s + "  ");
                    final Iterator<String> iterator2 = list.iterator();
                    while (iterator2.hasNext()) {
                        printWriter.print(iterator2.next() + ", ");
                    }
                }
                printWriter.println();
                continue;
            }
        }
    }
    // monitorexit(this)
    
    public FolderInfo findOrMakeFolder(final long n) {
        synchronized (this) {
            FolderInfo folderInfo = (FolderInfo)this.folders.get(n);
            if (folderInfo == null) {
                folderInfo = new FolderInfo();
                this.folders.put(n, (Object)folderInfo);
            }
            return folderInfo;
        }
    }
    
    public void removeItem(final Context context, final Iterable iterable) {
    Label_0088_Outer:
        while (true) {
            while (true) {
                ItemInfo itemInfo = null;
                Label_0264: {
                    Label_0247: {
                        Label_0155: {
                            Label_0118: {
                                synchronized (this) {
                                    final Iterator<ItemInfo> iterator = iterable.iterator();
                                    while (iterator.hasNext()) {
                                        itemInfo = iterator.next();
                                        switch (itemInfo.itemType) {
                                            default: {
                                                this.itemsIdMap.remove(itemInfo.id);
                                                continue Label_0088_Outer;
                                            }
                                            case 2: {
                                                break Label_0118;
                                            }
                                            case 6: {
                                                break Label_0155;
                                            }
                                            case 0:
                                            case 1: {
                                                break Label_0247;
                                            }
                                            case 4:
                                            case 5: {
                                                break Label_0264;
                                            }
                                        }
                                    }
                                    break;
                                }
                            }
                            this.folders.remove(itemInfo.id);
                            this.workspaceItems.remove(itemInfo);
                            continue;
                        }
                        final ShortcutKey fromItemInfo = ShortcutKey.fromItemInfo(itemInfo);
                        final MutableInt mutableInt = this.pinnedShortcutCounts.get(fromItemInfo);
                        if ((mutableInt == null || --mutableInt.value == 0) && (InstallShortcutReceiver.getPendingShortcuts(context).contains(fromItemInfo) ^ true)) {
                            DeepShortcutManager.getInstance(context).unpinShortcut(fromItemInfo);
                        }
                    }
                    this.workspaceItems.remove(itemInfo);
                    continue;
                }
                this.appWidgets.remove(itemInfo);
                continue;
            }
        }
    }
    // monitorexit(this)
    
    public void removeItem(final Context context, final ItemInfo... array) {
        synchronized (this) {
            this.removeItem(context, Arrays.asList(array));
        }
    }
    
    public void updateDeepShortcutMap(final String s, final UserHandle userHandle, final List list) {
        // monitorenter(this)
        if (s != null) {
            try {
                final Iterator<ComponentKey> iterator = this.deepShortcutMap.keySet().iterator();
                while (iterator.hasNext()) {
                    final ComponentKey componentKey = iterator.next();
                    if (componentKey.componentName.getPackageName().equals(s) && componentKey.user.equals((Object)userHandle)) {
                        iterator.remove();
                    }
                }
            }
            finally {
            }
            // monitorexit(this)
        }
        for (final ShortcutInfoCompat shortcutInfoCompat : list) {
            if (shortcutInfoCompat.isEnabled() && (shortcutInfoCompat.isDeclaredInManifest() || shortcutInfoCompat.isDynamic())) {
                this.deepShortcutMap.addToList(new ComponentKey(shortcutInfoCompat.getActivity(), shortcutInfoCompat.getUserHandle()), shortcutInfoCompat.getId());
            }
        }
    }
    // monitorexit(this)
}

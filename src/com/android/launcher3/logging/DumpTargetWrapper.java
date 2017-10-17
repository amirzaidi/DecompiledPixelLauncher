// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.logging;

import android.os.Process;
import com.android.launcher3.LauncherAppWidgetInfo;
import java.util.Iterator;
import java.util.Collection;
import java.util.List;
import android.text.TextUtils;
import com.android.launcher3.model.nano.LauncherDumpProto$ItemType;
import com.android.launcher3.model.nano.LauncherDumpProto$ContainerType;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.model.nano.LauncherDumpProto$DumpTarget;
import java.util.ArrayList;

public class DumpTargetWrapper
{
    ArrayList children;
    LauncherDumpProto$DumpTarget node;
    
    public DumpTargetWrapper() {
        this.children = new ArrayList();
    }
    
    public DumpTargetWrapper(final int n, final int n2) {
        this();
        this.node = this.newContainerTarget(n, n2);
    }
    
    public DumpTargetWrapper(final ItemInfo itemInfo) {
        this();
        this.node = this.newItemTarget(itemInfo);
    }
    
    public static String getDumpTargetStr(final LauncherDumpProto$DumpTarget launcherDumpProto$DumpTarget) {
        if (launcherDumpProto$DumpTarget == null) {
            return "";
        }
        switch (launcherDumpProto$DumpTarget.type) {
            default: {
                return "UNKNOWN TARGET TYPE";
            }
            case 1: {
                return getItemStr(launcherDumpProto$DumpTarget);
            }
            case 2: {
                String s = LoggerUtils.getFieldName(launcherDumpProto$DumpTarget.containerType, LauncherDumpProto$ContainerType.class);
                if (launcherDumpProto$DumpTarget.containerType == 1) {
                    s = s + " id=" + launcherDumpProto$DumpTarget.pageId;
                }
                else if (launcherDumpProto$DumpTarget.containerType == 3) {
                    s = s + " grid(" + launcherDumpProto$DumpTarget.gridX + "," + launcherDumpProto$DumpTarget.gridY + ")";
                }
                return s;
            }
        }
    }
    
    private static String getItemStr(final LauncherDumpProto$DumpTarget launcherDumpProto$DumpTarget) {
        String s = LoggerUtils.getFieldName(launcherDumpProto$DumpTarget.itemType, LauncherDumpProto$ItemType.class);
        if (!TextUtils.isEmpty((CharSequence)launcherDumpProto$DumpTarget.packageName)) {
            s = s + ", package=" + launcherDumpProto$DumpTarget.packageName;
        }
        if (!TextUtils.isEmpty((CharSequence)launcherDumpProto$DumpTarget.component)) {
            s = s + ", component=" + launcherDumpProto$DumpTarget.component;
        }
        return s + ", grid(" + launcherDumpProto$DumpTarget.gridX + "," + launcherDumpProto$DumpTarget.gridY + "), span(" + launcherDumpProto$DumpTarget.spanX + "," + launcherDumpProto$DumpTarget.spanY + "), pageIdx=" + launcherDumpProto$DumpTarget.pageId + " user=" + launcherDumpProto$DumpTarget.userType;
    }
    
    public void add(final DumpTargetWrapper dumpTargetWrapper) {
        this.children.add(dumpTargetWrapper);
    }
    
    public List getFlattenedList() {
        final ArrayList<LauncherDumpProto$DumpTarget> list = new ArrayList<LauncherDumpProto$DumpTarget>();
        list.add(this.node);
        if (!this.children.isEmpty()) {
            final Iterator iterator = this.children.iterator();
            while (iterator.hasNext()) {
                list.addAll(iterator.next().getFlattenedList());
            }
            list.add(this.node);
        }
        return list;
    }
    
    public LauncherDumpProto$DumpTarget newContainerTarget(final int containerType, final int pageId) {
        final LauncherDumpProto$DumpTarget launcherDumpProto$DumpTarget = new LauncherDumpProto$DumpTarget();
        launcherDumpProto$DumpTarget.type = 2;
        launcherDumpProto$DumpTarget.containerType = containerType;
        launcherDumpProto$DumpTarget.pageId = pageId;
        return launcherDumpProto$DumpTarget;
    }
    
    public LauncherDumpProto$DumpTarget newItemTarget(final ItemInfo itemInfo) {
        final boolean b = true;
        final LauncherDumpProto$DumpTarget launcherDumpProto$DumpTarget = new LauncherDumpProto$DumpTarget();
        launcherDumpProto$DumpTarget.type = (b ? 1 : 0);
        switch (itemInfo.itemType) {
            case 0: {
                launcherDumpProto$DumpTarget.itemType = (b ? 1 : 0);
                break;
            }
            case 1: {
                launcherDumpProto$DumpTarget.itemType = 0;
                break;
            }
            case 4: {
                launcherDumpProto$DumpTarget.itemType = 2;
                break;
            }
            case 6: {
                launcherDumpProto$DumpTarget.itemType = 3;
                break;
            }
        }
        return launcherDumpProto$DumpTarget;
    }
    
    public LauncherDumpProto$DumpTarget writeToDumpTarget(final ItemInfo itemInfo) {
        final LauncherDumpProto$DumpTarget node = this.node;
        String flattenToString;
        if (itemInfo.getTargetComponent() == null) {
            flattenToString = "";
        }
        else {
            flattenToString = itemInfo.getTargetComponent().flattenToString();
        }
        node.component = flattenToString;
        final LauncherDumpProto$DumpTarget node2 = this.node;
        String packageName;
        if (itemInfo.getTargetComponent() == null) {
            packageName = "";
        }
        else {
            packageName = itemInfo.getTargetComponent().getPackageName();
        }
        node2.packageName = packageName;
        if (itemInfo instanceof LauncherAppWidgetInfo) {
            this.node.component = ((LauncherAppWidgetInfo)itemInfo).providerName.flattenToString();
            this.node.packageName = ((LauncherAppWidgetInfo)itemInfo).providerName.getPackageName();
        }
        this.node.gridX = itemInfo.cellX;
        this.node.gridY = itemInfo.cellY;
        this.node.spanX = itemInfo.spanX;
        this.node.spanY = itemInfo.spanY;
        final LauncherDumpProto$DumpTarget node3 = this.node;
        int userType;
        if (itemInfo.user.equals((Object)Process.myUserHandle())) {
            userType = 0;
        }
        else {
            userType = 1;
        }
        node3.userType = userType;
        return this.node;
    }
}

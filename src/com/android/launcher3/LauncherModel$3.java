// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.model.BgDataModel;
import java.util.Collection;
import android.content.ContentValues;
import android.content.ContentProviderOperation;
import android.net.Uri;
import java.util.ArrayList;
import android.content.ContentResolver;

final class LauncherModel$3 implements Runnable
{
    final /* synthetic */ ContentResolver val$cr;
    final /* synthetic */ ArrayList val$screensCopy;
    final /* synthetic */ Uri val$uri;
    
    LauncherModel$3(final Uri val$uri, final ArrayList val$screensCopy, final ContentResolver val$cr) {
        this.val$uri = val$uri;
        this.val$screensCopy = val$screensCopy;
        this.val$cr = val$cr;
    }
    
    public void run() {
        final ArrayList<ContentProviderOperation> list = new ArrayList<ContentProviderOperation>();
        list.add(ContentProviderOperation.newDelete(this.val$uri).build());
        final int size = this.val$screensCopy.size();
        int i = 0;
        Object o = null;
        while (i < size) {
            final ContentValues contentValues = new ContentValues();
            contentValues.put("_id", (long)this.val$screensCopy.get(i));
            contentValues.put("screenRank", i);
            list.add(ContentProviderOperation.newInsert(this.val$uri).withValues(contentValues).build());
            ++i;
        }
        try {
            final ContentResolver val$cr = this.val$cr;
            try {
                o = LauncherProvider.AUTHORITY;
                val$cr.applyBatch((String)o, (ArrayList)list);
                o = LauncherModel.sBgDataModel;
                // monitorenter(o)
                final BgDataModel sBgDataModel = LauncherModel.sBgDataModel;
                final BgDataModel sBgDataModel2 = sBgDataModel;
                final ArrayList workspaceScreens = sBgDataModel2.workspaceScreens;
                final ArrayList workspaceScreens2 = workspaceScreens;
                workspaceScreens2.clear();
                final BgDataModel sBgDataModel3 = LauncherModel.sBgDataModel;
                final BgDataModel sBgDataModel4 = sBgDataModel3;
                final ArrayList list2 = sBgDataModel4.workspaceScreens;
                final LauncherModel$3 launcherModel$3 = this;
                final ArrayList list3 = launcherModel$3.val$screensCopy;
                final ArrayList list4 = list2;
                final ArrayList list5 = list3;
                list4.addAll(list5);
                return;
            }
            catch (Exception ex) {
                o = new RuntimeException(ex);
                throw o;
            }
        }
        catch (Exception ex2) {}
        try {
            final BgDataModel sBgDataModel2;
            final BgDataModel sBgDataModel = sBgDataModel2 = LauncherModel.sBgDataModel;
            final ArrayList workspaceScreens2;
            final ArrayList workspaceScreens = workspaceScreens2 = sBgDataModel2.workspaceScreens;
            workspaceScreens2.clear();
            final BgDataModel sBgDataModel4;
            final BgDataModel sBgDataModel3 = sBgDataModel4 = LauncherModel.sBgDataModel;
            final ArrayList list2 = sBgDataModel4.workspaceScreens;
            final LauncherModel$3 launcherModel$3 = this;
            final ArrayList list3 = launcherModel$3.val$screensCopy;
            final ArrayList list4 = list2;
            final ArrayList list5 = list3;
            list4.addAll(list5);
        }
        finally {
        }
        // monitorexit(o)
    }
}

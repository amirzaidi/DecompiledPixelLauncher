// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.widget;

import java.util.Comparator;
import java.util.Collections;
import com.android.launcher3.model.PackageItemInfo;
import java.util.Map;
import com.android.launcher3.util.MultiHashMap;
import android.view.ViewGroup;
import android.view.View;
import android.support.v7.widget.j;
import java.util.Iterator;
import java.util.Collection;
import com.android.launcher3.model.WidgetItem;
import java.util.List;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.LauncherAppState;
import android.content.Context;
import com.android.launcher3.WidgetPreviewLoader;
import android.view.LayoutInflater;
import com.android.launcher3.compat.AlphabeticIndexCompat;
import android.view.View$OnLongClickListener;
import android.view.View$OnClickListener;
import java.util.ArrayList;
import android.support.v7.widget.q;

public class WidgetsListAdapter extends q
{
    private final ArrayList mEntries;
    private final View$OnClickListener mIconClickListener;
    private final View$OnLongClickListener mIconLongClickListener;
    private final int mIndent;
    private final AlphabeticIndexCompat mIndexer;
    private final LayoutInflater mLayoutInflater;
    private final WidgetPreviewLoader mWidgetPreviewLoader;
    
    public WidgetsListAdapter(final View$OnClickListener mIconClickListener, final View$OnLongClickListener mIconLongClickListener, final Context context) {
        this.mEntries = new ArrayList();
        this.mLayoutInflater = LayoutInflater.from(context);
        this.mWidgetPreviewLoader = LauncherAppState.getInstance(context).getWidgetCache();
        this.mIndexer = new AlphabeticIndexCompat(context);
        this.mIconClickListener = mIconClickListener;
        this.mIconLongClickListener = mIconLongClickListener;
        this.mIndent = context.getResources().getDimensionPixelSize(2131427404);
    }
    
    public List copyWidgetsForPackageUser(final PackageUserKey packageUserKey) {
        for (final WidgetListRowEntry widgetListRowEntry : this.mEntries) {
            if (widgetListRowEntry.pkgItem.packageName.equals(packageUserKey.mPackageName)) {
                final ArrayList list = new ArrayList<WidgetItem>(widgetListRowEntry.widgets);
                final Iterator<WidgetItem> iterator2 = list.iterator();
                while (iterator2.hasNext()) {
                    if (!iterator2.next().user.equals((Object)packageUserKey.mUser)) {
                        iterator2.remove();
                    }
                }
                List<WidgetItem> list2;
                if (list.isEmpty()) {
                    list2 = null;
                }
                else {
                    list2 = (List<WidgetItem>)list;
                }
                return list2;
            }
        }
        return null;
    }
    
    public int getItemCount() {
        return this.mEntries.size();
    }
    
    public long getItemId(final int n) {
        return n;
    }
    
    public String getSectionName(final int n) {
        return this.mEntries.get(n).titleSectionName;
    }
    
    public void onBindViewHolder(final WidgetsRowViewHolder widgetsRowViewHolder, final int n) {
        final WidgetListRowEntry widgetListRowEntry = this.mEntries.get(n);
        final ArrayList widgets = widgetListRowEntry.widgets;
        final ViewGroup cellContainer = widgetsRowViewHolder.cellContainer;
        final int n2 = Math.max(0, widgets.size() - 1) + widgets.size();
        int i = cellContainer.getChildCount();
        if (n2 > i) {
            while (i < n2) {
                if ((i & 0x1) == 0x1) {
                    this.mLayoutInflater.inflate(2130968627, cellContainer);
                }
                else {
                    final WidgetCell widgetCell = (WidgetCell)this.mLayoutInflater.inflate(2130968625, cellContainer, false);
                    widgetCell.setOnClickListener(this.mIconClickListener);
                    widgetCell.setOnLongClickListener(this.mIconLongClickListener);
                    cellContainer.addView((View)widgetCell);
                }
                ++i;
            }
        }
        else if (n2 < i) {
            for (int j = n2; j < i; ++j) {
                cellContainer.getChildAt(j).setVisibility(8);
            }
        }
        widgetsRowViewHolder.title.applyFromPackageItemInfo(widgetListRowEntry.pkgItem);
        for (int k = 0; k < widgets.size(); ++k) {
            final WidgetCell widgetCell2 = (WidgetCell)cellContainer.getChildAt(k * 2);
            widgetCell2.applyFromCellItem(widgets.get(k), this.mWidgetPreviewLoader);
            widgetCell2.ensurePreview();
            widgetCell2.setVisibility(0);
            if (k > 0) {
                cellContainer.getChildAt(k * 2 - 1).setVisibility(0);
            }
        }
    }
    
    public WidgetsRowViewHolder onCreateViewHolder(final ViewGroup viewGroup, final int n) {
        final ViewGroup viewGroup2 = (ViewGroup)this.mLayoutInflater.inflate(2130968629, viewGroup, false);
        viewGroup2.findViewById(2131624050).setPaddingRelative(this.mIndent, 0, 1, 0);
        return new WidgetsRowViewHolder(viewGroup2);
    }
    
    public boolean onFailedToRecycleView(final WidgetsRowViewHolder widgetsRowViewHolder) {
        return true;
    }
    
    public void onViewRecycled(final WidgetsRowViewHolder widgetsRowViewHolder) {
        for (int childCount = widgetsRowViewHolder.cellContainer.getChildCount(), i = 0; i < childCount; i += 2) {
            ((WidgetCell)widgetsRowViewHolder.cellContainer.getChildAt(i)).clear();
        }
    }
    
    public void setWidgets(final MultiHashMap multiHashMap) {
        this.mEntries.clear();
        final WidgetItemComparator widgetItemComparator = new WidgetItemComparator();
        for (final Map.Entry<PackageItemInfo, Object> entry : multiHashMap.entrySet()) {
            final WidgetListRowEntry widgetListRowEntry = new WidgetListRowEntry(entry.getKey(), entry.getValue());
            widgetListRowEntry.titleSectionName = this.mIndexer.computeSectionName(widgetListRowEntry.pkgItem.title);
            Collections.sort((List<Object>)widgetListRowEntry.widgets, widgetItemComparator);
            this.mEntries.add(widgetListRowEntry);
        }
        Collections.sort((List<Object>)this.mEntries, new WidgetsListAdapter$WidgetListRowEntryComparator());
    }
}

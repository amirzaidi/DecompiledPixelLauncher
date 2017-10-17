// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import java.util.Iterator;
import java.util.ArrayList;
import java.util.Collections;
import com.android.launcher3.shortcuts.ShortcutInfoCompat;
import android.widget.ImageView;
import com.android.launcher3.shortcuts.DeepShortcutView;
import android.view.View;
import android.content.Context;
import com.android.launcher3.notification.NotificationItemView;
import java.util.List;
import android.os.Handler;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.Launcher;
import java.util.Comparator;

public class PopupPopulator
{
    static final int NUM_DYNAMIC = 2;
    private static final Comparator SHORTCUT_RANK_COMPARATOR;
    
    static {
        SHORTCUT_RANK_COMPARATOR = new PopupPopulator$1();
    }
    
    public static Runnable createUpdateRunnable(final Launcher launcher, final ItemInfo itemInfo, final Handler handler, final PopupContainerWithArrow popupContainerWithArrow, final List list, final List list2, final List list3, final NotificationItemView notificationItemView, final List list4, final List list5) {
        return new PopupPopulator$2(notificationItemView, launcher, list3, handler, itemInfo.getTargetComponent(), list, itemInfo.user, list2, popupContainerWithArrow, list4, list5, itemInfo);
    }
    
    public static PopupPopulator$Item[] getItemsToPopulate(final List list, final List list2, final List list3) {
        int n = 1;
        int i = 0;
        int n2;
        if (list2.size() > 0) {
            n2 = n;
        }
        else {
            n2 = 0;
        }
        if (n2 == 0) {
            n = 0;
        }
        final int n3 = list3.size() + (n + Math.min(4, list.size()));
        final PopupPopulator$Item[] array = new PopupPopulator$Item[n3];
        for (int j = 0; j < n3; ++j) {
            array[j] = PopupPopulator$Item.SHORTCUT;
        }
        if (n2 != 0) {
            array[0] = PopupPopulator$Item.NOTIFICATION;
        }
        final boolean b = list.isEmpty() ^ true;
        while (i < list3.size()) {
            final int n4 = n3 - 1 - i;
            PopupPopulator$Item popupPopulator$Item;
            if (b) {
                popupPopulator$Item = PopupPopulator$Item.SYSTEM_SHORTCUT_ICON;
            }
            else {
                popupPopulator$Item = PopupPopulator$Item.SYSTEM_SHORTCUT;
            }
            array[n4] = popupPopulator$Item;
            ++i;
        }
        return array;
    }
    
    public static void initializeSystemShortcut(final Context context, final View view, final SystemShortcut tag) {
        if (view instanceof DeepShortcutView) {
            final DeepShortcutView deepShortcutView = (DeepShortcutView)view;
            deepShortcutView.getIconView().setBackground(tag.getIcon(context));
            deepShortcutView.getBubbleText().setText((CharSequence)tag.getLabel(context));
        }
        else if (view instanceof ImageView) {
            final ImageView imageView = (ImageView)view;
            imageView.setImageDrawable(tag.getIcon(context));
            imageView.setContentDescription((CharSequence)tag.getLabel(context));
        }
        view.setTag((Object)tag);
    }
    
    public static PopupPopulator$Item[] reverseItems(final PopupPopulator$Item[] array) {
        if (array == null) {
            return null;
        }
        final int length = array.length;
        final PopupPopulator$Item[] array2 = new PopupPopulator$Item[length];
        for (int i = 0; i < length; ++i) {
            array2[i] = array[length - i - 1];
        }
        return array2;
    }
    
    public static List sortAndFilterShortcuts(final List list, final String s) {
        int n = 0;
        final int n2 = 4;
        if (s != null) {
            final Iterator<ShortcutInfoCompat> iterator = list.iterator();
            while (iterator.hasNext()) {
                if (iterator.next().getId().equals(s)) {
                    iterator.remove();
                    break;
                }
            }
        }
        Collections.sort((List<Object>)list, PopupPopulator.SHORTCUT_RANK_COMPARATOR);
        if (list.size() <= n2) {
            return list;
        }
        final ArrayList list2 = new ArrayList<Object>(n2);
        for (int size = list.size(), i = 0; i < size; ++i) {
            final ShortcutInfoCompat shortcutInfoCompat = list.get(i);
            final int size2 = list2.size();
            if (size2 < n2) {
                list2.add(shortcutInfoCompat);
                int n3;
                if (shortcutInfoCompat.isDynamic()) {
                    n3 = n + 1;
                }
                else {
                    n3 = n;
                }
                n = n3;
            }
            else if (shortcutInfoCompat.isDynamic() && n < 2) {
                ++n;
                list2.remove(size2 - n);
                list2.add(shortcutInfoCompat);
            }
        }
        return list2;
    }
}

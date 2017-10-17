// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import com.android.launcher3.DeviceProfile;
import android.view.View;
import com.android.launcher3.ShortcutAndWidgetContainer;
import com.android.launcher3.CellLayout$LayoutParams;
import com.android.launcher3.CellLayout;
import java.util.Arrays;
import java.lang.reflect.Array;

public class FocusLogic
{
    private static int[][] createFullMatrix(final int n, final int n2) {
        int i = 0;
        final int[][] array = (int[][])Array.newInstance(Integer.TYPE, n, n2);
        while (i < n) {
            Arrays.fill(array[i], -1);
            ++i;
        }
        return array;
    }
    
    public static int[][] createSparseMatrix(final CellLayout cellLayout) {
        final ShortcutAndWidgetContainer shortcutsAndWidgets = cellLayout.getShortcutsAndWidgets();
        final int countX = cellLayout.getCountX();
        final int countY = cellLayout.getCountY();
        final boolean invertLayoutHorizontally = shortcutsAndWidgets.invertLayoutHorizontally();
        final int[][] fullMatrix = createFullMatrix(countX, countY);
        for (int i = 0; i < shortcutsAndWidgets.getChildCount(); ++i) {
            final View child = shortcutsAndWidgets.getChildAt(i);
            if (child.isFocusable()) {
                final int cellX = ((CellLayout$LayoutParams)child.getLayoutParams()).cellX;
                final int cellY = ((CellLayout$LayoutParams)child.getLayoutParams()).cellY;
                int n;
                if (invertLayoutHorizontally) {
                    n = countX - cellX - 1;
                }
                else {
                    n = cellX;
                }
                fullMatrix[n][cellY] = i;
            }
        }
        return fullMatrix;
    }
    
    public static int[][] createSparseMatrixWithHotseat(final CellLayout cellLayout, final CellLayout cellLayout2, final DeviceProfile deviceProfile) {
        final ShortcutAndWidgetContainer shortcutsAndWidgets = cellLayout.getShortcutsAndWidgets();
        final ShortcutAndWidgetContainer shortcutsAndWidgets2 = cellLayout2.getShortcutsAndWidgets();
        final boolean b = deviceProfile.isVerticalBarLayout() ^ true;
        int countX;
        int countY;
        if (b) {
            countX = cellLayout2.getCountX();
            countY = cellLayout.getCountY() + cellLayout2.getCountY();
        }
        else {
            countX = cellLayout2.getCountX() + cellLayout.getCountX();
            countY = cellLayout2.getCountY();
        }
        final int[][] fullMatrix = createFullMatrix(countX, countY);
        for (int i = 0; i < shortcutsAndWidgets.getChildCount(); ++i) {
            final View child = shortcutsAndWidgets.getChildAt(i);
            if (child.isFocusable()) {
                fullMatrix[((CellLayout$LayoutParams)child.getLayoutParams()).cellX][((CellLayout$LayoutParams)child.getLayoutParams()).cellY] = i;
            }
        }
        for (int j = shortcutsAndWidgets2.getChildCount() - 1; j >= 0; --j) {
            if (b) {
                fullMatrix[((CellLayout$LayoutParams)shortcutsAndWidgets2.getChildAt(j).getLayoutParams()).cellX][cellLayout.getCountY()] = shortcutsAndWidgets.getChildCount() + j;
            }
            else {
                fullMatrix[cellLayout.getCountX()][((CellLayout$LayoutParams)shortcutsAndWidgets2.getChildAt(j).getLayoutParams()).cellY] = shortcutsAndWidgets.getChildCount() + j;
            }
        }
        return fullMatrix;
    }
    
    public static int[][] createSparseMatrixWithPivotColumn(final CellLayout cellLayout, final int n, final int n2) {
        final int n3 = 100;
        final ShortcutAndWidgetContainer shortcutsAndWidgets = cellLayout.getShortcutsAndWidgets();
        final int[][] fullMatrix = createFullMatrix(cellLayout.getCountX() + 1, cellLayout.getCountY());
        for (int i = 0; i < shortcutsAndWidgets.getChildCount(); ++i) {
            final View child = shortcutsAndWidgets.getChildAt(i);
            if (child.isFocusable()) {
                final int cellX = ((CellLayout$LayoutParams)child.getLayoutParams()).cellX;
                final int cellY = ((CellLayout$LayoutParams)child.getLayoutParams()).cellY;
                if (n < 0) {
                    fullMatrix[cellX - n][cellY] = i;
                }
                else {
                    fullMatrix[cellX][cellY] = i;
                }
            }
        }
        if (n < 0) {
            fullMatrix[0][n2] = n3;
        }
        else {
            fullMatrix[n][n2] = n3;
        }
        return fullMatrix;
    }
    
    public static View getAdjacentChildInNextFolderPage(final ShortcutAndWidgetContainer shortcutAndWidgetContainer, final View view, final int n) {
        int i = 0;
        final int cellY = ((CellLayout$LayoutParams)view.getLayoutParams()).cellY;
        if (!((n == -9 && true) ^ shortcutAndWidgetContainer.invertLayoutHorizontally())) {
            i = ((CellLayout)shortcutAndWidgetContainer.getParent()).getCountX() - 1;
        }
        while (i >= 0) {
            for (int j = cellY; j >= 0; --j) {
                final View child = shortcutAndWidgetContainer.getChildAt(i, j);
                if (child != null) {
                    return child;
                }
            }
            --i;
        }
        return null;
    }
    
    private static int handleDpadHorizontal(final int n, final int n2, final int n3, final int[][] array, final int n4, final boolean b) {
        if (array == null) {
            throw new IllegalStateException("Dpad navigation requires a matrix.");
        }
        final int n5 = -1;
        int n6 = -1;
        int n7 = -1;
        int n8;
        int n9;
        for (int i = 0; i < n2; ++i, n7 = n8, n6 = n9) {
            int j = 0;
            n8 = n7;
            n9 = n6;
            while (j < n3) {
                if (array[i][j] == n) {
                    n8 = j;
                    n9 = i;
                }
                ++j;
            }
        }
        int n10 = n6 + n4;
        int inspectMatrix = n5;
        while (n10 >= 0 && n10 < n2) {
            inspectMatrix = inspectMatrix(n10, n7, n2, n3, array);
            if (inspectMatrix != -1 && inspectMatrix != -11) {
                return inspectMatrix;
            }
            n10 += n4;
        }
        int n11 = 0;
        float n12 = 0.0f;
        int k = 1;
        boolean b2 = false;
        while (k < n3) {
            final int n13 = n7 + k * n4;
            final int n14 = n7 - k * n4;
            final int n15 = n4 * k + n6;
            if (inspectMatrix(n15, n13, n2, n3, array) == -11) {
                b2 = true;
            }
            int n18;
            int n19;
            float n20;
            int n21;
            if (inspectMatrix(n15, n14, n2, n3, array) == -11) {
                final float n16 = Float.MIN_VALUE;
                final int n17 = n15;
                n18 = inspectMatrix;
                n19 = 1;
                n20 = n16;
                n21 = n17;
            }
            else {
                final int n22 = n15;
                n18 = inspectMatrix;
                n19 = n11;
                n20 = n12;
                n21 = n22;
            }
            while (n21 >= 0 && n21 < n2) {
                int n23;
                if (b2 && n21 < n2 - 1) {
                    n23 = n4;
                }
                else {
                    n23 = 0;
                }
                final int inspectMatrix2 = inspectMatrix(n21, n23 + n13, n2, n3, array);
                if (inspectMatrix2 != -1) {
                    return inspectMatrix2;
                }
                int n24;
                if (n19 != 0 && n21 < n2 - 1) {
                    n24 = -n4;
                }
                else {
                    n24 = 0;
                }
                final int inspectMatrix3 = inspectMatrix(n21, n24 + n14, n2, n3, array);
                if (inspectMatrix3 != -1) {
                    return inspectMatrix3;
                }
                n21 += n4;
                n18 = inspectMatrix3;
            }
            ++k;
            n11 = n19;
            n12 = n20;
            inspectMatrix = n18;
        }
        if (n != 100) {
            return inspectMatrix;
        }
        if (b) {
            int n25;
            if (n4 < 0) {
                n25 = -8;
            }
            else {
                n25 = -4;
            }
            return n25;
        }
        int n26;
        if (n4 < 0) {
            n26 = -4;
        }
        else {
            n26 = -8;
        }
        return n26;
    }
    
    private static int handleDpadVertical(final int n, final int n2, final int n3, final int[][] array, final int n4) {
        final int n5 = -1;
        if (array == null) {
            throw new IllegalStateException("Dpad navigation requires a matrix.");
        }
        int n6 = -1;
        int n7 = -1;
        int n8;
        int n9;
        for (int i = 0; i < n2; ++i, n7 = n8, n6 = n9) {
            int j = 0;
            n8 = n7;
            n9 = n6;
            while (j < n3) {
                if (array[i][j] == n) {
                    n8 = j;
                    n9 = i;
                }
                ++j;
            }
        }
        int n10 = n7 + n4;
        int inspectMatrix = n5;
        while (n10 >= 0 && n10 < n3 && n10 >= 0) {
            inspectMatrix = inspectMatrix(n6, n10, n2, n3, array);
            if (inspectMatrix != -1 && inspectMatrix != -11) {
                return inspectMatrix;
            }
            n10 += n4;
        }
        int n11 = 0;
        float n12 = 0.0f;
        int k = 1;
        boolean b = false;
        while (k < n2) {
            final int n13 = n6 + k * n4;
            final int n14 = n6 - k * n4;
            final int n15 = n4 * k + n7;
            if (inspectMatrix(n13, n15, n2, n3, array) == -11) {
                b = true;
            }
            int n18;
            int n19;
            float n20;
            int n21;
            if (inspectMatrix(n14, n15, n2, n3, array) == -11) {
                final float n16 = Float.MIN_VALUE;
                final int n17 = n15;
                n18 = inspectMatrix;
                n19 = 1;
                n20 = n16;
                n21 = n17;
            }
            else {
                final int n22 = n15;
                n18 = inspectMatrix;
                n19 = n11;
                n20 = n12;
                n21 = n22;
            }
            while (n21 >= 0 && n21 < n3) {
                int n23;
                if (b && n21 < n3 - 1) {
                    n23 = n4;
                }
                else {
                    n23 = 0;
                }
                final int inspectMatrix2 = inspectMatrix(n23 + n13, n21, n2, n3, array);
                if (inspectMatrix2 != -1) {
                    return inspectMatrix2;
                }
                int n24;
                if (n19 != 0 && n21 < n3 - 1) {
                    n24 = -n4;
                }
                else {
                    n24 = 0;
                }
                final int inspectMatrix3 = inspectMatrix(n24 + n14, n21, n2, n3, array);
                if (inspectMatrix3 != -1) {
                    return inspectMatrix3;
                }
                n21 += n4;
                n18 = inspectMatrix3;
            }
            ++k;
            n11 = n19;
            n12 = n20;
            inspectMatrix = n18;
        }
        return inspectMatrix;
    }
    
    public static int handleKeyEvent(final int n, final int[][] array, final int n2, final int n3, final int n4, final boolean b) {
        int length;
        if (array == null) {
            length = -1;
        }
        else {
            length = array.length;
        }
        int length2;
        if (array == null) {
            length2 = -1;
        }
        else {
            length2 = array[0].length;
        }
        int n5 = -1;
        switch (n) {
            case 21: {
                n5 = handleDpadHorizontal(n2, length, length2, array, -1, b);
                if (!b && n5 == -1 && n3 > 0) {
                    n5 = -2;
                    break;
                }
                if (b && n5 == -1 && n3 < n4 - 1) {
                    n5 = -10;
                    break;
                }
                break;
            }
            case 22: {
                n5 = handleDpadHorizontal(n2, length, length2, array, 1, b);
                if (!b && n5 == -1 && n3 < n4 - 1) {
                    n5 = -9;
                    break;
                }
                if (b && n5 == -1 && n3 > 0) {
                    n5 = -5;
                    break;
                }
                break;
            }
            case 20: {
                n5 = handleDpadVertical(n2, length, length2, array, 1);
                break;
            }
            case 19: {
                n5 = handleDpadVertical(n2, length, length2, array, -1);
                break;
            }
            case 122: {
                n5 = handleMoveHome();
                break;
            }
            case 123: {
                n5 = handleMoveEnd();
                break;
            }
            case 93: {
                n5 = handlePageDown(n3, n4);
                break;
            }
            case 92: {
                n5 = handlePageUp(n3);
                break;
            }
        }
        return n5;
    }
    
    private static int handleMoveEnd() {
        return -7;
    }
    
    private static int handleMoveHome() {
        return -6;
    }
    
    private static int handlePageDown(final int n, final int n2) {
        if (n < n2 - 1) {
            return -8;
        }
        return -7;
    }
    
    private static int handlePageUp(final int n) {
        if (n > 0) {
            return -3;
        }
        return -6;
    }
    
    private static int inspectMatrix(final int n, final int n2, final int n3, final int n4, final int[][] array) {
        final int n5 = -1;
        if (isValid(n, n2, n3, n4) && array[n][n2] != n5) {
            return array[n][n2];
        }
        return n5;
    }
    
    private static boolean isValid(final int n, final int n2, final int n3, final int n4) {
        boolean b = false;
        if (n >= 0 && n < n3 && n2 >= 0 && n2 < n4) {
            b = true;
        }
        return b;
    }
    
    public static boolean shouldConsume(final int n) {
        boolean b = true;
        if (n != 21 && n != 22 && n != 19 && n != 20 && n != 122 && n != 123 && n != 92 && n != 93) {
            b = false;
        }
        return b;
    }
}

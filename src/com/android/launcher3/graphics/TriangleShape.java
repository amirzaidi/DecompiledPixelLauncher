// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.drawable.shapes.PathShape;

public class TriangleShape extends PathShape
{
    private Path mTriangularPath;
    
    public TriangleShape(final Path mTriangularPath, final float n, final float n2) {
        super(mTriangularPath, n, n2);
        this.mTriangularPath = mTriangularPath;
    }
    
    public static TriangleShape create(final float n, final float n2, final boolean b) {
        final float n3 = 2.0f;
        final Path path = new Path();
        if (b) {
            path.moveTo(0.0f, n2);
            path.lineTo(n, n2);
            path.lineTo(n / n3, 0.0f);
            path.close();
        }
        else {
            path.moveTo(0.0f, 0.0f);
            path.lineTo(n / n3, n2);
            path.lineTo(n, 0.0f);
            path.close();
        }
        return new TriangleShape(path, n, n2);
    }
    
    public void getOutline(final Outline outline) {
        outline.setConvexPath(this.mTriangularPath);
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.util.concurrent.Callable;

class n implements Callable
{
    int Nw;
    c Nx;
    private int Ny;
    int Nz;
    
    public n(final int ny, final int nw, final int nz, final c nx) {
        this.Ny = ny;
        this.Nw = nw;
        this.Nz = nz;
        this.Nx = nx;
    }
    
    public Boolean call() {
        for (int i = this.Nw * this.Ny; i < Math.min(this.Nz, (this.Ny + 1) * this.Nw); ++i) {
            this.Nx.Vo(i);
        }
        return true;
    }
}

// 
// Decompiled by Procyon v0.5.30
// 

package com.google.protobuf.nano;

import java.io.IOException;

public class CodedOutputByteBufferNano$OutOfSpaceException extends IOException
{
    private static final long serialVersionUID = -6947486886997889499L;
    
    CodedOutputByteBufferNano$OutOfSpaceException(final int n, final int n2) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space (pos " + n + " limit " + n2 + ").");
    }
}

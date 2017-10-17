// 
// Decompiled by Procyon v0.5.30
// 

package com.google.protobuf.nano;

import java.io.IOException;

public class InvalidProtocolBufferNanoException extends IOException
{
    private static final long serialVersionUID = -1616151763072450476L;
    
    public InvalidProtocolBufferNanoException(final String s) {
        super(s);
    }
    
    static InvalidProtocolBufferNanoException We() {
        return new InvalidProtocolBufferNanoException("Protocol message tag had invalid wire type.");
    }
    
    static InvalidProtocolBufferNanoException Wf() {
        return new InvalidProtocolBufferNanoException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }
    
    static InvalidProtocolBufferNanoException Wg() {
        return new InvalidProtocolBufferNanoException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
    }
    
    static InvalidProtocolBufferNanoException Wh() {
        return new InvalidProtocolBufferNanoException("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }
    
    static InvalidProtocolBufferNanoException Wi() {
        return new InvalidProtocolBufferNanoException("CodedInputStream encountered a malformed varint.");
    }
    
    static InvalidProtocolBufferNanoException Wj() {
        return new InvalidProtocolBufferNanoException("Protocol message contained an invalid tag (zero).");
    }
    
    static InvalidProtocolBufferNanoException Wk() {
        return new InvalidProtocolBufferNanoException("Protocol message end-group tag did not match expected tag.");
    }
}

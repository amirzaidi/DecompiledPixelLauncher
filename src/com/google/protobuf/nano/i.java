// 
// Decompiled by Procyon v0.5.30
// 

package com.google.protobuf.nano;

import java.lang.reflect.InvocationTargetException;

public final class i
{
    private static void Tj(final String p0, final Object p1, final StringBuffer p2, final StringBuffer p3) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore          4
        //     3: aload_1        
        //     4: ifnonnull       8
        //     7: return         
        //     8: aload_1        
        //     9: instanceof      Lcom/google/protobuf/nano/a;
        //    12: istore          5
        //    14: iload           5
        //    16: ifeq            649
        //    19: aload_2        
        //    20: invokevirtual   java/lang/StringBuffer.length:()I
        //    23: istore          6
        //    25: aload_0        
        //    26: ifnull          74
        //    29: aload_3        
        //    30: aload_2        
        //    31: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
        //    34: astore          7
        //    36: aload_0        
        //    37: invokestatic    com/google/protobuf/nano/i.Tl:(Ljava/lang/String;)Ljava/lang/String;
        //    40: astore          8
        //    42: aload           7
        //    44: aload           8
        //    46: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //    49: astore          7
        //    51: ldc             " <\n"
        //    53: astore          8
        //    55: aload           7
        //    57: aload           8
        //    59: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //    62: pop            
        //    63: ldc             "  "
        //    65: astore          7
        //    67: aload_2        
        //    68: aload           7
        //    70: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //    73: pop            
        //    74: aload_1        
        //    75: invokevirtual   java/lang/Object.getClass:()Ljava/lang/Class;
        //    78: astore          9
        //    80: aload           9
        //    82: invokevirtual   java/lang/Class.getFields:()[Ljava/lang/reflect/Field;
        //    85: astore          10
        //    87: aload           10
        //    89: arraylength    
        //    90: istore          11
        //    92: iconst_0       
        //    93: istore          12
        //    95: aconst_null    
        //    96: astore          13
        //    98: iload           12
        //   100: iload           11
        //   102: if_icmpge       362
        //   105: aload           10
        //   107: iload           12
        //   109: aaload         
        //   110: astore          7
        //   112: aload           7
        //   114: invokevirtual   java/lang/reflect/Field.getModifiers:()I
        //   117: istore          14
        //   119: aload           7
        //   121: invokevirtual   java/lang/reflect/Field.getName:()Ljava/lang/String;
        //   124: astore          15
        //   126: ldc             "cachedSize"
        //   128: astore          16
        //   130: aload           16
        //   132: aload           15
        //   134: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   137: istore          17
        //   139: iload           17
        //   141: ifeq            157
        //   144: iload           12
        //   146: iconst_1       
        //   147: iadd           
        //   148: istore          5
        //   150: iload           5
        //   152: istore          12
        //   154: goto            98
        //   157: iload           14
        //   159: iconst_1       
        //   160: iand           
        //   161: istore          17
        //   163: iconst_1       
        //   164: istore          18
        //   166: iload           17
        //   168: iload           18
        //   170: if_icmpne       144
        //   173: iload           14
        //   175: bipush          8
        //   177: iand           
        //   178: istore          14
        //   180: bipush          8
        //   182: istore          17
        //   184: iload           14
        //   186: iload           17
        //   188: if_icmpeq       144
        //   191: ldc             "_"
        //   193: astore          8
        //   195: aload           15
        //   197: aload           8
        //   199: invokevirtual   java/lang/String.startsWith:(Ljava/lang/String;)Z
        //   202: iconst_1       
        //   203: ixor           
        //   204: istore          14
        //   206: iload           14
        //   208: ifeq            144
        //   211: ldc             "_"
        //   213: astore          8
        //   215: aload           15
        //   217: aload           8
        //   219: invokevirtual   java/lang/String.endsWith:(Ljava/lang/String;)Z
        //   222: iconst_1       
        //   223: ixor           
        //   224: istore          14
        //   226: iload           14
        //   228: ifeq            144
        //   231: aload           7
        //   233: invokevirtual   java/lang/reflect/Field.getType:()Ljava/lang/Class;
        //   236: astore          8
        //   238: aload           7
        //   240: aload_1        
        //   241: invokevirtual   java/lang/reflect/Field.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   244: astore          16
        //   246: aload           8
        //   248: invokevirtual   java/lang/Class.isArray:()Z
        //   251: istore          5
        //   253: iload           5
        //   255: ifeq            350
        //   258: aload           8
        //   260: invokevirtual   java/lang/Class.getComponentType:()Ljava/lang/Class;
        //   263: astore          7
        //   265: getstatic       java/lang/Byte.TYPE:Ljava/lang/Class;
        //   268: astore          8
        //   270: aload           7
        //   272: aload           8
        //   274: if_acmpne       289
        //   277: aload           15
        //   279: aload           16
        //   281: aload_2        
        //   282: aload_3        
        //   283: invokestatic    com/google/protobuf/nano/i.Tj:(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
        //   286: goto            144
        //   289: aload           16
        //   291: ifnonnull       340
        //   294: iconst_0       
        //   295: istore          5
        //   297: aconst_null    
        //   298: astore          7
        //   300: iconst_0       
        //   301: istore          14
        //   303: aconst_null    
        //   304: astore          8
        //   306: iload           14
        //   308: iload           5
        //   310: if_icmpge       144
        //   313: aload           16
        //   315: iload           14
        //   317: invokestatic    java/lang/reflect/Array.get:(Ljava/lang/Object;I)Ljava/lang/Object;
        //   320: astore          19
        //   322: aload           15
        //   324: aload           19
        //   326: aload_2        
        //   327: aload_3        
        //   328: invokestatic    com/google/protobuf/nano/i.Tj:(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
        //   331: iload           14
        //   333: iconst_1       
        //   334: iadd           
        //   335: istore          14
        //   337: goto            306
        //   340: aload           16
        //   342: invokestatic    java/lang/reflect/Array.getLength:(Ljava/lang/Object;)I
        //   345: istore          5
        //   347: goto            300
        //   350: aload           15
        //   352: aload           16
        //   354: aload_2        
        //   355: aload_3        
        //   356: invokestatic    com/google/protobuf/nano/i.Tj:(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
        //   359: goto            144
        //   362: aload           9
        //   364: invokevirtual   java/lang/Class.getMethods:()[Ljava/lang/reflect/Method;
        //   367: astore          13
        //   369: aload           13
        //   371: arraylength    
        //   372: istore          20
        //   374: iconst_0       
        //   375: istore          14
        //   377: aconst_null    
        //   378: astore          8
        //   380: iload           14
        //   382: iload           20
        //   384: if_icmpge       617
        //   387: aload           13
        //   389: iload           14
        //   391: aaload         
        //   392: invokevirtual   java/lang/reflect/Method.getName:()Ljava/lang/String;
        //   395: astore          7
        //   397: ldc             "set"
        //   399: astore          21
        //   401: aload           7
        //   403: aload           21
        //   405: invokevirtual   java/lang/String.startsWith:(Ljava/lang/String;)Z
        //   408: istore          11
        //   410: iload           11
        //   412: ifeq            517
        //   415: iconst_3       
        //   416: istore          11
        //   418: aload           7
        //   420: iload           11
        //   422: invokevirtual   java/lang/String.substring:(I)Ljava/lang/String;
        //   425: astore          21
        //   427: new             Ljava/lang/StringBuilder;
        //   430: astore          7
        //   432: aload           7
        //   434: invokespecial   java/lang/StringBuilder.<init>:()V
        //   437: ldc             "has"
        //   439: astore          15
        //   441: aload           7
        //   443: aload           15
        //   445: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   448: astore          7
        //   450: aload           7
        //   452: aload           21
        //   454: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   457: astore          7
        //   459: aload           7
        //   461: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   464: astore          7
        //   466: aconst_null    
        //   467: astore          15
        //   469: iconst_0       
        //   470: anewarray       Ljava/lang/Class;
        //   473: astore          15
        //   475: aload           9
        //   477: aload           7
        //   479: aload           15
        //   481: invokevirtual   java/lang/Class.getMethod:(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
        //   484: astore          7
        //   486: iconst_0       
        //   487: anewarray       Ljava/lang/Object;
        //   490: astore          15
        //   492: aload           7
        //   494: aload_1        
        //   495: aload           15
        //   497: invokevirtual   java/lang/reflect/Method.invoke:(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
        //   500: checkcast       Ljava/lang/Boolean;
        //   503: astore          7
        //   505: aload           7
        //   507: invokevirtual   java/lang/Boolean.booleanValue:()Z
        //   510: istore          5
        //   512: iload           5
        //   514: ifne            530
        //   517: iload           14
        //   519: iconst_1       
        //   520: iadd           
        //   521: istore          5
        //   523: iload           5
        //   525: istore          14
        //   527: goto            380
        //   530: new             Ljava/lang/StringBuilder;
        //   533: astore          7
        //   535: aload           7
        //   537: invokespecial   java/lang/StringBuilder.<init>:()V
        //   540: ldc             "get"
        //   542: astore          15
        //   544: aload           7
        //   546: aload           15
        //   548: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   551: astore          7
        //   553: aload           7
        //   555: aload           21
        //   557: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   560: astore          7
        //   562: aload           7
        //   564: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   567: astore          7
        //   569: aconst_null    
        //   570: astore          15
        //   572: iconst_0       
        //   573: anewarray       Ljava/lang/Class;
        //   576: astore          15
        //   578: aload           9
        //   580: aload           7
        //   582: aload           15
        //   584: invokevirtual   java/lang/Class.getMethod:(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
        //   587: astore          7
        //   589: iconst_0       
        //   590: anewarray       Ljava/lang/Object;
        //   593: astore          15
        //   595: aload           7
        //   597: aload_1        
        //   598: aload           15
        //   600: invokevirtual   java/lang/reflect/Method.invoke:(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
        //   603: astore          7
        //   605: aload           21
        //   607: aload           7
        //   609: aload_2        
        //   610: aload_3        
        //   611: invokestatic    com/google/protobuf/nano/i.Tj:(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
        //   614: goto            517
        //   617: aload_0        
        //   618: ifnull          7
        //   621: aload_2        
        //   622: iload           6
        //   624: invokevirtual   java/lang/StringBuffer.setLength:(I)V
        //   627: aload_3        
        //   628: aload_2        
        //   629: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
        //   632: astore          7
        //   634: ldc             ">\n"
        //   636: astore          4
        //   638: aload           7
        //   640: aload           4
        //   642: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   645: pop            
        //   646: goto            7
        //   649: aload_1        
        //   650: instanceof      Ljava/util/Map;
        //   653: istore          5
        //   655: iload           5
        //   657: ifeq            811
        //   660: aload_1        
        //   661: checkcast       Ljava/util/Map;
        //   664: astore_1       
        //   665: aload_0        
        //   666: invokestatic    com/google/protobuf/nano/i.Tl:(Ljava/lang/String;)Ljava/lang/String;
        //   669: astore          4
        //   671: aload_1        
        //   672: invokeinterface java/util/Map.entrySet:()Ljava/util/Set;
        //   677: astore          7
        //   679: aload           7
        //   681: invokeinterface java/lang/Iterable.iterator:()Ljava/util/Iterator;
        //   686: astore          8
        //   688: aload           8
        //   690: invokeinterface java/util/Iterator.hasNext:()Z
        //   695: istore          5
        //   697: iload           5
        //   699: ifeq            7
        //   702: aload           8
        //   704: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   709: checkcast       Ljava/util/Map$Entry;
        //   712: astore          7
        //   714: aload_3        
        //   715: aload_2        
        //   716: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
        //   719: aload           4
        //   721: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   724: ldc             " <\n"
        //   726: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   729: pop            
        //   730: aload_2        
        //   731: invokevirtual   java/lang/StringBuffer.length:()I
        //   734: istore          12
        //   736: aload_2        
        //   737: ldc             "  "
        //   739: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   742: pop            
        //   743: aload           7
        //   745: invokeinterface java/util/Map$Entry.getKey:()Ljava/lang/Object;
        //   750: astore          9
        //   752: ldc             "key"
        //   754: aload           9
        //   756: aload_2        
        //   757: aload_3        
        //   758: invokestatic    com/google/protobuf/nano/i.Tj:(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
        //   761: ldc             "value"
        //   763: astore          22
        //   765: aload           7
        //   767: invokeinterface java/util/Map$Entry.getValue:()Ljava/lang/Object;
        //   772: astore          7
        //   774: aload           22
        //   776: aload           7
        //   778: aload_2        
        //   779: aload_3        
        //   780: invokestatic    com/google/protobuf/nano/i.Tj:(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
        //   783: aload_2        
        //   784: iload           12
        //   786: invokevirtual   java/lang/StringBuffer.setLength:(I)V
        //   789: aload_3        
        //   790: aload_2        
        //   791: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
        //   794: astore          7
        //   796: ldc             ">\n"
        //   798: astore          13
        //   800: aload           7
        //   802: aload           13
        //   804: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   807: pop            
        //   808: goto            688
        //   811: aload_0        
        //   812: invokestatic    com/google/protobuf/nano/i.Tl:(Ljava/lang/String;)Ljava/lang/String;
        //   815: astore          7
        //   817: aload_3        
        //   818: aload_2        
        //   819: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
        //   822: aload           7
        //   824: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   827: astore          7
        //   829: ldc             ": "
        //   831: astore          4
        //   833: aload           7
        //   835: aload           4
        //   837: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   840: pop            
        //   841: aload_1        
        //   842: instanceof      Ljava/lang/String;
        //   845: istore          5
        //   847: iload           5
        //   849: ifeq            902
        //   852: aload_1        
        //   853: checkcast       Ljava/lang/String;
        //   856: astore_1       
        //   857: aload_1        
        //   858: invokestatic    com/google/protobuf/nano/i.Tk:(Ljava/lang/String;)Ljava/lang/String;
        //   861: astore          7
        //   863: aload_3        
        //   864: ldc             "\""
        //   866: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   869: aload           7
        //   871: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   874: astore          7
        //   876: ldc             "\""
        //   878: astore          4
        //   880: aload           7
        //   882: aload           4
        //   884: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   887: pop            
        //   888: ldc             "\n"
        //   890: astore          7
        //   892: aload_3        
        //   893: aload           7
        //   895: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   898: pop            
        //   899: goto            7
        //   902: aload_1        
        //   903: instanceof      [B
        //   906: istore          5
        //   908: iload           5
        //   910: ifeq            926
        //   913: aload_1        
        //   914: checkcast       [B
        //   917: astore_1       
        //   918: aload_1        
        //   919: aload_3        
        //   920: invokestatic    com/google/protobuf/nano/i.Tn:([BLjava/lang/StringBuffer;)V
        //   923: goto            888
        //   926: aload_3        
        //   927: aload_1        
        //   928: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/Object;)Ljava/lang/StringBuffer;
        //   931: pop            
        //   932: goto            888
        //   935: astore          7
        //   937: goto            517
        //   940: astore          7
        //   942: goto            517
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                             
        //  -----  -----  -----  -----  ---------------------------------
        //  427    430    940    945    Ljava/lang/NoSuchMethodException;
        //  432    437    940    945    Ljava/lang/NoSuchMethodException;
        //  443    448    940    945    Ljava/lang/NoSuchMethodException;
        //  452    457    940    945    Ljava/lang/NoSuchMethodException;
        //  459    464    940    945    Ljava/lang/NoSuchMethodException;
        //  469    473    940    945    Ljava/lang/NoSuchMethodException;
        //  479    484    940    945    Ljava/lang/NoSuchMethodException;
        //  530    533    935    940    Ljava/lang/NoSuchMethodException;
        //  535    540    935    940    Ljava/lang/NoSuchMethodException;
        //  546    551    935    940    Ljava/lang/NoSuchMethodException;
        //  555    560    935    940    Ljava/lang/NoSuchMethodException;
        //  562    567    935    940    Ljava/lang/NoSuchMethodException;
        //  572    576    935    940    Ljava/lang/NoSuchMethodException;
        //  582    587    935    940    Ljava/lang/NoSuchMethodException;
        // 
        // The error that occurred was:
        // 
        // java.lang.NullPointerException
        //     at com.strobel.assembler.ir.StackMappingVisitor.push(StackMappingVisitor.java:290)
        //     at com.strobel.assembler.ir.StackMappingVisitor$InstructionAnalyzer.execute(StackMappingVisitor.java:833)
        //     at com.strobel.assembler.ir.StackMappingVisitor$InstructionAnalyzer.visit(StackMappingVisitor.java:398)
        //     at com.strobel.decompiler.ast.AstBuilder.performStackAnalysis(AstBuilder.java:2030)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:108)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:317)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:238)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:123)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    private static String Tk(String string) {
        final int n = 200;
        if (!string.startsWith("http") && string.length() > n) {
            string = string.substring(0, n) + "[...]";
        }
        return To(string);
    }
    
    private static String Tl(final String s) {
        int i = 0;
        final StringBuffer sb = new StringBuffer();
        while (i < s.length()) {
            final char char1 = s.charAt(i);
            if (i == 0) {
                sb.append(Character.toLowerCase(char1));
            }
            else if (Character.isUpperCase(char1)) {
                sb.append('_').append(Character.toLowerCase(char1));
            }
            else {
                sb.append(char1);
            }
            ++i;
        }
        return sb.toString();
    }
    
    public static String Tm(final a a) {
        if (a == null) {
            return "";
        }
        final StringBuffer sb = new StringBuffer();
        try {
            try {
                Tj(null, a, new StringBuffer(), sb);
                return sb.toString();
            }
            catch (InvocationTargetException ex) {
                return "Error printing proto: " + ex.getMessage();
            }
            catch (IllegalAccessException ex2) {
                return "Error printing proto: " + ex2.getMessage();
            }
        }
        catch (InvocationTargetException ex3) {}
        catch (IllegalAccessException ex4) {}
    }
    
    private static void Tn(final byte[] array, final StringBuffer sb) {
        final char c = '\\';
        final char c2 = '\"';
        if (array == null) {
            sb.append("\"\"");
            return;
        }
        sb.append(c2);
        for (int i = 0; i < array.length; ++i) {
            final int n = array[i] & 0xFF;
            if (n == c || n == c2) {
                sb.append(c).append((char)n);
            }
            else if (n >= ' ' && n < '\u007f') {
                sb.append((char)n);
            }
            else {
                sb.append(String.format("\\%03o", n));
            }
        }
        sb.append(c2);
    }
    
    private static String To(final String s) {
        final int length = s.length();
        final StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; ++i) {
            final char char1 = s.charAt(i);
            if (char1 >= ' ' && char1 <= '~' && char1 != '\"' && char1 != '\'') {
                sb.append(char1);
            }
            else {
                sb.append(String.format("\\u%04x", (int)char1));
            }
        }
        return sb.toString();
    }
}

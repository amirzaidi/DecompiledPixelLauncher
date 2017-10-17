// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.logging;

import com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.DeleteDropTarget;
import com.android.launcher3.UninstallDropTarget;
import com.android.launcher3.InfoDropTarget;
import com.android.launcher3.ButtonDropTarget;
import android.view.View;
import com.android.launcher3.userevent.nano.LauncherLogProto$ContainerType;
import com.android.launcher3.userevent.nano.LauncherLogProto$ControlType;
import com.android.launcher3.userevent.nano.LauncherLogProto$ItemType;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.userevent.nano.LauncherLogProto$Action$Command;
import com.android.launcher3.userevent.nano.LauncherLogProto$Action$Direction;
import com.android.launcher3.userevent.nano.LauncherLogProto$Action$Touch;
import com.android.launcher3.userevent.nano.LauncherLogProto$Action;
import android.util.ArrayMap;

public class LoggerUtils
{
    private static final ArrayMap sNameCache;
    
    static {
        sNameCache = new ArrayMap();
    }
    
    public static String getActionStr(final LauncherLogProto$Action launcherLogProto$Action) {
        final String s = "";
        switch (launcherLogProto$Action.type) {
            default: {
                return "UNKNOWN";
            }
            case 0: {
                String s2 = s + getFieldName(launcherLogProto$Action.touch, LauncherLogProto$Action$Touch.class);
                if (launcherLogProto$Action.touch == 3) {
                    s2 = s2 + " direction=" + getFieldName(launcherLogProto$Action.dir, LauncherLogProto$Action$Direction.class);
                }
                return s2;
            }
            case 2: {
                return getFieldName(launcherLogProto$Action.command, LauncherLogProto$Action$Command.class);
            }
        }
    }
    
    public static String getFieldName(final int p0, final Class p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: getstatic       com/android/launcher3/logging/LoggerUtils.sNameCache:Landroid/util/ArrayMap;
        //     3: astore_2       
        //     4: aload_2        
        //     5: monitorenter   
        //     6: getstatic       com/android/launcher3/logging/LoggerUtils.sNameCache:Landroid/util/ArrayMap;
        //     9: astore_3       
        //    10: aload_3        
        //    11: aload_1        
        //    12: invokevirtual   android/util/ArrayMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //    15: astore_3       
        //    16: aload_3        
        //    17: checkcast       Landroid/util/SparseArray;
        //    20: astore_3       
        //    21: aload_3        
        //    22: ifnonnull       163
        //    25: new             Landroid/util/SparseArray;
        //    28: astore_3       
        //    29: aload_3        
        //    30: invokespecial   android/util/SparseArray.<init>:()V
        //    33: aload_1        
        //    34: invokevirtual   java/lang/Class.getDeclaredFields:()[Ljava/lang/reflect/Field;
        //    37: astore          4
        //    39: iconst_0       
        //    40: istore          5
        //    42: aconst_null    
        //    43: astore          6
        //    45: aload           4
        //    47: arraylength    
        //    48: istore          7
        //    50: iload           5
        //    52: iload           7
        //    54: if_icmpge       150
        //    57: aload           4
        //    59: iload           5
        //    61: aaload         
        //    62: astore          8
        //    64: aload           8
        //    66: invokevirtual   java/lang/reflect/Field.getType:()Ljava/lang/Class;
        //    69: astore          9
        //    71: getstatic       java/lang/Integer.TYPE:Ljava/lang/Class;
        //    74: astore          10
        //    76: aload           9
        //    78: aload           10
        //    80: if_acmpne       141
        //    83: aload           8
        //    85: invokevirtual   java/lang/reflect/Field.getModifiers:()I
        //    88: istore          11
        //    90: iload           11
        //    92: invokestatic    java/lang/reflect/Modifier.isStatic:(I)Z
        //    95: istore          11
        //    97: iload           11
        //    99: ifeq            141
        //   102: iconst_1       
        //   103: istore          11
        //   105: aload           8
        //   107: iload           11
        //   109: invokevirtual   java/lang/reflect/Field.setAccessible:(Z)V
        //   112: iconst_0       
        //   113: istore          11
        //   115: aconst_null    
        //   116: astore          9
        //   118: aload           8
        //   120: aconst_null    
        //   121: invokevirtual   java/lang/reflect/Field.getInt:(Ljava/lang/Object;)I
        //   124: istore          11
        //   126: aload           8
        //   128: invokevirtual   java/lang/reflect/Field.getName:()Ljava/lang/String;
        //   131: astore          8
        //   133: aload_3        
        //   134: iload           11
        //   136: aload           8
        //   138: invokevirtual   android/util/SparseArray.put:(ILjava/lang/Object;)V
        //   141: iload           5
        //   143: iconst_1       
        //   144: iadd           
        //   145: istore          5
        //   147: goto            50
        //   150: getstatic       com/android/launcher3/logging/LoggerUtils.sNameCache:Landroid/util/ArrayMap;
        //   153: astore          6
        //   155: aload           6
        //   157: aload_1        
        //   158: aload_3        
        //   159: invokevirtual   android/util/ArrayMap.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   162: pop            
        //   163: aload_2        
        //   164: monitorexit    
        //   165: aload_3        
        //   166: iload_0        
        //   167: invokevirtual   android/util/SparseArray.get:(I)Ljava/lang/Object;
        //   170: checkcast       Ljava/lang/String;
        //   173: astore_3       
        //   174: aload_3        
        //   175: ifnull          185
        //   178: aload_3        
        //   179: areturn        
        //   180: astore_3       
        //   181: aload_2        
        //   182: monitorexit    
        //   183: aload_3        
        //   184: athrow         
        //   185: ldc             "UNKNOWN"
        //   187: astore_3       
        //   188: goto            178
        //   191: astore          8
        //   193: goto            141
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                              
        //  -----  -----  -----  -----  ----------------------------------
        //  6      9      180    185    Any
        //  11     15     180    185    Any
        //  16     20     180    185    Any
        //  25     28     180    185    Any
        //  29     33     180    185    Any
        //  33     37     180    185    Any
        //  45     48     180    185    Any
        //  59     62     180    185    Any
        //  64     69     180    185    Any
        //  71     74     180    185    Any
        //  83     88     180    185    Any
        //  90     95     180    185    Any
        //  107    112    191    196    Ljava/lang/IllegalAccessException;
        //  107    112    180    185    Any
        //  120    124    191    196    Ljava/lang/IllegalAccessException;
        //  120    124    180    185    Any
        //  126    131    191    196    Ljava/lang/IllegalAccessException;
        //  126    131    180    185    Any
        //  136    141    191    196    Ljava/lang/IllegalAccessException;
        //  136    141    180    185    Any
        //  150    153    180    185    Any
        //  158    163    180    185    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0141:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
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
    
    private static String getItemStr(final LauncherLogProto$Target launcherLogProto$Target) {
        String s = getFieldName(launcherLogProto$Target.itemType, LauncherLogProto$ItemType.class);
        if (launcherLogProto$Target.packageNameHash != 0) {
            s = s + ", packageHash=" + launcherLogProto$Target.packageNameHash;
        }
        if (launcherLogProto$Target.componentHash != 0) {
            s = s + ", componentHash=" + launcherLogProto$Target.componentHash;
        }
        if (launcherLogProto$Target.intentHash != 0) {
            s = s + ", intentHash=" + launcherLogProto$Target.intentHash;
        }
        return s + ", grid(" + launcherLogProto$Target.gridX + "," + launcherLogProto$Target.gridY + "), span(" + launcherLogProto$Target.spanX + "," + launcherLogProto$Target.spanY + "), pageIdx=" + launcherLogProto$Target.pageIndex;
    }
    
    public static String getTargetStr(final LauncherLogProto$Target launcherLogProto$Target) {
        if (launcherLogProto$Target == null) {
            return "";
        }
        switch (launcherLogProto$Target.type) {
            default: {
                return "UNKNOWN TARGET TYPE";
            }
            case 1: {
                return getItemStr(launcherLogProto$Target);
            }
            case 2: {
                return getFieldName(launcherLogProto$Target.controlType, LauncherLogProto$ControlType.class);
            }
            case 3: {
                String s = getFieldName(launcherLogProto$Target.containerType, LauncherLogProto$ContainerType.class);
                if (launcherLogProto$Target.containerType == 1) {
                    s = s + " id=" + launcherLogProto$Target.pageIndex;
                }
                else if (launcherLogProto$Target.containerType == 3) {
                    s = s + " grid(" + launcherLogProto$Target.gridX + "," + launcherLogProto$Target.gridY + ")";
                }
                return s;
            }
        }
    }
    
    public static LauncherLogProto$Action newAction(final int type) {
        final LauncherLogProto$Action launcherLogProto$Action = new LauncherLogProto$Action();
        launcherLogProto$Action.type = type;
        return launcherLogProto$Action;
    }
    
    public static LauncherLogProto$Action newCommandAction(final int command) {
        final LauncherLogProto$Action action = newAction(2);
        action.command = command;
        return action;
    }
    
    public static LauncherLogProto$Target newContainerTarget(final int containerType) {
        final LauncherLogProto$Target target = newTarget(3);
        target.containerType = containerType;
        return target;
    }
    
    public static LauncherLogProto$Target newDropTarget(final View view) {
        if (!(view instanceof ButtonDropTarget)) {
            return newTarget(3);
        }
        final LauncherLogProto$Target target = newTarget(2);
        if (view instanceof InfoDropTarget) {
            target.controlType = 7;
        }
        else if (view instanceof UninstallDropTarget) {
            target.controlType = 6;
        }
        else if (view instanceof DeleteDropTarget) {
            target.controlType = 5;
        }
        return target;
    }
    
    public static LauncherLogProto$Target newItemTarget(final View view) {
        LauncherLogProto$Target launcherLogProto$Target;
        if (view.getTag() instanceof ItemInfo) {
            launcherLogProto$Target = newItemTarget((ItemInfo)view.getTag());
        }
        else {
            launcherLogProto$Target = newTarget(1);
        }
        return launcherLogProto$Target;
    }
    
    public static LauncherLogProto$Target newItemTarget(final ItemInfo itemInfo) {
        final int itemType = 1;
        final LauncherLogProto$Target target = newTarget(itemType);
        switch (itemInfo.itemType) {
            case 0: {
                target.itemType = itemType;
                break;
            }
            case 1: {
                target.itemType = 2;
                break;
            }
            case 2: {
                target.itemType = 4;
                break;
            }
            case 4: {
                target.itemType = 3;
                break;
            }
            case 6: {
                target.itemType = 5;
                break;
            }
        }
        return target;
    }
    
    public static LauncherLogProto$LauncherEvent newLauncherEvent(final LauncherLogProto$Action action, final LauncherLogProto$Target... srcTarget) {
        final LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent = new LauncherLogProto$LauncherEvent();
        launcherLogProto$LauncherEvent.srcTarget = srcTarget;
        launcherLogProto$LauncherEvent.action = action;
        return launcherLogProto$LauncherEvent;
    }
    
    public static LauncherLogProto$Target newTarget(final int type) {
        final LauncherLogProto$Target launcherLogProto$Target = new LauncherLogProto$Target();
        launcherLogProto$Target.type = type;
        return launcherLogProto$Target;
    }
    
    public static LauncherLogProto$Action newTouchAction(final int touch) {
        final LauncherLogProto$Action action = newAction(0);
        action.touch = touch;
        return action;
    }
}

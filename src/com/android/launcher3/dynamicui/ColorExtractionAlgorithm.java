// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dynamicui;

import android.util.Log;
import android.graphics.Color;
import android.content.Context;
import java.util.LinkedList;
import java.util.List;
import android.support.v4.b.a;
import com.android.launcher3.Utilities;
import android.util.Pair;
import com.android.launcher3.compat.WallpaperColorsCompat;
import android.util.Range;

public class ColorExtractionAlgorithm
{
    static final ColorExtractionAlgorithm$ColorRange[] BLACKLISTED_COLORS;
    private static final ColorExtractionAlgorithm$TonalPalette GREY_PALETTE;
    private static final ColorExtractionAlgorithm$TonalPalette[] TONAL_PALETTES;
    private float[] mTmpHSL;
    
    static {
        final int n = 12;
        final float n2 = 1.0f;
        final int n3 = 14;
        final int n4 = 13;
        final float n5 = 0.7f;
        final ColorExtractionAlgorithm$TonalPalette[] tonal_PALETTES = new ColorExtractionAlgorithm$TonalPalette[21];
        final float[] array2;
        final float[] array = array2 = new float[n4];
        array2[1] = (array2[0] = 1.0f);
        array2[3] = (array2[2] = 0.991f);
        array2[4] = 0.98333335f;
        array2[5] = 0.0f;
        array2[7] = (array2[6] = 0.0f);
        array2[8] = 0.011343804f;
        array2[9] = 0.015625f;
        array2[10] = 0.024193548f;
        array2[11] = 0.02739726f;
        array2[12] = 0.01754386f;
        final float[] array4;
        final float[] array3 = array4 = new float[n4];
        array4[0] = 1.0f;
        array4[2] = (array4[1] = 1.0f);
        array4[4] = (array4[3] = 1.0f);
        array4[6] = (array4[5] = 1.0f);
        array4[7] = 0.84347826f;
        array4[8] = 1.0f;
        array4[10] = (array4[9] = 1.0f);
        array4[12] = (array4[11] = 1.0f);
        final float[] array6;
        final float[] array5 = array6 = new float[n4];
        array6[0] = 0.04f;
        array6[1] = 0.09f;
        array6[2] = 0.14f;
        array6[3] = 0.2f;
        array6[4] = 0.27450982f;
        array6[5] = 0.34901962f;
        array6[6] = 0.42352942f;
        array6[7] = 0.54901963f;
        array6[8] = 0.6254902f;
        array6[9] = 0.6862745f;
        array6[10] = 0.75686276f;
        array6[11] = 0.8568627f;
        array6[12] = 0.9254902f;
        tonal_PALETTES[0] = new ColorExtractionAlgorithm$TonalPalette(array, array3, array5);
        final float[] array8;
        final float[] array7 = array8 = new float[n];
        array8[1] = (array8[0] = 0.638f);
        array8[2] = 0.6385768f;
        array8[3] = 0.63011694f;
        array8[4] = 0.6223958f;
        array8[5] = 0.6151079f;
        array8[6] = 0.6065401f;
        array8[7] = 0.5986965f;
        array8[8] = 0.5910747f;
        array8[9] = 0.5833333f;
        array8[10] = 0.5748032f;
        array8[11] = 0.5582011f;
        final float[] array10;
        final float[] array9 = array10 = new float[n];
        array10[1] = (array10[0] = 1.0f);
        array10[3] = (array10[2] = 1.0f);
        array10[4] = 0.90140843f;
        array10[5] = 0.8128655f;
        array10[6] = 0.7979798f;
        array10[7] = 0.78165936f;
        array10[8] = 0.7787234f;
        array10[9] = 1.0f;
        array10[11] = (array10[10] = 1.0f);
        final float[] array12;
        final float[] array11 = array12 = new float[n];
        array12[0] = 0.05f;
        array12[1] = 0.12f;
        array12[2] = 0.17450981f;
        array12[3] = 0.22352941f;
        array12[4] = 0.2784314f;
        array12[5] = 0.33529413f;
        array12[6] = 0.3882353f;
        array12[7] = 0.4490196f;
        array12[8] = 0.5392157f;
        array12[9] = 0.6509804f;
        array12[10] = 0.7509804f;
        array12[11] = 0.87647057f;
        tonal_PALETTES[1] = new ColorExtractionAlgorithm$TonalPalette(array7, array9, array11);
        final float[] array14;
        final float[] array13 = array14 = new float[n4];
        array14[0] = 0.563f;
        array14[1] = 0.569f;
        array14[2] = 0.5666f;
        array14[3] = 0.5669935f;
        array14[4] = 0.5748032f;
        array14[5] = 0.5595238f;
        array14[6] = 0.54731184f;
        array14[7] = 0.53932583f;
        array14[8] = 0.5315956f;
        array14[9] = 0.524031f;
        array14[10] = 0.51547116f;
        array14[11] = 0.5080808f;
        array14[12] = 0.5f;
        final float[] array16;
        final float[] array15 = array16 = new float[n4];
        array16[0] = 1.0f;
        array16[2] = (array16[1] = 1.0f);
        array16[4] = (array16[3] = 1.0f);
        array16[6] = (array16[5] = 1.0f);
        array16[8] = (array16[7] = 1.0f);
        array16[9] = 0.8847737f;
        array16[10] = 1.0f;
        array16[12] = (array16[11] = 1.0f);
        final float[] array18;
        final float[] array17 = array18 = new float[n4];
        array18[0] = 0.07f;
        array18[1] = 0.12f;
        array18[2] = 0.16f;
        array18[3] = 0.2f;
        array18[4] = 0.24901961f;
        array18[5] = 0.27450982f;
        array18[6] = 0.30392158f;
        array18[7] = 0.34901962f;
        array18[8] = 0.4137255f;
        array18[9] = 0.4764706f;
        array18[10] = 0.5352941f;
        array18[11] = 0.6764706f;
        array18[12] = 0.8f;
        tonal_PALETTES[2] = new ColorExtractionAlgorithm$TonalPalette(array13, array15, array17);
        final float[] array20;
        final float[] array19 = array20 = new float[n3];
        array20[0] = 0.508f;
        array20[1] = 0.511f;
        array20[3] = (array20[2] = 0.508f);
        array20[4] = 0.50823045f;
        array20[5] = 0.5069444f;
        array20[6] = 0.5f;
        array20[8] = (array20[7] = 0.5f);
        array20[9] = 0.48724955f;
        array20[10] = 0.4800347f;
        array20[11] = 0.47551343f;
        array20[12] = 0.47244096f;
        array20[13] = 0.46710527f;
        final float[] array22;
        final float[] array21 = array22 = new float[n3];
        array22[0] = 1.0f;
        array22[2] = (array22[1] = 1.0f);
        array22[4] = (array22[3] = 1.0f);
        array22[5] = 0.8888889f;
        array22[6] = 0.92424244f;
        array22[8] = (array22[7] = 1.0f);
        array22[9] = 0.81333333f;
        array22[10] = 0.78688526f;
        array22[11] = 1.0f;
        array22[13] = (array22[12] = 1.0f);
        final float[] array24;
        final float[] array23 = array24 = new float[n3];
        array24[0] = 0.04f;
        array24[1] = 0.06f;
        array24[2] = 0.08f;
        array24[3] = 0.12f;
        array24[4] = 0.15882353f;
        array24[5] = 0.21176471f;
        array24[6] = 0.25882354f;
        array24[7] = 0.3f;
        array24[8] = 0.34901962f;
        array24[9] = 0.44117647f;
        array24[10] = 0.52156866f;
        array24[11] = 0.5862745f;
        array24[12] = 0.7509804f;
        array24[13] = 0.8509804f;
        tonal_PALETTES[3] = new ColorExtractionAlgorithm$TonalPalette(array19, array21, array23);
        final float[] array26;
        final float[] array25 = array26 = new float[n4];
        array26[0] = 0.333f;
        array26[2] = (array26[1] = 0.333f);
        array26[4] = (array26[3] = 0.33333334f);
        array26[5] = 0.34006733f;
        array26[7] = (array26[6] = 0.34006733f);
        array26[8] = 0.3425926f;
        array26[9] = 0.34757835f;
        array26[10] = 0.34767026f;
        array26[11] = 0.3467742f;
        array26[12] = 0.37037036f;
        final float[] array28;
        final float[] array27 = array28 = new float[n4];
        array28[0] = 0.7f;
        array28[1] = 0.72f;
        array28[2] = 0.69f;
        array28[3] = 0.6703297f;
        array28[4] = 0.7288136f;
        array28[5] = 0.5657143f;
        array28[6] = 0.50769234f;
        array28[7] = 0.39442232f;
        array28[8] = 0.62068963f;
        array28[9] = 0.89312977f;
        array28[10] = 1.0f;
        array28[12] = (array28[11] = 1.0f);
        final float[] array30;
        final float[] array29 = array30 = new float[n4];
        array30[0] = 0.05f;
        array30[1] = 0.08f;
        array30[2] = 0.14f;
        array30[3] = 0.17843138f;
        array30[4] = 0.23137255f;
        array30[5] = 0.34313726f;
        array30[6] = 0.38235295f;
        array30[7] = 0.49215686f;
        array30[8] = 0.65882355f;
        array30[9] = 0.74313724f;
        array30[10] = 0.81764704f;
        array30[11] = 0.8784314f;
        array30[12] = 0.92941177f;
        tonal_PALETTES[4] = new ColorExtractionAlgorithm$TonalPalette(array25, array27, array29);
        final float[] array32;
        final float[] array31 = array32 = new float[n4];
        array32[0] = 0.161f;
        array32[2] = (array32[1] = 0.163f);
        array32[3] = 0.16228071f;
        array32[4] = 0.1503268f;
        array32[5] = 0.15879264f;
        array32[6] = 0.16236559f;
        array32[7] = 0.17443869f;
        array32[8] = 0.17824075f;
        array32[9] = 0.18674698f;
        array32[10] = 0.18692449f;
        array32[11] = 0.19467787f;
        array32[12] = 0.18604651f;
        final float[] array34;
        final float[] array33 = array34 = new float[n4];
        array34[0] = 1.0f;
        array34[2] = (array34[1] = 1.0f);
        array34[4] = (array34[3] = 1.0f);
        array34[6] = (array34[5] = 1.0f);
        array34[8] = (array34[7] = 1.0f);
        array34[10] = (array34[9] = 1.0f);
        array34[12] = (array34[11] = 1.0f);
        final float[] array36;
        final float[] array35 = array36 = new float[n4];
        array36[0] = 0.05f;
        array36[1] = 0.08f;
        array36[2] = 0.11f;
        array36[3] = 0.14901961f;
        array36[4] = 0.2f;
        array36[5] = 0.24901961f;
        array36[6] = 0.30392158f;
        array36[7] = 0.37843138f;
        array36[8] = 0.42352942f;
        array36[9] = 0.4882353f;
        array36[10] = 0.64509803f;
        array36[11] = 0.76666665f;
        array36[12] = 0.83137256f;
        tonal_PALETTES[5] = new ColorExtractionAlgorithm$TonalPalette(array31, array33, array35);
        final float[] array38;
        final float[] array37 = array38 = new float[n3];
        array38[0] = 0.108f;
        array38[1] = 0.105f;
        array38[3] = (array38[2] = 0.105f);
        array38[4] = 0.10619469f;
        array38[5] = 0.11924686f;
        array38[6] = 0.13046448f;
        array38[7] = 0.14248367f;
        array38[8] = 0.15060242f;
        array38[9] = 0.16220239f;
        array38[11] = (array38[10] = 0.16666667f);
        array38[12] = 0.16228071f;
        array38[13] = 0.15686275f;
        final float[] array40;
        final float[] array39 = array40 = new float[n3];
        array40[1] = (array40[0] = 1.0f);
        array40[3] = (array40[2] = 1.0f);
        array40[5] = (array40[4] = 1.0f);
        array40[7] = (array40[6] = 1.0f);
        array40[9] = (array40[8] = 1.0f);
        array40[11] = (array40[10] = 1.0f);
        array40[13] = (array40[12] = 1.0f);
        final float[] array42;
        final float[] array41 = array42 = new float[n3];
        array42[0] = 0.17f;
        array42[1] = 0.22f;
        array42[2] = 0.28f;
        array42[3] = 0.35f;
        array42[4] = 0.44313726f;
        array42[5] = 0.46862745f;
        array42[6] = 0.47843137f;
        array42[7] = 0.5f;
        array42[8] = 0.5117647f;
        array42[9] = 0.56078434f;
        array42[10] = 0.6509804f;
        array42[11] = 0.7509804f;
        array42[12] = 0.8509804f;
        array42[13] = 0.9f;
        tonal_PALETTES[6] = new ColorExtractionAlgorithm$TonalPalette(array37, array39, array41);
        final float[] array44;
        final float[] array43 = array44 = new float[n3];
        array44[1] = (array44[0] = 0.036f);
        array44[3] = (array44[2] = 0.036f);
        array44[4] = 0.035612535f;
        array44[5] = 0.050980393f;
        array44[6] = 0.0751634f;
        array44[7] = 0.09477124f;
        array44[8] = 0.11503268f;
        array44[9] = 0.13464053f;
        array44[10] = 0.14640523f;
        array44[11] = 0.1582397f;
        array44[12] = 0.15773809f;
        array44[13] = 0.15359478f;
        final float[] array46;
        final float[] array45 = array46 = new float[n3];
        array46[1] = (array46[0] = 1.0f);
        array46[3] = (array46[2] = 1.0f);
        array46[5] = (array46[4] = 1.0f);
        array46[7] = (array46[6] = 1.0f);
        array46[9] = (array46[8] = 1.0f);
        array46[11] = (array46[10] = 1.0f);
        array46[13] = (array46[12] = 1.0f);
        final float[] array48;
        final float[] array47 = array48 = new float[n3];
        array48[0] = 0.19f;
        array48[1] = 0.26f;
        array48[2] = 0.34f;
        array48[3] = 0.39f;
        array48[4] = 0.45882353f;
        array48[6] = (array48[5] = 0.5f);
        array48[8] = (array48[7] = 0.5f);
        array48[10] = (array48[9] = 0.5f);
        array48[11] = 0.6509804f;
        array48[12] = 0.78039217f;
        array48[13] = 0.9f;
        tonal_PALETTES[7] = new ColorExtractionAlgorithm$TonalPalette(array43, array45, array47);
        final float[] array50;
        final float[] array49 = array50 = new float[n4];
        array50[0] = 0.955f;
        array50[1] = 0.961f;
        array50[2] = 0.958f;
        array50[3] = 0.95964915f;
        array50[4] = 0.9593837f;
        array50[5] = 0.9514768f;
        array50[6] = 0.94385964f;
        array50[7] = 0.93968254f;
        array50[8] = 0.9395425f;
        array50[9] = 0.93939394f;
        array50[10] = 0.9362745f;
        array50[11] = 0.97540987f;
        array50[12] = 0.98245615f;
        final float[] array52;
        final float[] array51 = array52 = new float[n4];
        array52[0] = 0.87f;
        array52[2] = (array52[1] = 0.85f);
        array52[3] = 0.84070796f;
        array52[4] = 0.8206897f;
        array52[5] = 0.7979798f;
        array52[6] = 0.766129f;
        array52[7] = 0.9051724f;
        array52[8] = 1.0f;
        array52[10] = (array52[9] = 1.0f);
        array52[12] = (array52[11] = 1.0f);
        final float[] array54;
        final float[] array53 = array54 = new float[n4];
        array54[0] = 0.06f;
        array54[1] = 0.11f;
        array54[2] = 0.16f;
        array54[3] = 0.22156863f;
        array54[4] = 0.28431374f;
        array54[5] = 0.3882353f;
        array54[6] = 0.4862745f;
        array54[7] = 0.54509807f;
        array54[8] = 0.6f;
        array54[9] = 0.6764706f;
        array54[10] = 0.8f;
        array54[11] = 0.88039213f;
        array54[12] = 0.9254902f;
        tonal_PALETTES[8] = new ColorExtractionAlgorithm$TonalPalette(array49, array51, array53);
        final float[] array56;
        final float[] array55 = array56 = new float[n];
        array56[0] = 0.866f;
        array56[1] = 0.855f;
        array56[2] = 0.84102565f;
        array56[3] = 0.8333333f;
        array56[4] = 0.82852566f;
        array56[5] = 0.8215223f;
        array56[6] = 0.80833334f;
        array56[7] = 0.8046595f;
        array56[8] = 0.80058223f;
        array56[9] = 0.78423774f;
        array56[10] = 0.77710843f;
        array56[11] = 0.7747748f;
        final float[] array58;
        final float[] array57 = array58 = new float[n];
        array58[0] = 1.0f;
        array58[2] = (array58[1] = 1.0f);
        array58[4] = (array58[3] = 1.0f);
        array58[6] = (array58[5] = 1.0f);
        array58[8] = (array58[7] = 1.0f);
        array58[9] = 0.73714286f;
        array58[10] = 0.64341086f;
        array58[11] = 0.46835443f;
        final float[] array60;
        final float[] array59 = array60 = new float[n];
        array60[0] = 0.05f;
        array60[1] = 0.08f;
        array60[2] = 0.12745099f;
        array60[3] = 0.15490197f;
        array60[4] = 0.20392157f;
        array60[5] = 0.24901961f;
        array60[6] = 0.3137255f;
        array60[7] = 0.3647059f;
        array60[8] = 0.4490196f;
        array60[9] = 0.65686274f;
        array60[10] = 0.7470588f;
        array60[11] = 0.845098f;
        tonal_PALETTES[9] = new ColorExtractionAlgorithm$TonalPalette(array55, array57, array59);
        final float[] array62;
        final float[] array61 = array62 = new float[n3];
        array62[0] = 0.925f;
        array62[1] = 0.93f;
        array62[2] = 0.938f;
        array62[3] = 0.947f;
        array62[4] = 0.9559524f;
        array62[5] = 0.968107f;
        array62[6] = 0.97604793f;
        array62[7] = 0.9873563f;
        array62[9] = (array62[8] = 0.0f);
        array62[10] = 0.009057971f;
        array62[11] = 0.026748972f;
        array62[12] = 0.041666668f;
        array62[13] = 0.053030305f;
        final float[] array64;
        final float[] array63 = array64 = new float[n3];
        array64[0] = 1.0f;
        array64[2] = (array64[1] = 1.0f);
        array64[4] = (array64[3] = 1.0f);
        array64[5] = 0.83505154f;
        array64[6] = 0.6929461f;
        array64[7] = 0.6387665f;
        array64[8] = 0.69148934f;
        array64[9] = 0.75838923f;
        array64[10] = 0.80701756f;
        array64[11] = 0.9310345f;
        array64[13] = (array64[12] = 1.0f);
        final float[] array66;
        final float[] array65 = array66 = new float[n3];
        array66[0] = 0.1f;
        array66[1] = 0.13f;
        array66[2] = 0.17f;
        array66[3] = 0.2f;
        array66[4] = 0.27450982f;
        array66[5] = 0.38039216f;
        array66[6] = 0.47254902f;
        array66[7] = 0.55490196f;
        array66[8] = 0.6313726f;
        array66[9] = 0.7078431f;
        array66[10] = 0.7764706f;
        array66[11] = 0.82941175f;
        array66[12] = 0.90588236f;
        array66[13] = 0.95686275f;
        tonal_PALETTES[10] = new ColorExtractionAlgorithm$TonalPalette(array61, array63, array65);
        final float[] array68;
        final float[] array67 = array68 = new float[n4];
        array68[0] = 0.733f;
        array68[1] = 0.736f;
        array68[2] = 0.744f;
        array68[3] = 0.751462f;
        array68[4] = 0.76797384f;
        array68[5] = 0.78020835f;
        array68[6] = 0.78443116f;
        array68[7] = 0.796875f;
        array68[8] = 0.8165618f;
        array68[9] = 0.8487179f;
        array68[10] = 0.85823756f;
        array68[11] = 0.85620916f;
        array68[12] = 0.8666667f;
        final float[] array70;
        final float[] array69 = array70 = new float[n4];
        array70[0] = 1.0f;
        array70[2] = (array70[1] = 1.0f);
        array70[4] = (array70[3] = 1.0f);
        array70[5] = 0.81632656f;
        array70[6] = 0.66533864f;
        array70[7] = 0.754717f;
        array70[8] = 0.9298246f;
        array70[9] = 0.9558824f;
        array70[10] = 0.95604396f;
        array70[12] = (array70[11] = 1.0f);
        final float[] array72;
        final float[] array71 = array72 = new float[n4];
        array72[0] = 0.07f;
        array72[1] = 0.12f;
        array72[2] = 0.17f;
        array72[3] = 0.22352941f;
        array72[4] = 0.3f;
        array72[5] = 0.38431373f;
        array72[6] = 0.49215686f;
        array72[7] = 0.58431375f;
        array72[8] = 0.6647059f;
        array72[9] = 0.73333335f;
        array72[10] = 0.8215686f;
        array72[11] = 0.9f;
        array72[12] = 0.9411765f;
        tonal_PALETTES[11] = new ColorExtractionAlgorithm$TonalPalette(array67, array69, array71);
        final float[] array74;
        final float[] array73 = array74 = new float[11];
        array74[0] = 0.6666667f;
        array74[2] = (array74[1] = 0.6666667f);
        array74[4] = (array74[3] = 0.6666667f);
        array74[6] = (array74[5] = 0.6666667f);
        array74[8] = (array74[7] = 0.6666667f);
        array74[10] = (array74[9] = 0.6666667f);
        final float[] array76;
        final float[] array75 = array76 = new float[11];
        array76[0] = 0.25f;
        array76[1] = 0.24590164f;
        array76[2] = 0.17880794f;
        array76[3] = 0.14606741f;
        array76[4] = 0.13761468f;
        array76[5] = 0.14893617f;
        array76[6] = 0.16756757f;
        array76[7] = 0.203125f;
        array76[8] = 0.26086956f;
        array76[9] = 0.3f;
        array76[10] = 0.5f;
        final float[] array78;
        final float[] array77 = array78 = new float[11];
        array78[0] = 0.18f;
        array78[1] = 0.23921569f;
        array78[2] = 0.29607844f;
        array78[3] = 0.34901962f;
        array78[4] = 0.42745098f;
        array78[5] = 0.5392157f;
        array78[6] = 0.6372549f;
        array78[7] = 0.7490196f;
        array78[8] = 0.81960785f;
        array78[9] = 0.88235295f;
        array78[10] = 0.9372549f;
        tonal_PALETTES[n] = new ColorExtractionAlgorithm$TonalPalette(array73, array75, array77);
        final float[] array80;
        final float[] array79 = array80 = new float[n3];
        array80[0] = 0.938f;
        array80[1] = 0.944f;
        array80[2] = 0.952f;
        array80[3] = 0.961f;
        array80[4] = 0.9678571f;
        array80[5] = 0.99448127f;
        array80[7] = (array80[6] = 0.0f);
        array80[8] = 0.0047348486f;
        array80[9] = 0.003164557f;
        array80[10] = 0.0f;
        array80[11] = 0.9980392f;
        array80[12] = 0.9814815f;
        array80[13] = 0.9722222f;
        final float[] array82;
        final float[] array81 = array82 = new float[n3];
        array82[0] = 1.0f;
        array82[2] = (array82[1] = 1.0f);
        array82[4] = (array82[3] = 1.0f);
        array82[5] = 0.7023256f;
        array82[6] = 0.66386557f;
        array82[7] = 0.65217394f;
        array82[8] = 0.7719298f;
        array82[9] = 0.83157897f;
        array82[10] = 0.686747f;
        array82[11] = 0.72649574f;
        array82[13] = (array82[12] = 0.8181818f);
        final float[] array84;
        final float[] array83 = array84 = new float[n3];
        array84[0] = 0.08f;
        array84[1] = 0.13f;
        array84[2] = 0.18f;
        array84[3] = 0.23f;
        array84[4] = 0.27450982f;
        array84[5] = 0.42156863f;
        array84[6] = 0.46666667f;
        array84[7] = 0.50392157f;
        array84[8] = 0.5529412f;
        array84[9] = 0.627451f;
        array84[10] = 0.6745098f;
        array84[11] = 0.7705882f;
        array84[12] = 0.89215684f;
        array84[13] = 0.95686275f;
        tonal_PALETTES[n4] = new ColorExtractionAlgorithm$TonalPalette(array79, array81, array83);
        final float[] array86;
        final float[] array85 = array86 = new float[n4];
        array86[0] = 0.88f;
        array86[1] = 0.888f;
        array86[2] = 0.897f;
        array86[3] = 0.90522873f;
        array86[4] = 0.9112022f;
        array86[5] = 0.92701524f;
        array86[6] = 0.9343137f;
        array86[7] = 0.93915343f;
        array86[8] = 0.9437984f;
        array86[9] = 0.943662f;
        array86[10] = 0.9438944f;
        array86[11] = 0.94262296f;
        array86[12] = 0.9444444f;
        final float[] array88;
        final float[] array87 = array88 = new float[n4];
        array88[1] = (array88[0] = 1.0f);
        array88[3] = (array88[2] = 1.0f);
        array88[4] = 0.81333333f;
        array88[5] = 0.7927461f;
        array88[6] = 0.7798165f;
        array88[7] = 0.7777778f;
        array88[8] = 0.81904763f;
        array88[9] = 0.8255814f;
        array88[10] = 0.8211382f;
        array88[11] = 0.81333333f;
        array88[12] = 0.8f;
        final float[] array90;
        final float[] array89 = array90 = new float[n4];
        array90[0] = 0.08f;
        array90[1] = 0.12f;
        array90[2] = 0.16f;
        array90[3] = 0.2f;
        array90[4] = 0.29411766f;
        array90[5] = 0.37843138f;
        array90[6] = 0.42745098f;
        array90[7] = 0.4764706f;
        array90[8] = 0.5882353f;
        array90[9] = 0.6627451f;
        array90[10] = 0.7588235f;
        array90[11] = 0.85294116f;
        array90[12] = 0.9411765f;
        tonal_PALETTES[n3] = new ColorExtractionAlgorithm$TonalPalette(array85, array87, array89);
        final float[] array92;
        final float[] array91 = array92 = new float[n];
        array92[0] = 0.669f;
        array92[1] = 0.68f;
        array92[2] = 0.6884058f;
        array92[3] = 0.697479f;
        array92[4] = 0.707989f;
        array92[5] = 0.7154471f;
        array92[6] = 0.7217742f;
        array92[7] = 0.7274143f;
        array92[8] = 0.72727275f;
        array92[9] = 0.7258065f;
        array92[10] = 0.7252252f;
        array92[11] = 0.73333335f;
        final float[] array94;
        final float[] array93 = array94 = new float[n];
        array94[1] = (array94[0] = 0.81f);
        array94[2] = 0.8214286f;
        array94[3] = 0.68786126f;
        array94[4] = 0.6080402f;
        array94[5] = 0.57746476f;
        array94[6] = 0.53913045f;
        array94[7] = 0.46724892f;
        array94[8] = 0.4680851f;
        array94[9] = 0.46268657f;
        array94[10] = 0.45679012f;
        array94[11] = 0.45454547f;
        final float[] array96;
        final float[] array95 = array96 = new float[n];
        array96[0] = 0.12f;
        array96[1] = 0.16f;
        array96[2] = 0.21960784f;
        array96[3] = 0.3392157f;
        array96[4] = 0.39019608f;
        array96[5] = 0.41764706f;
        array96[6] = 0.4509804f;
        array96[7] = 0.5509804f;
        array96[8] = 0.6313726f;
        array96[9] = 0.7372549f;
        array96[10] = 0.84117645f;
        array96[11] = 0.9352941f;
        tonal_PALETTES[15] = new ColorExtractionAlgorithm$TonalPalette(array91, array93, array95);
        final float[] array98;
        final float[] array97 = array98 = new float[10];
        array98[0] = 0.64705884f;
        array98[1] = 0.65166664f;
        array98[2] = 0.64641744f;
        array98[3] = 0.6441441f;
        array98[4] = 0.64327484f;
        array98[5] = 0.64166665f;
        array98[6] = 0.6402439f;
        array98[7] = 0.6412429f;
        array98[8] = 0.6435185f;
        array98[9] = 0.64285713f;
        final float[] array100;
        final float[] array99 = array100 = new float[10];
        array100[0] = 0.8095238f;
        array100[1] = 0.65789473f;
        array100[2] = 0.5721925f;
        array100[3] = 0.5362319f;
        array100[4] = 0.5f;
        array100[5] = 0.44247788f;
        array100[6] = 0.4408602f;
        array100[7] = 0.44360903f;
        array100[8] = 0.45f;
        array100[9] = 0.4375f;
        final float[] array102;
        final float[] array101 = array102 = new float[10];
        array102[0] = 0.16470589f;
        array102[1] = 0.29803923f;
        array102[2] = 0.36666667f;
        array102[3] = 0.40588236f;
        array102[4] = 0.44705883f;
        array102[5] = 0.5568628f;
        array102[6] = 0.63529414f;
        array102[7] = 0.7392157f;
        array102[8] = 0.84313726f;
        array102[9] = 0.9372549f;
        tonal_PALETTES[16] = new ColorExtractionAlgorithm$TonalPalette(array97, array99, array101);
        final float[] array104;
        final float[] array103 = array104 = new float[11];
        array104[0] = 0.469f;
        array104[1] = 0.46732026f;
        array104[2] = 0.47186148f;
        array104[3] = 0.47936508f;
        array104[4] = 0.48071626f;
        array104[5] = 0.48296836f;
        array104[6] = 0.484375f;
        array104[7] = 0.48412699f;
        array104[8] = 0.48444444f;
        array104[9] = 0.48518518f;
        array104[10] = 0.49074075f;
        final float[] array106;
        final float[] array105 = array106 = new float[11];
        array106[1] = (array106[0] = 1.0f);
        array106[3] = (array106[2] = 1.0f);
        array106[5] = (array106[4] = 1.0f);
        array106[6] = 0.627451f;
        array106[7] = 0.4183267f;
        array106[8] = 0.41899443f;
        array106[9] = 0.41284403f;
        array106[10] = 0.4090909f;
        final float[] array108;
        final float[] array107 = array108 = new float[11];
        array108[0] = 0.07f;
        array108[1] = 0.1f;
        array108[2] = 0.1509804f;
        array108[3] = 0.20588236f;
        array108[4] = 0.2372549f;
        array108[5] = 0.26862746f;
        array108[6] = 0.4f;
        array108[7] = 0.50784314f;
        array108[8] = 0.6490196f;
        array108[9] = 0.7862745f;
        array108[10] = 0.9137255f;
        tonal_PALETTES[17] = new ColorExtractionAlgorithm$TonalPalette(array103, array105, array107);
        final float[] array110;
        final float[] array109 = array110 = new float[11];
        array110[0] = 0.542f;
        array110[1] = 0.54444444f;
        array110[3] = (array110[2] = 0.5555556f);
        array110[4] = 0.55376345f;
        array110[5] = 0.55263156f;
        array110[6] = 0.5555556f;
        array110[8] = (array110[7] = 0.5555556f);
        array110[9] = 0.55128205f;
        array110[10] = 0.56666666f;
        final float[] array112;
        final float[] array111 = array112 = new float[11];
        array112[0] = 0.25f;
        array112[1] = 0.24590164f;
        array112[2] = 0.19148937f;
        array112[3] = 0.17910448f;
        array112[4] = 0.18343195f;
        array112[5] = 0.18446602f;
        array112[6] = 0.15384616f;
        array112[7] = 0.15625f;
        array112[8] = 0.15328467f;
        array112[9] = 0.15662651f;
        array112[10] = 0.15151516f;
        final float[] array114;
        final float[] array113 = array114 = new float[11];
        array114[0] = 0.05f;
        array114[1] = 0.11960784f;
        array114[2] = 0.18431373f;
        array114[3] = 0.2627451f;
        array114[4] = 0.33137256f;
        array114[5] = 0.40392157f;
        array114[6] = 0.5411765f;
        array114[7] = 0.62352943f;
        array114[8] = 0.73137254f;
        array114[9] = 0.8372549f;
        array114[10] = 0.9352941f;
        tonal_PALETTES[18] = new ColorExtractionAlgorithm$TonalPalette(array109, array111, array113);
        final float[] array116;
        final float[] array115 = array116 = new float[10];
        array116[0] = 0.022222223f;
        array116[1] = 0.024691358f;
        array116[2] = 0.03125f;
        array116[3] = 0.039473683f;
        array116[4] = 0.041666668f;
        array116[5] = 0.043650795f;
        array116[6] = 0.04411765f;
        array116[7] = 0.041666668f;
        array116[8] = 0.044444446f;
        array116[9] = 0.055555556f;
        final float[] array118;
        final float[] array117 = array118 = new float[10];
        array118[0] = 0.33333334f;
        array118[1] = 0.2783505f;
        array118[2] = 0.2580645f;
        array118[3] = 0.25675675f;
        array118[4] = 0.25287357f;
        array118[5] = 0.175f;
        array118[6] = 0.15315315f;
        array118[7] = 0.15189873f;
        array118[9] = (array118[8] = 0.15789473f);
        final float[] array120;
        final float[] array119 = array120 = new float[10];
        array120[0] = 0.0882353f;
        array120[1] = 0.19019608f;
        array120[2] = 0.24313726f;
        array120[3] = 0.2901961f;
        array120[4] = 0.34117648f;
        array120[5] = 0.47058824f;
        array120[6] = 0.5647059f;
        array120[7] = 0.6901961f;
        array120[8] = 0.8137255f;
        array120[9] = 0.9254902f;
        tonal_PALETTES[19] = new ColorExtractionAlgorithm$TonalPalette(array115, array117, array119);
        final float[] array122;
        final float[] array121 = array122 = new float[n3];
        array122[0] = 0.027f;
        array122[1] = 0.03f;
        array122[2] = 0.038f;
        array122[3] = 0.044f;
        array122[4] = 0.050884955f;
        array122[5] = 0.07254902f;
        array122[6] = 0.093464054f;
        array122[7] = 0.104575165f;
        array122[8] = 0.116993465f;
        array122[9] = 0.1255814f;
        array122[10] = 0.12689394f;
        array122[11] = 0.12533334f;
        array122[12] = 0.125f;
        array122[13] = 0.12777779f;
        final float[] array124;
        final float[] array123 = array124 = new float[n3];
        array124[1] = (array124[0] = 1.0f);
        array124[3] = (array124[2] = 1.0f);
        array124[5] = (array124[4] = 1.0f);
        array124[7] = (array124[6] = 1.0f);
        array124[9] = (array124[8] = 1.0f);
        array124[11] = (array124[10] = 1.0f);
        array124[13] = (array124[12] = 1.0f);
        final float[] array126;
        final float[] array125 = array126 = new float[n3];
        array126[0] = 0.25f;
        array126[1] = 0.3f;
        array126[2] = 0.35f;
        array126[3] = 0.4f;
        array126[4] = 0.44313726f;
        array126[6] = (array126[5] = 0.5f);
        array126[8] = (array126[7] = 0.5f);
        array126[9] = 0.57843137f;
        array126[10] = 0.654902f;
        array126[11] = 0.75490195f;
        array126[12] = 0.8509804f;
        array126[13] = 0.9411765f;
        tonal_PALETTES[20] = new ColorExtractionAlgorithm$TonalPalette(array121, array123, array125);
        TONAL_PALETTES = tonal_PALETTES;
        final float[] array128;
        final float[] array127 = array128 = new float[n];
        array128[1] = (array128[0] = 0.0f);
        array128[3] = (array128[2] = 0.0f);
        array128[5] = (array128[4] = 0.0f);
        array128[7] = (array128[6] = 0.0f);
        array128[9] = (array128[8] = 0.0f);
        array128[11] = (array128[10] = 0.0f);
        final float[] array130;
        final float[] array129 = array130 = new float[n];
        array130[1] = (array130[0] = 0.0f);
        array130[3] = (array130[2] = 0.0f);
        array130[5] = (array130[4] = 0.0f);
        array130[7] = (array130[6] = 0.0f);
        array130[9] = (array130[8] = 0.0f);
        array130[11] = (array130[10] = 0.0f);
        final float[] array132;
        final float[] array131 = array132 = new float[n];
        array132[0] = 0.08f;
        array132[1] = 0.11f;
        array132[2] = 0.14901961f;
        array132[3] = 0.2f;
        array132[4] = 0.29803923f;
        array132[5] = 0.4f;
        array132[6] = 0.49803922f;
        array132[7] = 0.61960787f;
        array132[8] = 0.7176471f;
        array132[9] = 0.81960785f;
        array132[10] = 0.91764706f;
        array132[11] = 0.9490196f;
        GREY_PALETTE = new ColorExtractionAlgorithm$TonalPalette(array127, array129, array131);
        final ColorExtractionAlgorithm$ColorRange[] blacklisted_COLORS = new ColorExtractionAlgorithm$ColorRange[27];
        blacklisted_COLORS[0] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)0.0f, (Comparable)20.0f), new Range((Comparable)n5, (Comparable)n2), new Range((Comparable)0.21f, (Comparable)0.79f));
        blacklisted_COLORS[1] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)0.0f, (Comparable)20.0f), new Range((Comparable)0.3f, (Comparable)n5), new Range((Comparable)0.355f, (Comparable)0.653f));
        blacklisted_COLORS[2] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)20.0f, (Comparable)40.0f), new Range((Comparable)n5, (Comparable)n2), new Range((Comparable)0.28f, (Comparable)0.643f));
        blacklisted_COLORS[3] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)20.0f, (Comparable)40.0f), new Range((Comparable)0.3f, (Comparable)n5), new Range((Comparable)0.414f, (Comparable)0.561f));
        blacklisted_COLORS[4] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)20.0f, (Comparable)40.0f), new Range((Comparable)0.0f, (Comparable)3.0f), new Range((Comparable)0.343f, (Comparable)0.584f));
        blacklisted_COLORS[5] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)40.0f, (Comparable)60.0f), new Range((Comparable)n5, (Comparable)n2), new Range((Comparable)0.173f, (Comparable)0.349f));
        blacklisted_COLORS[6] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)40.0f, (Comparable)60.0f), new Range((Comparable)0.3f, (Comparable)n5), new Range((Comparable)0.233f, (Comparable)0.427f));
        blacklisted_COLORS[7] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)40.0f, (Comparable)60.0f), new Range((Comparable)0.0f, (Comparable)0.3f), new Range((Comparable)0.231f, (Comparable)0.484f));
        blacklisted_COLORS[8] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)60.0f, (Comparable)80.0f), new Range((Comparable)n5, (Comparable)n2), new Range((Comparable)0.488f, (Comparable)0.737f));
        blacklisted_COLORS[9] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)60.0f, (Comparable)80.0f), new Range((Comparable)0.3f, (Comparable)n5), new Range((Comparable)0.673f, (Comparable)0.837f));
        blacklisted_COLORS[10] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)80.0f, (Comparable)100.0f), new Range((Comparable)n5, (Comparable)n2), new Range((Comparable)0.469f, (Comparable)0.61f));
        blacklisted_COLORS[11] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)100.0f, (Comparable)120.0f), new Range((Comparable)n5, (Comparable)n2), new Range((Comparable)0.388f, (Comparable)0.612f));
        blacklisted_COLORS[n] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)100.0f, (Comparable)120.0f), new Range((Comparable)0.3f, (Comparable)n5), new Range((Comparable)0.424f, (Comparable)0.541f));
        blacklisted_COLORS[n4] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)120.0f, (Comparable)140.0f), new Range((Comparable)n5, (Comparable)n2), new Range((Comparable)0.375f, (Comparable)0.52f));
        blacklisted_COLORS[n3] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)120.0f, (Comparable)140.0f), new Range((Comparable)0.3f, (Comparable)n5), new Range((Comparable)0.435f, (Comparable)0.524f));
        blacklisted_COLORS[15] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)140.0f, (Comparable)160.0f), new Range((Comparable)n5, (Comparable)n2), new Range((Comparable)0.496f, (Comparable)0.641f));
        blacklisted_COLORS[16] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)160.0f, (Comparable)180.0f), new Range((Comparable)n5, (Comparable)n2), new Range((Comparable)0.496f, (Comparable)0.567f));
        blacklisted_COLORS[17] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)180.0f, (Comparable)200.0f), new Range((Comparable)n5, (Comparable)n2), new Range((Comparable)0.52f, (Comparable)0.729f));
        blacklisted_COLORS[18] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)220.0f, (Comparable)240.0f), new Range((Comparable)n5, (Comparable)n2), new Range((Comparable)0.396f, (Comparable)0.571f));
        blacklisted_COLORS[19] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)220.0f, (Comparable)240.0f), new Range((Comparable)0.3f, (Comparable)n5), new Range((Comparable)0.425f, (Comparable)0.551f));
        blacklisted_COLORS[20] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)240.0f, (Comparable)260.0f), new Range((Comparable)n5, (Comparable)n2), new Range((Comparable)0.418f, (Comparable)0.639f));
        blacklisted_COLORS[21] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)220.0f, (Comparable)240.0f), new Range((Comparable)0.3f, (Comparable)n5), new Range((Comparable)0.441f, (Comparable)0.576f));
        blacklisted_COLORS[22] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)260.0f, (Comparable)280.0f), new Range((Comparable)0.3f, (Comparable)n2), new Range((Comparable)0.461f, (Comparable)0.553f));
        blacklisted_COLORS[23] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)300.0f, (Comparable)320.0f), new Range((Comparable)n5, (Comparable)n2), new Range((Comparable)0.484f, (Comparable)0.588f));
        blacklisted_COLORS[24] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)300.0f, (Comparable)320.0f), new Range((Comparable)0.3f, (Comparable)n5), new Range((Comparable)0.48f, (Comparable)0.592f));
        blacklisted_COLORS[25] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)320.0f, (Comparable)340.0f), new Range((Comparable)n5, (Comparable)n2), new Range((Comparable)0.466f, (Comparable)0.629f));
        blacklisted_COLORS[26] = new ColorExtractionAlgorithm$ColorRange(new Range((Comparable)340.0f, (Comparable)360.0f), new Range((Comparable)n5, (Comparable)n2), new Range((Comparable)0.437f, (Comparable)0.596f));
        BLACKLISTED_COLORS = blacklisted_COLORS;
    }
    
    public ColorExtractionAlgorithm() {
        this.mTmpHSL = new float[3];
    }
    
    public static Pair applyFallback(final WallpaperColorsCompat wallpaperColorsCompat) {
        final boolean b = wallpaperColorsCompat != null && (wallpaperColorsCompat.getColorHints() & 0x1) != 0x0 && true;
        int n;
        if (b) {
            n = -5197648;
        }
        else {
            n = -14606047;
        }
        int n2;
        if (b) {
            n2 = -6381922;
        }
        else {
            n2 = -16777216;
        }
        return new Pair((Object)n, (Object)n2);
    }
    
    private static int bestFit(final ColorExtractionAlgorithm$TonalPalette colorExtractionAlgorithm$TonalPalette, final float n, final float n2, final float n3) {
        final float n4 = 1.0f;
        int n5 = -1;
        float n6 = 1.0f / 0.0f;
        for (int i = 0; i < colorExtractionAlgorithm$TonalPalette.h.length; ++i) {
            final float n7 = Math.abs(n - colorExtractionAlgorithm$TonalPalette.h[i]) * n4 + Math.abs(n2 - colorExtractionAlgorithm$TonalPalette.s[i]) * n4 + Math.abs(n3 - colorExtractionAlgorithm$TonalPalette.l[i]) * 10.0f;
            if (n7 < n6) {
                n6 = n7;
                n5 = i;
            }
        }
        return n5;
    }
    
    private static ColorExtractionAlgorithm$TonalPalette findTonalPalette(final float n, final float n2) {
        final float n3 = 1.0f;
        if (n2 < 0.05f) {
            return ColorExtractionAlgorithm.GREY_PALETTE;
        }
        ColorExtractionAlgorithm$TonalPalette colorExtractionAlgorithm$TonalPalette = null;
        float n4 = 1.0f / 0.0f;
        for (int i = 0; i < ColorExtractionAlgorithm.TONAL_PALETTES.length; ++i) {
            final ColorExtractionAlgorithm$TonalPalette colorExtractionAlgorithm$TonalPalette2 = ColorExtractionAlgorithm.TONAL_PALETTES[i];
            if ((n >= colorExtractionAlgorithm$TonalPalette2.minHue && n <= colorExtractionAlgorithm$TonalPalette2.maxHue) || (colorExtractionAlgorithm$TonalPalette2.maxHue > n3 && n >= 0.0f && n <= fract(colorExtractionAlgorithm$TonalPalette2.maxHue)) || (colorExtractionAlgorithm$TonalPalette2.minHue < 0.0f && n >= fract(colorExtractionAlgorithm$TonalPalette2.minHue) && n <= n3)) {
                return colorExtractionAlgorithm$TonalPalette2;
            }
            if (n <= colorExtractionAlgorithm$TonalPalette2.minHue && colorExtractionAlgorithm$TonalPalette2.minHue - n < n4) {
                n4 = colorExtractionAlgorithm$TonalPalette2.minHue - n;
                colorExtractionAlgorithm$TonalPalette = colorExtractionAlgorithm$TonalPalette2;
            }
            else if (n >= colorExtractionAlgorithm$TonalPalette2.maxHue && n - colorExtractionAlgorithm$TonalPalette2.maxHue < n4) {
                n4 = n - colorExtractionAlgorithm$TonalPalette2.maxHue;
                colorExtractionAlgorithm$TonalPalette = colorExtractionAlgorithm$TonalPalette2;
            }
            else if (colorExtractionAlgorithm$TonalPalette2.maxHue > n3 && n >= fract(colorExtractionAlgorithm$TonalPalette2.maxHue) && n - fract(colorExtractionAlgorithm$TonalPalette2.maxHue) < n4) {
                n4 = n - fract(colorExtractionAlgorithm$TonalPalette2.maxHue);
                colorExtractionAlgorithm$TonalPalette = colorExtractionAlgorithm$TonalPalette2;
            }
            else if (colorExtractionAlgorithm$TonalPalette2.minHue < 0.0f && n <= fract(colorExtractionAlgorithm$TonalPalette2.minHue) && fract(colorExtractionAlgorithm$TonalPalette2.minHue) - n < n4) {
                n4 = fract(colorExtractionAlgorithm$TonalPalette2.minHue) - n;
                colorExtractionAlgorithm$TonalPalette = colorExtractionAlgorithm$TonalPalette2;
            }
        }
        return colorExtractionAlgorithm$TonalPalette;
    }
    
    private static float[] fit(final float[] array, final float n, final int n2, final float n3, final float n4) {
        final float[] array2 = new float[array.length];
        final float n5 = n - array[n2];
        for (int i = 0; i < array.length; ++i) {
            array2[i] = Utilities.boundToRange(array[i] + n5, n3, n4);
        }
        return array2;
    }
    
    private static float fract(final float n) {
        return n - (float)Math.floor(n);
    }
    
    private int getColorInt(final int n, final float[] array, final float[] array2, final float[] array3) {
        this.mTmpHSL[0] = fract(array[n]) * 360.0f;
        this.mTmpHSL[1] = array2[n];
        this.mTmpHSL[2] = array3[n];
        return a.asa(this.mTmpHSL);
    }
    
    private static List getMainColors(final WallpaperColorsCompat wallpaperColorsCompat) {
        final LinkedList<Integer> list = new LinkedList<Integer>();
        if (wallpaperColorsCompat.getPrimaryColor() != 0) {
            list.add(wallpaperColorsCompat.getPrimaryColor());
        }
        if (wallpaperColorsCompat.getSecondaryColor() != 0) {
            list.add(wallpaperColorsCompat.getSecondaryColor());
        }
        if (wallpaperColorsCompat.getTertiaryColor() != 0) {
            list.add(wallpaperColorsCompat.getTertiaryColor());
        }
        return list;
    }
    
    private boolean isBlacklisted(final float[] array) {
        final int n = 1;
        final ColorExtractionAlgorithm$ColorRange[] blacklisted_COLORS = ColorExtractionAlgorithm.BLACKLISTED_COLORS;
        for (int length = blacklisted_COLORS.length, i = 0; i < length; ++i) {
            if (blacklisted_COLORS[i].containsColor(array[0], array[n], array[2])) {
                return n != 0;
            }
        }
        return false;
    }
    
    public static ColorExtractionAlgorithm newInstance(final Context context) {
        return (ColorExtractionAlgorithm)Utilities.getOverrideObject(ColorExtractionAlgorithm.class, context.getApplicationContext(), 2131492892);
    }
    
    public Pair extractInto(final WallpaperColorsCompat wallpaperColorsCompat) {
        final int n = 1;
        final int n2 = 2;
        int min = 0;
        if (wallpaperColorsCompat == null) {
            return applyFallback(wallpaperColorsCompat);
        }
        final List mainColors = getMainColors(wallpaperColorsCompat);
        final int size = mainColors.size();
        int n3;
        if ((wallpaperColorsCompat.getColorHints() & 0x1) != 0x0) {
            n3 = n;
        }
        else {
            n3 = 0;
        }
        if (size == 0) {
            return applyFallback(wallpaperColorsCompat);
        }
        final Integer value = 0;
        final float[] array = new float[3];
        int i = 0;
        while (true) {
            while (i < size) {
                final int intValue = mainColors.get(i);
                a.arO(Color.red(intValue), Color.green(intValue), Color.blue(intValue), array);
                if (!this.isBlacklisted(array)) {
                    final Integer value2 = intValue;
                    if (value2 == null) {
                        return applyFallback(wallpaperColorsCompat);
                    }
                    final int intValue2 = value2;
                    a.arO(Color.red(intValue2), Color.green(intValue2), Color.blue(intValue2), array);
                    array[0] /= 360.0f;
                    final ColorExtractionAlgorithm$TonalPalette tonalPalette = findTonalPalette(array[0], array[n]);
                    if (tonalPalette == null) {
                        Log.w("Tonal", "Could not find a tonal palette!");
                        return applyFallback(wallpaperColorsCompat);
                    }
                    final int bestFit = bestFit(tonalPalette, array[0], array[n], array[n2]);
                    if (bestFit == -1) {
                        Log.w("Tonal", "Could not find best fit!");
                        return applyFallback(wallpaperColorsCompat);
                    }
                    final float[] fit = fit(tonalPalette.h, array[0], bestFit, -1.0f / 0.0f, 1.0f / 0.0f);
                    final float[] fit2 = fit(tonalPalette.s, array[n], bestFit, 0.0f, 1.0f);
                    final float[] fit3 = fit(tonalPalette.l, array[n2], bestFit, 0.0f, 1.0f);
                    final int colorInt = this.getColorInt(bestFit, fit, fit2, fit3);
                    a.arU(colorInt, this.mTmpHSL);
                    final float n4 = this.mTmpHSL[n2];
                    a.arU(-5197648, this.mTmpHSL);
                    if (n4 > this.mTmpHSL[n2]) {
                        return applyFallback(wallpaperColorsCompat);
                    }
                    a.arU(-14606047, this.mTmpHSL);
                    if (n4 < this.mTmpHSL[n2]) {
                        return applyFallback(wallpaperColorsCompat);
                    }
                    if (n3 != 0) {
                        min = fit.length - 1;
                    }
                    else if (bestFit >= n2) {
                        min = Math.min(bestFit, 3);
                    }
                    int n5;
                    if (min >= n2) {
                        n5 = -2;
                    }
                    else {
                        n5 = n2;
                    }
                    return new Pair((Object)colorInt, (Object)this.getColorInt(n5 + min, fit, fit2, fit3));
                }
                else {
                    ++i;
                }
            }
            final Integer value2 = value;
            continue;
        }
    }
}

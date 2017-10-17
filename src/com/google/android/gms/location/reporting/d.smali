.class public final Lcom/google/android/gms/location/reporting/d;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GN(I)Z
    .locals 1

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static GO(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Lcom/google/android/gms/location/reporting/d;->GN(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :pswitch_0
    return p0

    :cond_0
    const/16 v0, 0x63

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.class final Lcom/android/launcher3/InvariantDeviceProfile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/InvariantDeviceProfile;

.field final synthetic val$height:F

.field final synthetic val$width:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile;FF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->this$0:Lcom/android/launcher3/InvariantDeviceProfile;

    iput p2, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->val$width:F

    iput p3, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->val$height:F

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/InvariantDeviceProfile;)I
    .locals 6

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->this$0:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->val$width:F

    iget v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->val$height:F

    iget v3, p1, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    iget v4, p1, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result v0

    .line 279
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->this$0:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->val$width:F

    iget v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$1;->val$height:F

    iget v4, p2, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    iget v5, p2, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result v1

    .line 278
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 277
    check-cast p1, Lcom/android/launcher3/InvariantDeviceProfile;

    check-cast p2, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/InvariantDeviceProfile$1;->compare(Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/InvariantDeviceProfile;)I

    move-result v0

    return v0
.end method

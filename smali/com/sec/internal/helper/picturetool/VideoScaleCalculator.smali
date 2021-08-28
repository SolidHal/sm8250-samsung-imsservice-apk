.class public Lcom/sec/internal/helper/picturetool/VideoScaleCalculator;
.super Ljava/lang/Object;
.source "VideoScaleCalculator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculate(IIII)Landroid/util/Pair;
    .locals 10
    .param p0, "videoWidth"    # I
    .param p1, "videoHeight"    # I
    .param p2, "thumbnailWidth"    # I
    .param p3, "thumbnailHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 19
    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 20
    .local v0, "horizontalScale":D
    int-to-double v2, p1

    int-to-double v4, p3

    div-double/2addr v2, v4

    .line 21
    .local v2, "verticalScale":D
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 23
    .local v4, "scale":D
    int-to-double v6, p0

    div-double/2addr v6, v4

    double-to-int v6, v6

    .line 24
    const/4 v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    int-to-double v8, p1

    div-double/2addr v8, v4

    double-to-int v8, v8

    .line 25
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 23
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 27
    .local v6, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    return-object v6
.end method

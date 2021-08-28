.class public Lcom/sec/internal/helper/picturetool/ReadScaleCalculator;
.super Ljava/lang/Object;
.source "ReadScaleCalculator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculate(JIIJII)I
    .locals 4
    .param p0, "size"    # J
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "maxSize"    # J
    .param p6, "maxWidth"    # I
    .param p7, "maxHeight"    # I

    .line 24
    invoke-static {p0, p1, p4, p5}, Lcom/sec/internal/helper/picturetool/ReadScaleCalculator;->calculate(JJ)I

    move-result v0

    .line 25
    .local v0, "sizeScale":I
    div-int v1, p2, p6

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 26
    .local v1, "widthScale":I
    div-int v3, p3, p7

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 28
    .local v2, "heightScale":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 30
    .local v3, "readScale":I
    return v3
.end method

.method public static calculate(JJ)I
    .locals 4
    .param p0, "size"    # J
    .param p2, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 16
    long-to-double v0, p0

    long-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 18
    .local v0, "readScale":I
    return v0
.end method

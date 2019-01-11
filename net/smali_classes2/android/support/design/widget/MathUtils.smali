.class public final Landroid/support/design/widget/MathUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static dist(FFFF)F
    .locals 6

    .line 28
    sub-float v4, p2, p0

    .line 29
    sub-float v5, p3, p1

    .line 30
    float-to-double v0, v4

    float-to-double v2, v5

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static distanceToFurthestCorner(FFFFFF)F
    .locals 4

    .line 65
    .line 66
    invoke-static {p0, p1, p2, p3}, Landroid/support/design/widget/MathUtils;->dist(FFFF)F

    move-result v0

    .line 67
    invoke-static {p0, p1, p4, p3}, Landroid/support/design/widget/MathUtils;->dist(FFFF)F

    move-result v1

    .line 68
    invoke-static {p0, p1, p4, p5}, Landroid/support/design/widget/MathUtils;->dist(FFFF)F

    move-result v2

    .line 69
    invoke-static {p0, p1, p2, p5}, Landroid/support/design/widget/MathUtils;->dist(FFFF)F

    move-result v3

    .line 65
    invoke-static {v0, v1, v2, v3}, Landroid/support/design/widget/MathUtils;->max(FFFF)F

    move-result v0

    return v0
.end method

.method public static geq(FFF)Z
    .locals 1

    .line 49
    add-float v0, p0, p2

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static lerp(FFF)F
    .locals 2

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p2, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private static max(FFFF)F
    .locals 1

    .line 74
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    cmpl-float v0, p0, p3

    if-lez v0, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    cmpl-float v0, p1, p3

    if-lez v0, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    cmpl-float v0, p2, p3

    if-lez v0, :cond_2

    move v0, p2

    goto :goto_0

    :cond_2
    move v0, p3

    :goto_0
    return v0
.end method

.class Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;
.super Landroid/support/v7/graphics/drawable/DrawableWrapper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/DropDownListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GateKeeperDrawable"
.end annotation


# instance fields
.field private mEnabled:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 382
    invoke-direct {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    .line 384
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 400
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 401
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 403
    :cond_0
    return-void
.end method

.method setEnabled(Z)V
    .locals 0

    .line 387
    iput-boolean p1, p0, Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    .line 388
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    .line 407
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 408
    invoke-super {p0, p1, p2}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setHotspot(FF)V

    .line 410
    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    .line 414
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 415
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setHotspotBounds(IIII)V

    .line 417
    :cond_0
    return-void
.end method

.method public setState([I)Z
    .locals 1

    .line 392
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 393
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setState([I)Z

    move-result v0

    return v0

    .line 395
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 421
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 422
    invoke-super {p0, p1, p2}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setVisible(ZZ)Z

    move-result v0

    return v0

    .line 424
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

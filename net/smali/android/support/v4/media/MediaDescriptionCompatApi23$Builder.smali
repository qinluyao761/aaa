.class Landroid/support/v4/media/MediaDescriptionCompatApi23$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaDescriptionCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# direct methods
.method public static setMediaUri(Ljava/lang/Object;Landroid/net/Uri;)V
    .locals 1

    .line 31
    move-object v0, p0

    check-cast v0, Landroid/media/MediaDescription$Builder;

    invoke-virtual {v0, p1}, Landroid/media/MediaDescription$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    .line 32
    return-void
.end method

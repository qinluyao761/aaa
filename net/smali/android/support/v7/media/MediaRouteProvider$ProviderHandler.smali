.class final Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/MediaRouteProvider;


# direct methods
.method constructor <init>(Landroid/support/v7/media/MediaRouteProvider;)V
    .locals 0

    .line 435
    iput-object p1, p0, Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;->this$0:Landroid/support/v7/media/MediaRouteProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 436
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 440
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 442
    :sswitch_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;->this$0:Landroid/support/v7/media/MediaRouteProvider;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider;->deliverDescriptorChanged()V

    .line 443
    goto :goto_0

    .line 445
    :sswitch_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;->this$0:Landroid/support/v7/media/MediaRouteProvider;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider;->deliverDiscoveryRequestChanged()V

    .line 448
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

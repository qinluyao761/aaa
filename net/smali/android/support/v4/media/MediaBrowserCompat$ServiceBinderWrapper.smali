.class Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceBinderWrapper"
.end annotation


# instance fields
.field private mMessenger:Landroid/os/Messenger;

.field private mRootHints:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    .line 2149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2150
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->mMessenger:Landroid/os/Messenger;

    .line 2151
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->mRootHints:Landroid/os/Bundle;

    .line 2152
    return-void
.end method

.method private sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V
    .locals 2

    .line 2225
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2226
    iput p1, v1, Landroid/os/Message;->what:I

    .line 2227
    const/4 v0, 0x1

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 2228
    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2229
    iput-object p3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2230
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 2231
    return-void
.end method


# virtual methods
.method addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/Messenger;)V
    .locals 2

    .line 2169
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2170
    const-string v0, "data_media_item_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    const-string v0, "data_callback_token"

    invoke-static {v1, v0, p2}, Landroid/support/v4/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2172
    const-string v0, "data_options"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2173
    const/4 v0, 0x3

    invoke-direct {p0, v0, v1, p4}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    .line 2174
    return-void
.end method

.method connect(Landroid/content/Context;Landroid/os/Messenger;)V
    .locals 3

    .line 2156
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2157
    const-string v0, "data_package_name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    const-string v0, "data_root_hints"

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->mRootHints:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2159
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2, p2}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    .line 2160
    return-void
.end method

.method disconnect(Landroid/os/Messenger;)V
    .locals 2

    .line 2163
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    .line 2164
    return-void
.end method

.method registerCallbackMessenger(Landroid/content/Context;Landroid/os/Messenger;)V
    .locals 3

    .line 2195
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2196
    const-string v0, "data_package_name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    const-string v0, "data_root_hints"

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->mRootHints:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2198
    const/4 v0, 0x6

    invoke-direct {p0, v0, v2, p2}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    .line 2199
    return-void
.end method

.method unregisterCallbackMessenger(Landroid/os/Messenger;)V
    .locals 2

    .line 2202
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    .line 2203
    return-void
.end method

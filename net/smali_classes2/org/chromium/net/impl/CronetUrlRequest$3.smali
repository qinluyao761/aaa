.class Lorg/chromium/net/impl/CronetUrlRequest$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/CronetUrlRequest;->onRedirectReceived(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/net/impl/CronetUrlRequest;

.field final synthetic val$newLocation:Ljava/lang/String;

.field final synthetic val$responseInfo:Lorg/chromium/net/impl/UrlResponseInfoImpl;


# direct methods
.method constructor <init>(Lorg/chromium/net/impl/CronetUrlRequest;Lorg/chromium/net/impl/UrlResponseInfoImpl;Ljava/lang/String;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequest$3;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    iput-object p2, p0, Lorg/chromium/net/impl/CronetUrlRequest$3;->val$responseInfo:Lorg/chromium/net/impl/UrlResponseInfoImpl;

    iput-object p3, p0, Lorg/chromium/net/impl/CronetUrlRequest$3;->val$newLocation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 505
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest$3;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-virtual {v0}, Lorg/chromium/net/impl/CronetUrlRequest;->checkCallingThread()V

    .line 506
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest$3;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    # getter for: Lorg/chromium/net/impl/CronetUrlRequest;->mUrlRequestAdapterLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/chromium/net/impl/CronetUrlRequest;->access$100(Lorg/chromium/net/impl/CronetUrlRequest;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 507
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest$3;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    # invokes: Lorg/chromium/net/impl/CronetUrlRequest;->isDoneLocked()Z
    invoke-static {v0}, Lorg/chromium/net/impl/CronetUrlRequest;->access$200(Lorg/chromium/net/impl/CronetUrlRequest;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    monitor-exit v4

    return-void

    .line 510
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest$3;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/net/impl/CronetUrlRequest;->mWaitingOnRedirect:Z
    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetUrlRequest;->access$1002(Lorg/chromium/net/impl/CronetUrlRequest;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 511
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5

    .line 514
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest$3;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    # getter for: Lorg/chromium/net/impl/CronetUrlRequest;->mCallback:Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;
    invoke-static {v0}, Lorg/chromium/net/impl/CronetUrlRequest;->access$500(Lorg/chromium/net/impl/CronetUrlRequest;)Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest$3;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    iget-object v2, p0, Lorg/chromium/net/impl/CronetUrlRequest$3;->val$responseInfo:Lorg/chromium/net/impl/UrlResponseInfoImpl;

    iget-object v3, p0, Lorg/chromium/net/impl/CronetUrlRequest$3;->val$newLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->onRedirectReceived(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 517
    goto :goto_1

    .line 515
    :catch_0
    move-exception v4

    .line 516
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest$3;->this$0:Lorg/chromium/net/impl/CronetUrlRequest;

    # invokes: Lorg/chromium/net/impl/CronetUrlRequest;->onCallbackException(Ljava/lang/Exception;)V
    invoke-static {v0, v4}, Lorg/chromium/net/impl/CronetUrlRequest;->access$600(Lorg/chromium/net/impl/CronetUrlRequest;Ljava/lang/Exception;)V

    .line 518
    :goto_1
    return-void
.end method

.class Lorg/chromium/net/impl/CronetUploadDataStream$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/CronetUploadDataStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/net/impl/CronetUploadDataStream;


# direct methods
.method constructor <init>(Lorg/chromium/net/impl/CronetUploadDataStream;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->this$0:Lorg/chromium/net/impl/CronetUploadDataStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 48
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->this$0:Lorg/chromium/net/impl/CronetUploadDataStream;

    # getter for: Lorg/chromium/net/impl/CronetUploadDataStream;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/chromium/net/impl/CronetUploadDataStream;->access$000(Lorg/chromium/net/impl/CronetUploadDataStream;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 49
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->this$0:Lorg/chromium/net/impl/CronetUploadDataStream;

    # getter for: Lorg/chromium/net/impl/CronetUploadDataStream;->mUploadDataStreamAdapter:J
    invoke-static {v0}, Lorg/chromium/net/impl/CronetUploadDataStream;->access$100(Lorg/chromium/net/impl/CronetUploadDataStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 50
    monitor-exit v4

    return-void

    .line 52
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->this$0:Lorg/chromium/net/impl/CronetUploadDataStream;

    sget-object v1, Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;->NOT_IN_CALLBACK:Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

    # invokes: Lorg/chromium/net/impl/CronetUploadDataStream;->checkState(Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;)V
    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetUploadDataStream;->access$200(Lorg/chromium/net/impl/CronetUploadDataStream;Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;)V

    .line 53
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->this$0:Lorg/chromium/net/impl/CronetUploadDataStream;

    # getter for: Lorg/chromium/net/impl/CronetUploadDataStream;->mByteBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v0}, Lorg/chromium/net/impl/CronetUploadDataStream;->access$300(Lorg/chromium/net/impl/CronetUploadDataStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected readData call. Buffer is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->this$0:Lorg/chromium/net/impl/CronetUploadDataStream;

    sget-object v1, Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;->READ:Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;

    # setter for: Lorg/chromium/net/impl/CronetUploadDataStream;->mInWhichUserCallback:Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;
    invoke-static {v0, v1}, Lorg/chromium/net/impl/CronetUploadDataStream;->access$402(Lorg/chromium/net/impl/CronetUploadDataStream;Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;)Lorg/chromium/net/impl/CronetUploadDataStream$UserCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5

    .line 59
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->this$0:Lorg/chromium/net/impl/CronetUploadDataStream;

    # invokes: Lorg/chromium/net/impl/CronetUploadDataStream;->checkCallingThread()V
    invoke-static {v0}, Lorg/chromium/net/impl/CronetUploadDataStream;->access$500(Lorg/chromium/net/impl/CronetUploadDataStream;)V

    .line 60
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->this$0:Lorg/chromium/net/impl/CronetUploadDataStream;

    # getter for: Lorg/chromium/net/impl/CronetUploadDataStream;->mDataProvider:Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;
    invoke-static {v0}, Lorg/chromium/net/impl/CronetUploadDataStream;->access$600(Lorg/chromium/net/impl/CronetUploadDataStream;)Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->this$0:Lorg/chromium/net/impl/CronetUploadDataStream;

    iget-object v2, p0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->this$0:Lorg/chromium/net/impl/CronetUploadDataStream;

    # getter for: Lorg/chromium/net/impl/CronetUploadDataStream;->mByteBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v2}, Lorg/chromium/net/impl/CronetUploadDataStream;->access$300(Lorg/chromium/net/impl/CronetUploadDataStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 63
    goto :goto_1

    .line 61
    :catch_0
    move-exception v4

    .line 62
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->this$0:Lorg/chromium/net/impl/CronetUploadDataStream;

    # invokes: Lorg/chromium/net/impl/CronetUploadDataStream;->onError(Ljava/lang/Throwable;)V
    invoke-static {v0, v4}, Lorg/chromium/net/impl/CronetUploadDataStream;->access$700(Lorg/chromium/net/impl/CronetUploadDataStream;Ljava/lang/Throwable;)V

    .line 64
    :goto_1
    return-void
.end method

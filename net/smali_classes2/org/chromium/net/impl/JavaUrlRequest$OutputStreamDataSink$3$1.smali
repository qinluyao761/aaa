.class Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/chromium/net/impl/JavaUrlRequest$CheckedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink$3;


# direct methods
.method constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink$3;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink$3$1;->this$2:Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 443
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink$3$1;->this$2:Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink$3;

    iget-object v0, v0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink$3;->this$1:Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;

    iget-object v0, v0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mUploadProvider:Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink$3$1;->this$2:Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink$3;

    iget-object v1, v1, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink$3;->this$1:Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;

    iget-object v2, p0, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink$3$1;->this$2:Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink$3;

    iget-object v2, v2, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink$3;->this$1:Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;

    iget-object v2, v2, Lorg/chromium/net/impl/JavaUrlRequest$OutputStreamDataSink;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V

    .line 444
    return-void
.end method

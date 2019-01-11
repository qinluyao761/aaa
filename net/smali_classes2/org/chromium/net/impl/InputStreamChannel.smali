.class final Lorg/chromium/net/impl/InputStreamChannel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;


# instance fields
.field private final mInputStream:Ljava/io/InputStream;

.field private final mIsOpen:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/chromium/net/impl/InputStreamChannel;->mIsOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    iput-object p1, p0, Lorg/chromium/net/impl/InputStreamChannel;->mInputStream:Ljava/io/InputStream;

    .line 28
    return-void
.end method

.method static wrap(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;
    .locals 1

    .line 31
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 32
    move-object v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0

    .line 34
    :cond_0
    new-instance v0, Lorg/chromium/net/impl/InputStreamChannel;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/InputStreamChannel;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 71
    iget-object v0, p0, Lorg/chromium/net/impl/InputStreamChannel;->mIsOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/chromium/net/impl/InputStreamChannel;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 74
    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/chromium/net/impl/InputStreamChannel;->mIsOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 8

    .line 40
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lorg/chromium/net/impl/InputStreamChannel;->mInputStream:Ljava/io/InputStream;

    .line 42
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 41
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 43
    if-lez v4, :cond_1

    .line 44
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/impl/InputStreamChannel;->mInputStream:Ljava/io/InputStream;

    .line 53
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 54
    const/16 v0, 0x4000

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 55
    new-array v7, v6, [B

    .line 56
    iget-object v0, p0, Lorg/chromium/net/impl/InputStreamChannel;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 57
    if-lez v4, :cond_1

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p1, v7, v0, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 61
    :cond_1
    :goto_0
    return v4
.end method
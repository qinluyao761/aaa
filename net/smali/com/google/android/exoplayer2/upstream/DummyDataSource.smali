.class public final Lcom/google/android/exoplayer2/upstream/DummyDataSource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field public static final INSTANCE:Lcom/google/android/exoplayer2/upstream/DummyDataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DummyDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DummyDataSource;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/DummyDataSource;->INSTANCE:Lcom/google/android/exoplayer2/upstream/DummyDataSource;

    .line 29
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DummyDataSource$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DummyDataSource$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/DummyDataSource;->FACTORY:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/DummyDataSource$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DummyDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 56
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 2

    .line 40
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Dummy source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 1

    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
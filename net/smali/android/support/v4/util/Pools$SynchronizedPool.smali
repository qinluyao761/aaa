.class public Landroid/support/v4/util/Pools$SynchronizedPool;
.super Landroid/support/v4/util/Pools$SimplePool;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SynchronizedPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Landroid/support/v4/util/Pools$SimplePool<TT;>;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 153
    invoke-direct {p0, p1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    .line 154
    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 158
    iget-object v1, p0, Landroid/support/v4/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/util/Pools$SimplePool;->acquire()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 160
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 165
    iget-object v1, p0, Landroid/support/v4/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 167
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

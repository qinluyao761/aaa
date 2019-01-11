.class Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InflateThread"
.end annotation


# static fields
.field private static final sInstance:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;


# instance fields
.field private mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;>;"
        }
    .end annotation
.end field

.field private mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SynchronizedPool<Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    invoke-direct {v0}, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;-><init>()V

    sput-object v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    .line 164
    sget-object v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    invoke-virtual {v0}, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->start()V

    .line 165
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 171
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 172
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    return-void
.end method

.method public static getInstance()Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;
    .locals 1

    .line 168
    sget-object v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    return-object v0
.end method


# virtual methods
.method public enqueue(Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;)V
    .locals 3

    .line 225
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    goto :goto_0

    .line 226
    :catch_0
    move-exception v2

    .line 227
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to enqueue async inflate request"

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 230
    :goto_0
    return-void
.end method

.method public obtainRequest()Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;
    .locals 2

    .line 207
    iget-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/support/v4/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;

    .line 208
    if-nez v1, :cond_0

    .line 209
    new-instance v1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;

    invoke-direct {v1}, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;-><init>()V

    .line 211
    :cond_0
    return-object v1
.end method

.method public releaseRequest(Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;)V
    .locals 1

    .line 215
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->callback:Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;

    .line 216
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroid/support/v4/view/AsyncLayoutInflater;

    .line 217
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    .line 218
    const/4 v0, 0x0

    iput v0, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->resid:I

    .line 219
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;

    .line 220
    iget-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public run()V
    .locals 0

    .line 202
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->runInner()V

    goto :goto_0
.end method

.method public runInner()V
    .locals 6

    .line 180
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    goto :goto_0

    .line 181
    :catch_0
    move-exception v5

    .line 183
    const-string v0, "AsyncLayoutInflater"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    return-void

    .line 188
    :goto_0
    :try_start_1
    iget-object v0, v4, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v0, v0, Landroid/support/v4/view/AsyncLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    iget v1, v4, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->resid:I

    iget-object v2, v4, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    goto :goto_1

    .line 190
    :catch_1
    move-exception v5

    .line 192
    const-string v0, "AsyncLayoutInflater"

    const-string v1, "Failed to inflate resource in the background! Retrying on the UI thread"

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    :goto_1
    iget-object v0, v4, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v0, v0, Landroid/support/v4/view/AsyncLayoutInflater;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 197
    return-void
.end method
.class public final Lio/reactivex/subjects/ReplaySubject;
.super Lio/reactivex/subjects/Subject;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;,
        Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;,
        Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Lio/reactivex/subjects/Subject<TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

.field private static final EMPTY_ARRAY:[Ljava/lang/Object;

.field static final TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;


# instance fields
.field final buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject$ReplayBuffer<TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field final observers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 140
    const/4 v0, 0x0

    new-array v0, v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    sput-object v0, Lio/reactivex/subjects/ReplaySubject;->EMPTY:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    .line 143
    const/4 v0, 0x0

    new-array v0, v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    sput-object v0, Lio/reactivex/subjects/ReplaySubject;->TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    .line 442
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lio/reactivex/subjects/ReplaySubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer<TT;>;)V"
        }
    .end annotation

    .line 313
    invoke-direct {p0}, Lio/reactivex/subjects/Subject;-><init>()V

    .line 314
    iput-object p1, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    .line 315
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/ReplaySubject;->EMPTY:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 316
    return-void
.end method

.method public static create()Lio/reactivex/subjects/ReplaySubject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>()Lio/reactivex/subjects/ReplaySubject<TT;>;"
        }
    .end annotation

    .line 163
    new-instance v0, Lio/reactivex/subjects/ReplaySubject;

    new-instance v1, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/subjects/ReplaySubject;-><init>(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;)V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;)Z"
        }
    .end annotation

    .line 499
    :goto_0
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    .line 500
    sget-object v0, Lio/reactivex/subjects/ReplaySubject;->TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    if-ne v2, v0, :cond_0

    .line 501
    const/4 v0, 0x0

    return v0

    .line 503
    :cond_0
    array-length v3, v2

    .line 505
    add-int/lit8 v0, v3, 0x1

    new-array v4, v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    .line 506
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v2, v0, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 507
    aput-object p1, v4, v3

    .line 508
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    const/4 v0, 0x1

    return v0

    .line 511
    :cond_1
    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasComplete()Z
    .locals 2

    .line 474
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v1

    .line 475
    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 7

    .line 378
    iget-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    if-eqz v0, :cond_0

    .line 379
    return-void

    .line 381
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    .line 383
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v1

    .line 385
    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    .line 387
    invoke-interface {v2, v1}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->addFinal(Ljava/lang/Object;)V

    .line 389
    invoke-virtual {p0, v1}, Lio/reactivex/subjects/ReplaySubject;->terminate(Ljava/lang/Object;)[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 390
    invoke-interface {v2, v6}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V

    .line 389
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 392
    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 7

    .line 358
    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 359
    iget-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    if-eqz v0, :cond_0

    .line 360
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 361
    return-void

    .line 363
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    .line 365
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    .line 367
    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    .line 369
    invoke-interface {v2, v1}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->addFinal(Ljava/lang/Object;)V

    .line 371
    invoke-virtual {p0, v1}, Lio/reactivex/subjects/ReplaySubject;->terminate(Ljava/lang/Object;)[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 372
    invoke-interface {v2, v6}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V

    .line 371
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 374
    :cond_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 343
    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 344
    iget-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    if-eqz v0, :cond_0

    .line 345
    return-void

    .line 348
    :cond_0
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    .line 349
    invoke-interface {v1, p1}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->add(Ljava/lang/Object;)V

    .line 351
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 352
    invoke-interface {v1, v5}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V

    .line 351
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 354
    :cond_1
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 336
    iget-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    if-eqz v0, :cond_0

    .line 337
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 339
    :cond_0
    return-void
.end method

.method remove(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;)V"
        }
    .end annotation

    .line 517
    :goto_0
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    .line 518
    sget-object v0, Lio/reactivex/subjects/ReplaySubject;->TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    if-eq v3, v0, :cond_0

    sget-object v0, Lio/reactivex/subjects/ReplaySubject;->EMPTY:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    if-ne v3, v0, :cond_1

    .line 519
    :cond_0
    return-void

    .line 521
    :cond_1
    array-length v4, v3

    .line 522
    const/4 v5, -0x1

    .line 523
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_3

    .line 524
    aget-object v0, v3, v6

    if-ne v0, p1, :cond_2

    .line 525
    move v5, v6

    .line 526
    goto :goto_2

    .line 523
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 530
    :cond_3
    :goto_2
    if-gez v5, :cond_4

    .line 531
    return-void

    .line 534
    :cond_4
    const/4 v0, 0x1

    if-ne v4, v0, :cond_5

    .line 535
    sget-object v6, Lio/reactivex/subjects/ReplaySubject;->EMPTY:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    goto :goto_3

    .line 537
    :cond_5
    add-int/lit8 v0, v4, -0x1

    new-array v6, v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    .line 538
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v3, v0, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    add-int/lit8 v0, v5, 0x1

    sub-int v1, v4, v5

    add-int/lit8 v1, v1, -0x1

    invoke-static {v3, v0, v6, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    :goto_3
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v3, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 542
    return-void

    .line 544
    :cond_6
    goto/16 :goto_0
.end method

.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lio/reactivex/Observer<-TT;>;)V"
        }
    .end annotation

    .line 320
    new-instance v1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    invoke-direct {v1, p1, p0}, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;-><init>(Lio/reactivex/Observer;Lio/reactivex/subjects/ReplaySubject;)V

    .line 321
    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 323
    iget-boolean v0, v1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    if-nez v0, :cond_1

    .line 324
    invoke-virtual {p0, v1}, Lio/reactivex/subjects/ReplaySubject;->add(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-boolean v0, v1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0, v1}, Lio/reactivex/subjects/ReplaySubject;->remove(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V

    .line 327
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0, v1}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V

    .line 332
    :cond_1
    return-void
.end method

.method terminate(Ljava/lang/Object;)[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Object;)[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<TT;>;"
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/ReplaySubject;->TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    return-object v0

    .line 552
    :cond_0
    sget-object v0, Lio/reactivex/subjects/ReplaySubject;->TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    return-object v0
.end method

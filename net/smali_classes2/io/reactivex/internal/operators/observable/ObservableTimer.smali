.class public final Lio/reactivex/internal/operators/observable/ObservableTimer;
.super Lio/reactivex/Observable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableTimer$TimerObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Observable<Ljava/lang/Long;>;"
    }
.end annotation


# instance fields
.field final delay:J

.field final scheduler:Lio/reactivex/Scheduler;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 28
    iput-wide p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimer;->delay:J

    .line 29
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableTimer;->unit:Ljava/util/concurrent/TimeUnit;

    .line 30
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableTimer;->scheduler:Lio/reactivex/Scheduler;

    .line 31
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lio/reactivex/Observer<-Ljava/lang/Long;>;)V"
        }
    .end annotation

    .line 35
    new-instance v4, Lio/reactivex/internal/operators/observable/ObservableTimer$TimerObserver;

    invoke-direct {v4, p1}, Lio/reactivex/internal/operators/observable/ObservableTimer$TimerObserver;-><init>(Lio/reactivex/Observer;)V

    .line 36
    invoke-interface {p1, v4}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 38
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimer;->scheduler:Lio/reactivex/Scheduler;

    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimer;->delay:J

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableTimer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v1, v2, v3}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v5

    .line 40
    invoke-virtual {v4, v5}, Lio/reactivex/internal/operators/observable/ObservableTimer$TimerObserver;->setResource(Lio/reactivex/disposables/Disposable;)V

    .line 41
    return-void
.end method

.class final Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSkipWhile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SkipWhileObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Lio/reactivex/Observer<TT;>;Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<-TT;>;"
        }
    .end annotation
.end field

.field notSkipping:Z

.field final predicate:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<-TT;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lio/reactivex/Observer<-TT;>;Lio/reactivex/functions/Predicate<-TT;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->downstream:Lio/reactivex/Observer;

    .line 41
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->predicate:Lio/reactivex/functions/Predicate;

    .line 42
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 54
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 55
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 91
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 86
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 64
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->notSkipping:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 69
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->predicate:Lio/reactivex/functions/Predicate;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
    goto :goto_0

    .line 70
    :catch_0
    move-exception v2

    .line 71
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, v2}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 74
    return-void

    .line 76
    :goto_0
    if-nez v1, :cond_1

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->notSkipping:Z

    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 81
    :cond_1
    :goto_1
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 48
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 50
    :cond_0
    return-void
.end method

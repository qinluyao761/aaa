.class public final Lio/reactivex/internal/operators/observable/ObservableToListSingle;
.super Lio/reactivex/Single;
.source ""

# interfaces
.implements Lio/reactivex/internal/fuseable/FuseToObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;U::Ljava/util/Collection<-TT;>;>Lio/reactivex/Single<TU;>;Lio/reactivex/internal/fuseable/FuseToObservable<TU;>;"
    }
.end annotation


# instance fields
.field final collectionSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<TU;>;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lio/reactivex/ObservableSource<TT;>;I)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    .line 39
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle;->source:Lio/reactivex/ObservableSource;

    .line 40
    invoke-static {p2}, Lio/reactivex/internal/functions/Functions;->createArrayList(I)Ljava/util/concurrent/Callable;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle;->collectionSupplier:Ljava/util/concurrent/Callable;

    .line 41
    return-void
.end method


# virtual methods
.method public fuseToObservable()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lio/reactivex/Observable<TU;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableToList;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle;->source:Lio/reactivex/ObservableSource;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle;->collectionSupplier:Ljava/util/concurrent/Callable;

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableToList;-><init>(Lio/reactivex/ObservableSource;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lio/reactivex/SingleObserver<-TU;>;)V"
        }
    .end annotation

    .line 52
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle;->collectionSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 53
    :catch_0
    move-exception v3

    .line 54
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 55
    invoke-static {v3, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    .line 56
    return-void

    .line 58
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableToListSingle;->source:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/observable/ObservableToListSingle$ToListObserver;-><init>(Lio/reactivex/SingleObserver;Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 59
    return-void
.end method

.class public final Lio/reactivex/internal/operators/observable/ObservableEmpty;
.super Lio/reactivex/Observable;
.source ""

# interfaces
.implements Lio/reactivex/internal/fuseable/ScalarCallable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Observable<Ljava/lang/Object;>;Lio/reactivex/internal/fuseable/ScalarCallable<Ljava/lang/Object;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<Ljava/lang/Object;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableEmpty;

    invoke-direct {v0}, Lio/reactivex/internal/operators/observable/ObservableEmpty;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableEmpty;->INSTANCE:Lio/reactivex/Observable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lio/reactivex/Observer<-Ljava/lang/Object;>;)V"
        }
    .end annotation

    .line 28
    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/Observer;)V

    .line 29
    return-void
.end method

.class final Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutTask"
.end annotation


# instance fields
.field final idx:J

.field final parent:Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;


# direct methods
.method constructor <init>(JLio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-wide p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTask;->idx:J

    .line 159
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTask;->parent:Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;

    .line 160
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 164
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTask;->parent:Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;

    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTask;->idx:J

    invoke-interface {v0, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;->onTimeout(J)V

    .line 165
    return-void
.end method

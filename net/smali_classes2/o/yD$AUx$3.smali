.class public final Lo/yD$AUx$3;
.super Lo/pI;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/yD$AUx;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic ˋ:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lo/yD$AUx$3;->ˋ:Ljava/lang/ref/WeakReference;

    .line 134
    invoke-direct {p0}, Lo/pI;-><init>()V

    return-void
.end method


# virtual methods
.method public ˎ(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 136
    iget-object v0, p0, Lo/yD$AUx$3;->ˋ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/reactivex/ObservableEmitter;

    if-eqz v1, :cond_0

    move-object v2, v1

    .line 137
    new-instance v0, Lo/yD$ˋ;

    invoke-direct {v0, p1, p2}, Lo/yD$ˋ;-><init>(ZLcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {v2, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 138
    invoke-interface {v2}, Lio/reactivex/ObservableEmitter;->onComplete()V

    .line 136
    .line 139
    nop

    .line 140
    :cond_0
    return-void
.end method
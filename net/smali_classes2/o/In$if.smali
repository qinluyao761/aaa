.class public final Lo/In$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/In;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# direct methods
.method public static ˎ(Lo/In;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/In;Lio/reactivex/Observable<Lo/Hh;>;)V"
        }
    .end annotation

    const-string v0, "safeManagedStateObservable"

    invoke-static {p1, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 13
    .line 13
    .line 14
    .line 14
    .line 15
    sget-object v0, Lo/In$if$If;->ˊ:Lo/In$if$If;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "safeManagedStateObservab\u2026.InitialPlaybackLoading }"

    invoke-static {v0, v1}, Lo/Vb;->ॱ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v1, Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerInteractiveAwarePresenter$initializeIsInteractiveAwarePresenter$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/v2/presenter/mixins/PlayerInteractiveAwarePresenter$initializeIsInteractiveAwarePresenter$2;-><init>(Lo/In;)V

    move-object v3, v1

    check-cast v3, Lo/UA;

    .line 15
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/UA;Lo/Ur;Lo/UA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 25
    return-void
.end method

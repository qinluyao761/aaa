.class final Lo/yD$aux;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/yD;->ˊ(Lcom/netflix/mediaclient/service/user/UserAgentInterface;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Lio/reactivex/ObservableOnSubscribe<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic ˎ:Lo/yD;

.field final synthetic ॱ:Lcom/netflix/mediaclient/service/user/UserAgentInterface;


# direct methods
.method constructor <init>(Lo/yD;Lcom/netflix/mediaclient/service/user/UserAgentInterface;)V
    .locals 0

    iput-object p1, p0, Lo/yD$aux;->ˎ:Lo/yD;

    iput-object p2, p0, Lo/yD$aux;->ॱ:Lcom/netflix/mediaclient/service/user/UserAgentInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lio/reactivex/ObservableEmitter<Lcom/netflix/mediaclient/android/app/Status;>;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lo/yD$aux;->ॱ:Lcom/netflix/mediaclient/service/user/UserAgentInterface;

    new-instance v1, Lo/yD$aux$3;

    invoke-direct {v1, p0, v2}, Lo/yD$aux$3;-><init>(Lo/yD$aux;Ljava/lang/ref/WeakReference;)V

    check-cast v1, Lo/pH;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentInterface;->ˋ(Lo/pH;)V

    .line 109
    return-void
.end method

.class final Lo/to$iF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/to;->ˎ(Ljava/lang/String;Ljava/lang/String;ZLo/bW;)Lio/reactivex/Observable;
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
.field final synthetic ˋ:Ljava/lang/String;

.field final synthetic ˎ:Lo/bW;

.field final synthetic ˏ:Ljava/lang/String;

.field final synthetic ॱ:Z


# direct methods
.method constructor <init>(Lo/bW;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lo/to$iF;->ˎ:Lo/bW;

    iput-object p2, p0, Lo/to$iF;->ˋ:Ljava/lang/String;

    iput-object p3, p0, Lo/to$iF;->ˏ:Ljava/lang/String;

    iput-boolean p4, p0, Lo/to$iF;->ॱ:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lio/reactivex/ObservableEmitter<Lo/to$\u02cb;>;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lo/to$iF;->ˎ:Lo/bW;

    iget-object v1, p0, Lo/to$iF;->ˋ:Ljava/lang/String;

    iget-object v2, p0, Lo/to$iF;->ˏ:Ljava/lang/String;

    iget-boolean v3, p0, Lo/to$iF;->ॱ:Z

    new-instance v4, Lo/to$iF$3;

    invoke-direct {v4, v5}, Lo/to$iF$3;-><init>(Ljava/lang/ref/WeakReference;)V

    check-cast v4, Lo/っ;

    invoke-interface {v0, v1, v2, v3, v4}, Lo/bW;->ॱ(Ljava/lang/String;Ljava/lang/String;ZLo/っ;)V

    .line 76
    return-void
.end method

.class final Lo/wP$if$iF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/wP$if;->ˋ(Lo/wN;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Lio/reactivex/functions/Predicate<Ljava/lang/Boolean;>;"
    }
.end annotation


# instance fields
.field final synthetic ˎ:Lo/wP$if;


# direct methods
.method constructor <init>(Lo/wP$if;)V
    .locals 0

    iput-object p1, p0, Lo/wP$if$iF;->ˎ:Lo/wP$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic test(Ljava/lang/Object;)Z
    .locals 1

    .line 122
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lo/wP$if$iF;->ॱ(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public final ॱ(Ljava/lang/Boolean;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lo/wP$if$iF;->ˎ:Lo/wP$if;

    invoke-static {v0}, Lo/wP$if;->ॱ(Lo/wP$if;)Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->ˏ()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

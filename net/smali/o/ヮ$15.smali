.class Lo/ヮ$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ヮ;->onGenresFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ˊ:Ljava/util/List;

.field final synthetic ˎ:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic ॱ:Lo/ヮ;


# direct methods
.method constructor <init>(Lo/ヮ;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lo/ヮ$15;->ॱ:Lo/ヮ;

    iput-object p2, p0, Lo/ヮ$15;->ˊ:Ljava/util/List;

    iput-object p3, p0, Lo/ヮ$15;->ˎ:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 349
    invoke-static {}, Lo/Od;->ˏ()Z

    .line 350
    iget-object v0, p0, Lo/ヮ$15;->ॱ:Lo/ヮ;

    invoke-static {v0}, Lo/ヮ;->ˎ(Lo/ヮ;)Lo/っ;

    move-result-object v0

    iget-object v1, p0, Lo/ヮ$15;->ˊ:Ljava/util/List;

    iget-object v2, p0, Lo/ヮ$15;->ˎ:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2}, Lo/っ;->onGenresFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 351
    return-void
.end method

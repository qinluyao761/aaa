.class Lo/ヮ$36;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ヮ;->onBBVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ˋ:Lo/ヮ;

.field final synthetic ˏ:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic ॱ:Ljava/util/List;


# direct methods
.method constructor <init>(Lo/ヮ;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lo/ヮ$36;->ˋ:Lo/ヮ;

    iput-object p2, p0, Lo/ヮ$36;->ॱ:Ljava/util/List;

    iput-object p3, p0, Lo/ヮ$36;->ˏ:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 132
    invoke-static {}, Lo/Od;->ˏ()Z

    .line 133
    iget-object v0, p0, Lo/ヮ$36;->ˋ:Lo/ヮ;

    invoke-static {v0}, Lo/ヮ;->ˎ(Lo/ヮ;)Lo/っ;

    move-result-object v0

    iget-object v1, p0, Lo/ヮ$36;->ॱ:Ljava/util/List;

    iget-object v2, p0, Lo/ヮ$36;->ˏ:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2}, Lo/っ;->onBBVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 134
    return-void
.end method

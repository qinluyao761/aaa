.class Lo/ヮ$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ヮ;->onKidsCharacterDetailsFetched(Lo/rZ;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ˊ:Lo/rZ;

.field final synthetic ˋ:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic ˎ:Ljava/lang/Boolean;

.field final synthetic ˏ:Lo/ヮ;


# direct methods
.method constructor <init>(Lo/ヮ;Lo/rZ;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lo/ヮ$8;->ˏ:Lo/ヮ;

    iput-object p2, p0, Lo/ヮ$8;->ˊ:Lo/rZ;

    iput-object p3, p0, Lo/ヮ$8;->ˎ:Ljava/lang/Boolean;

    iput-object p4, p0, Lo/ヮ$8;->ˋ:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 251
    invoke-static {}, Lo/Od;->ˏ()Z

    .line 252
    iget-object v0, p0, Lo/ヮ$8;->ˏ:Lo/ヮ;

    invoke-static {v0}, Lo/ヮ;->ˎ(Lo/ヮ;)Lo/っ;

    move-result-object v0

    iget-object v1, p0, Lo/ヮ$8;->ˊ:Lo/rZ;

    iget-object v2, p0, Lo/ヮ$8;->ˎ:Ljava/lang/Boolean;

    iget-object v3, p0, Lo/ヮ$8;->ˋ:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2, v3}, Lo/っ;->onKidsCharacterDetailsFetched(Lo/rZ;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 253
    return-void
.end method

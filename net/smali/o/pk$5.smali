.class Lo/pk$5;
.super Lo/ヶ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/pk;->ˊ(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ˊ:Lo/pk;


# direct methods
.method constructor <init>(Lo/pk;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lo/pk$5;->ˊ:Lo/pk;

    invoke-direct {p0}, Lo/ヶ;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lo/rS;>;Lcom/netflix/mediaclient/android/app/Status;)V"
        }
    .end annotation

    .line 172
    invoke-super {p0, p1, p2}, Lo/ヶ;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 173
    iget-object v0, p0, Lo/pk$5;->ˊ:Lo/pk;

    invoke-virtual {v0}, Lo/pk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/cc;->ˋ(Landroid/content/Context;)V

    .line 174
    return-void
.end method

.class final Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter_Ab10892$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/UA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter_Ab10892;-><init>(Lio/reactivex/Observable;Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView_Ab10892;Lo/Lt;Lio/reactivex/Observable;Landroid/arch/lifecycle/Lifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;Lo/UA<Ljava/lang/Throwable;Lo/Tj;>;"
    }
.end annotation


# instance fields
.field final synthetic ˋ:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter_Ab10892;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter_Ab10892;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter_Ab10892$2;->ˋ:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter_Ab10892;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 11
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter_Ab10892$2;->ˋ(Ljava/lang/Throwable;)V

    sget-object v0, Lo/Tj;->ˊ:Lo/Tj;

    return-object v0
.end method

.method public final ˋ(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter_Ab10892$2;->ˋ:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter_Ab10892;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter_Ab10892;->ˊ(Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter_Ab10892;)Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView_Ab10892;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView_Ab10892;->ʻ()V

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter_Ab10892$2;->ˋ:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter_Ab10892;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter_Ab10892;->ˊ(Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchPresenter_Ab10892;)Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView_Ab10892;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView_Ab10892;->ˏ()V

    .line 42
    return-void
.end method

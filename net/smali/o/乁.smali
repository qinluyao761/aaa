.class public final Lo/乁;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final ॱ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<+Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;>;)V"
        }
    .end annotation

    const-string v0, "specifications"

    invoke-static {p1, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/乁;->ॱ:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final ˎ(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lo/乁;->ॱ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    .line 16
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->getImplementation()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    return-object v2

    .line 15
    :cond_0
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;->getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;

    move-result-object v0

    const-string v1, "ErrorLoggingSpecification.getDefault()"

    invoke-static {v0, v1}, Lo/Vb;->ॱ(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

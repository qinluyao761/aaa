.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final localizedHeading:Ljava/lang/String;

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/Object;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/util/List<+Ljava/lang/Object;>;)V"
        }
    .end annotation

    const-string v0, "localizedHeading"

    invoke-static {p1, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;->localizedHeading:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;->values:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;->localizedHeading:Ljava/lang/String;

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;->values:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;->copy(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;->localizedHeading:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Ljava/lang/Object;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;->values:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/util/List<+Ljava/lang/Object;>;)Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;"
        }
    .end annotation

    const-string v0, "localizedHeading"

    invoke-static {p1, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;

    if-eqz v0, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;->localizedHeading:Ljava/lang/String;

    iget-object v1, v2, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;->localizedHeading:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;->values:Ljava/util/List;

    iget-object v1, v2, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;->values:Ljava/util/List;

    invoke-static {v0, v1}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final getLocalizedHeading()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;->localizedHeading:Ljava/lang/String;

    return-object v0
.end method

.method public final getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Ljava/lang/Object;>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;->values:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;->localizedHeading:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;->values:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlanGridRowData(localizedHeading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;->localizedHeading:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/PlanGridRowData;->values:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

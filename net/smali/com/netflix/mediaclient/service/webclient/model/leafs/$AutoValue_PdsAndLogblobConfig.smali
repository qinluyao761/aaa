.class abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PdsAndLogblobConfig;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;
.source ""


# instance fields
.field private final disableOfflineLogblobs:Z

.field private final disableOfflinePdsEvents:Z

.field private final disableStreamingLogblobs:Z

.field private final disableStreamingPdsEvents:Z


# direct methods
.method constructor <init>(ZZZZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;-><init>()V

    .line 18
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PdsAndLogblobConfig;->disableStreamingPdsEvents:Z

    .line 19
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PdsAndLogblobConfig;->disableStreamingLogblobs:Z

    .line 20
    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PdsAndLogblobConfig;->disableOfflinePdsEvents:Z

    .line 21
    iput-boolean p4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PdsAndLogblobConfig;->disableOfflineLogblobs:Z

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 60
    if-ne p1, p0, :cond_0

    .line 61
    const/4 v0, 0x1

    return v0

    .line 63
    :cond_0
    instance-of v0, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    if-eqz v0, :cond_2

    .line 64
    move-object v2, p1

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    .line 65
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PdsAndLogblobConfig;->disableStreamingPdsEvents:Z

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;->getDisableStreamingPdsEvents()Z

    move-result v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PdsAndLogblobConfig;->disableStreamingLogblobs:Z

    .line 66
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;->getDisableStreamingLogblobs()Z

    move-result v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PdsAndLogblobConfig;->disableOfflinePdsEvents:Z

    .line 67
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;->getDisableOfflinePdsEvents()Z

    move-result v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PdsAndLogblobConfig;->disableOfflineLogblobs:Z

    .line 68
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;->getDisableOfflineLogblobs()Z

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    .line 70
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getDisableOfflineLogblobs()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableOfflineLogblobs"
    .end annotation

    .line 45
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PdsAndLogblobConfig;->disableOfflineLogblobs:Z

    return v0
.end method

.method public getDisableOfflinePdsEvents()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableOfflinePdsEvents"
    .end annotation

    .line 39
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PdsAndLogblobConfig;->disableOfflinePdsEvents:Z

    return v0
.end method

.method public getDisableStreamingLogblobs()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableStreamingLogblobs"
    .end annotation

    .line 33
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PdsAndLogblobConfig;->disableStreamingLogblobs:Z

    return v0
.end method

.method public getDisableStreamingPdsEvents()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableStreamingPdsEvents"
    .end annotation

    .line 27
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PdsAndLogblobConfig;->disableStreamingPdsEvents:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 75
    const/4 v1, 0x1

    .line 76
    const v1, 0xf4243

    .line 77
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PdsAndLogblobConfig;->disableStreamingPdsEvents:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    xor-int/2addr v1, v0

    .line 78
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 79
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PdsAndLogblobConfig;->disableStreamingLogblobs:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v0, 0x4d5

    :goto_1
    xor-int/2addr v1, v0

    .line 80
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 81
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PdsAndLogblobConfig;->disableOfflinePdsEvents:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v0, 0x4d5

    :goto_2
    xor-int/2addr v1, v0

    .line 82
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 83
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PdsAndLogblobConfig;->disableOfflineLogblobs:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x4cf

    goto :goto_3

    :cond_3
    const/16 v0, 0x4d5

    :goto_3
    xor-int/2addr v1, v0

    .line 84
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PdsAndLogblobConfig{disableStreamingPdsEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PdsAndLogblobConfig;->disableStreamingPdsEvents:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disableStreamingLogblobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PdsAndLogblobConfig;->disableStreamingLogblobs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disableOfflinePdsEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PdsAndLogblobConfig;->disableOfflinePdsEvents:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disableOfflineLogblobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_PdsAndLogblobConfig;->disableOfflineLogblobs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

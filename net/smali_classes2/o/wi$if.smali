.class public final Lo/wi$if;
.super Lo/wi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/wi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private final ˊ:Ljava/lang/String;

.field private final ˋ:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

.field private final ॱ:Lcom/netflix/mediaclient/servicemgr/PlayContext;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;)V
    .locals 1

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    invoke-static {p2, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mutation"

    invoke-static {p3, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/wi;-><init>(Lo/UW;)V

    iput-object p1, p0, Lo/wi$if;->ˊ:Ljava/lang/String;

    iput-object p2, p0, Lo/wi$if;->ॱ:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iput-object p3, p0, Lo/wi$if;->ˋ:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lo/wi$if;

    if-eqz v0, :cond_1

    move-object v2, p1

    check-cast v2, Lo/wi$if;

    iget-object v0, p0, Lo/wi$if;->ˊ:Ljava/lang/String;

    iget-object v1, v2, Lo/wi$if;->ˊ:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/wi$if;->ॱ:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iget-object v1, v2, Lo/wi$if;->ॱ:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-static {v0, v1}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/wi$if;->ˋ:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    iget-object v1, v2, Lo/wi$if;->ˋ:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

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

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lo/wi$if;->ˊ:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/wi$if;->ॱ:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/wi$if;->ˋ:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ToggleRemindMe(videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/wi$if;->ˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/wi$if;->ॱ:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mutation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/wi$if;->ˋ:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˊ()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lo/wi$if;->ˊ:Ljava/lang/String;

    return-object v0
.end method

.method public final ˎ()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 1

    .line 67
    iget-object v0, p0, Lo/wi$if;->ॱ:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-object v0
.end method

.method public final ॱ()Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;
    .locals 1

    .line 68
    iget-object v0, p0, Lo/wi$if;->ˋ:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    return-object v0
.end method

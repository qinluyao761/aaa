.class abstract Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Button_States;
.super Lcom/netflix/model/leafs/originals/interactive/Button$States;
.source ""


# instance fields
.field private final defaultState:Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

.field private final selectedState:Lcom/netflix/model/leafs/originals/interactive/SpriteImage;


# direct methods
.method constructor <init>(Lcom/netflix/model/leafs/originals/interactive/SpriteImage;Lcom/netflix/model/leafs/originals/interactive/SpriteImage;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/Button$States;-><init>()V

    .line 14
    if-nez p1, :cond_0

    .line 15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null defaultState"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Button_States;->defaultState:Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    .line 18
    if-nez p2, :cond_1

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null selectedState"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_1
    iput-object p2, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Button_States;->selectedState:Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    .line 22
    return-void
.end method


# virtual methods
.method public defaultState()Lcom/netflix/model/leafs/originals/interactive/SpriteImage;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default"
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Button_States;->defaultState:Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 46
    if-ne p1, p0, :cond_0

    .line 47
    const/4 v0, 0x1

    return v0

    .line 49
    :cond_0
    instance-of v0, p1, Lcom/netflix/model/leafs/originals/interactive/Button$States;

    if-eqz v0, :cond_2

    .line 50
    move-object v2, p1

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/Button$States;

    .line 51
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Button_States;->defaultState:Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/Button$States;->defaultState()Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Button_States;->selectedState:Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    .line 52
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/Button$States;->selectedState()Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    .line 54
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 59
    const/4 v1, 0x1

    .line 60
    const v1, 0xf4243

    .line 61
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Button_States;->defaultState:Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 62
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 63
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Button_States;->selectedState:Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 64
    return v1
.end method

.method public selectedState()Lcom/netflix/model/leafs/originals/interactive/SpriteImage;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "selected"
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Button_States;->selectedState:Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "States{defaultState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Button_States;->defaultState:Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selectedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Button_States;->selectedState:Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

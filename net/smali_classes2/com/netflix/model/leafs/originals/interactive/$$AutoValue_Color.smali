.class abstract Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Color;
.super Lcom/netflix/model/leafs/originals/interactive/Color;
.source ""


# instance fields
.field private final colorWithRGB:Ljava/lang/String;

.field private final withAlpha:Ljava/lang/Double;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/Color;-><init>()V

    .line 12
    if-nez p1, :cond_0

    .line 13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null colorWithRGB"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Color;->colorWithRGB:Ljava/lang/String;

    .line 16
    if-nez p2, :cond_1

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null withAlpha"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_1
    iput-object p2, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Color;->withAlpha:Ljava/lang/Double;

    .line 20
    return-void
.end method


# virtual methods
.method public colorWithRGB()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Color;->colorWithRGB:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 42
    if-ne p1, p0, :cond_0

    .line 43
    const/4 v0, 0x1

    return v0

    .line 45
    :cond_0
    instance-of v0, p1, Lcom/netflix/model/leafs/originals/interactive/Color;

    if-eqz v0, :cond_2

    .line 46
    move-object v2, p1

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/Color;

    .line 47
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Color;->colorWithRGB:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/Color;->colorWithRGB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Color;->withAlpha:Ljava/lang/Double;

    .line 48
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/Color;->withAlpha()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    .line 50
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 55
    const/4 v1, 0x1

    .line 56
    const v1, 0xf4243

    .line 57
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Color;->colorWithRGB:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 58
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 59
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Color;->withAlpha:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 60
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Color{colorWithRGB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Color;->colorWithRGB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", withAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Color;->withAlpha:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAlpha()Ljava/lang/Double;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/interactive/$$AutoValue_Color;->withAlpha:Ljava/lang/Double;

    return-object v0
.end method

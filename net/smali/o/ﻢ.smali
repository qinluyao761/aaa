.class abstract Lo/ﻢ;
.super Lo/Λ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ﻢ$ˋ;
    }
.end annotation


# instance fields
.field private final ˋ:I

.field private final ˏ:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/Λ;-><init>()V

    .line 14
    iput p1, p0, Lo/ﻢ;->ˏ:I

    .line 15
    iput p2, p0, Lo/ﻢ;->ˋ:I

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 40
    if-ne p1, p0, :cond_0

    .line 41
    const/4 v0, 0x1

    return v0

    .line 43
    :cond_0
    instance-of v0, p1, Lo/Λ;

    if-eqz v0, :cond_2

    .line 44
    move-object v2, p1

    check-cast v2, Lo/Λ;

    .line 45
    iget v0, p0, Lo/ﻢ;->ˏ:I

    invoke-virtual {v2}, Lo/Λ;->ॱ()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lo/ﻢ;->ˋ:I

    .line 46
    invoke-virtual {v2}, Lo/Λ;->ˏ()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0

    .line 48
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 53
    const/4 v1, 0x1

    .line 54
    const v1, 0xf4243

    .line 55
    iget v0, p0, Lo/ﻢ;->ˏ:I

    xor-int/2addr v1, v0

    .line 56
    const v0, 0xf4243

    mul-int/2addr v1, v0

    .line 57
    iget v0, p0, Lo/ﻢ;->ˋ:I

    xor-int/2addr v1, v0

    .line 58
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerRetryPolicy{maxRetries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/ﻢ;->ˏ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retryAfterSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/ﻢ;->ˋ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected ˎ()Lo/Λ$iF;
    .locals 2

    .line 63
    new-instance v0, Lo/ﻢ$ˋ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/ﻢ$ˋ;-><init>(Lo/Λ;Lo/ﻢ$4;)V

    return-object v0
.end method

.method public ˏ()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retryAfterSeconds"
    .end annotation

    .line 27
    iget v0, p0, Lo/ﻢ;->ˋ:I

    return v0
.end method

.method public ॱ()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxRetries"
    .end annotation

    .line 21
    iget v0, p0, Lo/ﻢ;->ˏ:I

    return v0
.end method

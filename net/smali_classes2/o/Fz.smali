.class public Lo/Fz;
.super Lo/FD;
.source ""

# interfaces
.implements Lo/ˉ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/FD;Lo/\u02c9<Lo/FD$If;>;"
    }
.end annotation


# instance fields
.field private ʻ:Lo/CON;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CON<Lo/Fz;Lo/FD$If;>;"
        }
    .end annotation
.end field

.field private ˋ:Lo/ﾞ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\uff9e<Lo/Fz;Lo/FD$If;>;"
        }
    .end annotation
.end field

.field private ˏ:Lo/ﹳ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufe73<Lo/Fz;Lo/FD$If;>;"
        }
    .end annotation
.end field

.field private ॱ:Lo/coN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/coN<Lo/Fz;Lo/FD$If;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lo/FD;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 217
    if-ne p1, p0, :cond_0

    .line 218
    const/4 v0, 0x1

    return v0

    .line 220
    :cond_0
    instance-of v0, p1, Lo/Fz;

    if-nez v0, :cond_1

    .line 221
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_1
    invoke-super {p0, p1}, Lo/FD;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    const/4 v0, 0x0

    return v0

    .line 226
    :cond_2
    move-object v2, p1

    check-cast v2, Lo/Fz;

    .line 227
    iget-object v0, p0, Lo/Fz;->ॱ:Lo/coN;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v1, v2, Lo/Fz;->ॱ:Lo/coN;

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eq v0, v1, :cond_5

    .line 228
    const/4 v0, 0x0

    return v0

    .line 230
    :cond_5
    iget-object v0, p0, Lo/Fz;->ˏ:Lo/ﹳ;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    iget-object v1, v2, Lo/Fz;->ˏ:Lo/ﹳ;

    if-nez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    if-eq v0, v1, :cond_8

    .line 231
    const/4 v0, 0x0

    return v0

    .line 233
    :cond_8
    iget-object v0, p0, Lo/Fz;->ˋ:Lo/ﾞ;

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    iget-object v1, v2, Lo/Fz;->ˋ:Lo/ﾞ;

    if-nez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    :goto_5
    if-eq v0, v1, :cond_b

    .line 234
    const/4 v0, 0x0

    return v0

    .line 236
    :cond_b
    iget-object v0, p0, Lo/Fz;->ʻ:Lo/CON;

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    :goto_6
    iget-object v1, v2, Lo/Fz;->ʻ:Lo/CON;

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    :goto_7
    if-eq v0, v1, :cond_e

    .line 237
    const/4 v0, 0x0

    return v0

    .line 239
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 244
    invoke-super {p0}, Lo/FD;->hashCode()I

    move-result v2

    .line 245
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lo/Fz;->ॱ:Lo/coN;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int v2, v0, v1

    .line 246
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lo/Fz;->ˏ:Lo/ﹳ;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int v2, v0, v1

    .line 247
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lo/Fz;->ˋ:Lo/ﾞ;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int v2, v0, v1

    .line 248
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lo/Fz;->ʻ:Lo/CON;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int v2, v0, v1

    .line 249
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadedEpisodesHeaderModel_{}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 255
    invoke-super {p0}, Lo/FD;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    return-object v0
.end method

.method protected synthetic ʻ()Lo/ʽ;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lo/Fz;->ˊॱ()Lo/FD$If;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ˊ(FFIILo/ʽ;)V
    .locals 6

    .line 21
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    check-cast v5, Lo/FD$If;

    invoke-virtual/range {v0 .. v5}, Lo/Fz;->ˋ(FFIILo/FD$If;)V

    return-void
.end method

.method public synthetic ˊ(ILo/ʽ;)V
    .locals 1

    .line 21
    move-object v0, p2

    check-cast v0, Lo/FD$If;

    invoke-virtual {p0, p1, v0}, Lo/Fz;->ˏ(ILo/FD$If;)V

    return-void
.end method

.method protected ˊॱ()Lo/FD$If;
    .locals 1

    .line 196
    new-instance v0, Lo/FD$If;

    invoke-direct {v0}, Lo/FD$If;-><init>()V

    return-object v0
.end method

.method public synthetic ˋ(J)Lo/auX;
    .locals 1

    .line 21
    invoke-virtual {p0, p1, p2}, Lo/Fz;->ॱ(J)Lo/Fz;

    move-result-object v0

    return-object v0
.end method

.method public ˋ(FFIILo/FD$If;)V
    .locals 7

    .line 107
    iget-object v0, p0, Lo/Fz;->ʻ:Lo/CON;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lo/Fz;->ʻ:Lo/CON;

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Lo/CON;->ॱ(Lo/auX;Ljava/lang/Object;FFII)V

    .line 110
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/FD;->ˊ(FFIILo/ʽ;)V

    .line 111
    return-void
.end method

.method public synthetic ˋ(ILjava/lang/Object;)V
    .locals 1

    .line 21
    move-object v0, p2

    check-cast v0, Lo/FD$If;

    invoke-virtual {p0, p1, v0}, Lo/Fz;->ˏ(ILo/FD$If;)V

    return-void
.end method

.method public ˋ(Lo/FD$If;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lo/FD;->ˋ(Lo/ʽ;)V

    .line 63
    iget-object v0, p0, Lo/Fz;->ˏ:Lo/ﹳ;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lo/Fz;->ˏ:Lo/ﹳ;

    invoke-interface {v0, p0, p1}, Lo/ﹳ;->ॱ(Lo/auX;Ljava/lang/Object;)V

    .line 66
    :cond_0
    return-void
.end method

.method public ˋ(Lo/FD$If;I)V
    .locals 1

    .line 41
    iget-object v0, p0, Lo/Fz;->ॱ:Lo/coN;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lo/Fz;->ॱ:Lo/coN;

    invoke-interface {v0, p0, p1, p2}, Lo/coN;->ˎ(Lo/auX;Ljava/lang/Object;I)V

    .line 44
    :cond_0
    return-void
.end method

.method public bridge synthetic ˋ(Lo/ʽ;)V
    .locals 1

    .line 21
    move-object v0, p1

    check-cast v0, Lo/FD$If;

    invoke-virtual {p0, v0}, Lo/Fz;->ˋ(Lo/FD$If;)V

    return-void
.end method

.method protected ˎ()I
    .locals 1

    .line 202
    const v0, 0x7f0e006b

    return v0
.end method

.method public synthetic ˎ(FFIILjava/lang/Object;)V
    .locals 6

    .line 21
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    check-cast v5, Lo/FD$If;

    invoke-virtual/range {v0 .. v5}, Lo/Fz;->ˋ(FFIILo/FD$If;)V

    return-void
.end method

.method public synthetic ˎ(Lo/ʿ;Ljava/lang/Object;I)V
    .locals 1

    .line 21
    move-object v0, p2

    check-cast v0, Lo/FD$If;

    invoke-virtual {p0, p1, v0, p3}, Lo/Fz;->ॱ(Lo/ʿ;Lo/FD$If;I)V

    return-void
.end method

.method public ˏ(Ljava/lang/CharSequence;)Lo/Fz;
    .locals 1

    .line 146
    invoke-super {p0, p1}, Lo/FD;->ॱ(Ljava/lang/CharSequence;)Lo/auX;

    .line 147
    return-object p0
.end method

.method public ˏ(ILo/FD$If;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lo/Fz;->ˋ:Lo/ﾞ;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lo/Fz;->ˋ:Lo/ﾞ;

    invoke-interface {v0, p0, p2, p1}, Lo/ﾞ;->ˎ(Lo/auX;Ljava/lang/Object;I)V

    .line 88
    :cond_0
    invoke-super {p0, p1, p2}, Lo/FD;->ˊ(ILo/ʽ;)V

    .line 89
    return-void
.end method

.method public ॱ(J)Lo/Fz;
    .locals 1

    .line 128
    invoke-super {p0, p1, p2}, Lo/FD;->ˋ(J)Lo/auX;

    .line 129
    return-object p0
.end method

.method public synthetic ॱ(Ljava/lang/CharSequence;)Lo/auX;
    .locals 1

    .line 21
    invoke-virtual {p0, p1}, Lo/Fz;->ˏ(Ljava/lang/CharSequence;)Lo/Fz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ॱ(Ljava/lang/Object;)V
    .locals 1

    .line 21
    move-object v0, p1

    check-cast v0, Lo/FD$If;

    invoke-virtual {p0, v0}, Lo/Fz;->ˋ(Lo/FD$If;)V

    return-void
.end method

.method public synthetic ॱ(Ljava/lang/Object;I)V
    .locals 1

    .line 21
    move-object v0, p1

    check-cast v0, Lo/FD$If;

    invoke-virtual {p0, v0, p2}, Lo/Fz;->ˋ(Lo/FD$If;I)V

    return-void
.end method

.method public ॱ(Lo/ʿ;Lo/FD$If;I)V
    .locals 0

    .line 37
    return-void
.end method

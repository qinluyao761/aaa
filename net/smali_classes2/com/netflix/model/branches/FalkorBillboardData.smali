.class public Lcom/netflix/model/branches/FalkorBillboardData;
.super Lcom/netflix/falkor/BranchMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/falkor/BranchMap<Lcom/netflix/model/leafs/originals/BillboardSummary;>;"
    }
.end annotation


# instance fields
.field private ॱ:Lcom/netflix/model/leafs/originals/BillboardSummary;


# direct methods
.method public constructor <init>(Lo/ᓿ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u14ff<Lcom/netflix/model/leafs/originals/BillboardSummary;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/netflix/falkor/BranchMap;-><init>(Lo/ᓿ;)V

    .line 18
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 27
    move-object v1, p1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "billboardSummary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    .line 28
    :sswitch_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorBillboardData;->ॱ:Lcom/netflix/model/leafs/originals/BillboardSummary;

    return-object v0

    .line 33
    :goto_1
    const/4 v0, 0x0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x4265cc99 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method public getOrCreate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 39
    invoke-virtual {p0, p1}, Lcom/netflix/model/branches/FalkorBillboardData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    return-object v1

    .line 48
    :cond_0
    move-object v2, p1

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "billboardSummary"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    :cond_1
    :goto_0
    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    .line 49
    :sswitch_1
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardSummary;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorBillboardData;->ॱ:Lcom/netflix/model/leafs/originals/BillboardSummary;

    return-object v0

    .line 54
    :goto_1
    const/4 v0, 0x0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x4265cc99 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/model/branches/FalkorBillboardData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 70
    move-object v1, p1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "billboardSummary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    .line 71
    :sswitch_1
    move-object v0, p2

    check-cast v0, Lcom/netflix/model/leafs/originals/BillboardSummary;

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorBillboardData;->ॱ:Lcom/netflix/model/leafs/originals/BillboardSummary;

    .line 77
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4265cc99 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

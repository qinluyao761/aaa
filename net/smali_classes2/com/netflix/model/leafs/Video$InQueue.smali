.class public final Lcom/netflix/model/leafs/Video$InQueue;
.super Lo/υ;
.source ""

# interfaces
.implements Lo/Т;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InQueue"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InQueue"


# instance fields
.field public inQueue:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 254
    invoke-direct {p0}, Lo/υ;-><init>()V

    .line 255
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 257
    invoke-direct {p0}, Lo/υ;-><init>()V

    .line 258
    iput-boolean p1, p0, Lcom/netflix/model/leafs/Video$InQueue;->inQueue:Z

    .line 259
    return-void
.end method


# virtual methods
.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 7

    .line 263
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 267
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Map$Entry;

    .line 268
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/gson/JsonElement;

    .line 269
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "inQueue"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    :cond_0
    :goto_1
    sparse-switch v6, :sswitch_data_1

    goto :goto_2

    .line 270
    :sswitch_1
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$InQueue;->inQueue:Z

    .line 272
    :goto_2
    goto :goto_0

    .line 273
    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x72cf8aec -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InQueue [inQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$InQueue;->inQueue:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

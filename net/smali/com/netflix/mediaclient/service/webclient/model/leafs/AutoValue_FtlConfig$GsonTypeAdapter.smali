.class public final Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;>;"
    }
.end annotation


# instance fields
.field private final cellAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<Ljava/lang/Integer;>;"
        }
    .end annotation
.end field

.field private defaultCell:I

.field private defaultErrorsThrottleLimit:I

.field private defaultHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private defaultMaxTries:I

.field private defaultTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlTarget;>;"
        }
    .end annotation
.end field

.field private final errorsThrottleLimitAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<Ljava/lang/Integer;>;"
        }
    .end annotation
.end field

.field private final hostsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<Ljava/util/List<Ljava/lang/String;>;>;"
        }
    .end annotation
.end field

.field private final maxTriesAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<Ljava/lang/Integer;>;"
        }
    .end annotation
.end field

.field private final targetsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<Ljava/util/List<Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlTarget;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultCell:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultMaxTries:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultHosts:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultErrorsThrottleLimit:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultTargets:Ljava/util/List;

    .line 33
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->cellAdapter:Lcom/google/gson/TypeAdapter;

    .line 34
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->maxTriesAdapter:Lcom/google/gson/TypeAdapter;

    .line 35
    const-class v0, Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->hostsAdapter:Lcom/google/gson/TypeAdapter;

    .line 36
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->errorsThrottleLimitAdapter:Lcom/google/gson/TypeAdapter;

    .line 37
    const-class v0, Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const-class v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlTarget;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->targetsAdapter:Lcom/google/gson/TypeAdapter;

    .line 38
    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;
    .locals 14

    .line 80
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 85
    iget v6, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultCell:I

    .line 86
    iget v7, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultMaxTries:I

    .line 87
    iget-object v8, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultHosts:Ljava/util/List;

    .line 88
    iget v9, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultErrorsThrottleLimit:I

    .line 89
    iget-object v10, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultTargets:Ljava/util/List;

    .line 90
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v11

    .line 92
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_1

    .line 93
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 94
    goto :goto_0

    .line 96
    :cond_1
    move-object v12, v11

    const/4 v13, -0x1

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "cell"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v13, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "maxTries"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v13, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "hosts"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v13, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "errorsThrottleLimit"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v13, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "targets"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v13, 0x4

    :cond_2
    :goto_1
    packed-switch v13, :pswitch_data_0

    goto :goto_2

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->cellAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 99
    goto :goto_3

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->maxTriesAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 103
    goto :goto_3

    .line 106
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->hostsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    .line 107
    goto :goto_3

    .line 110
    :pswitch_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->errorsThrottleLimitAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 111
    goto :goto_3

    .line 114
    :pswitch_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->targetsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/List;

    .line 115
    goto :goto_3

    .line 118
    :goto_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    .line 121
    :goto_3
    goto/16 :goto_0

    .line 122
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 123
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig;

    move v1, v6

    move v2, v7

    move-object v3, v8

    move v4, v9

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig;-><init>(IILjava/util/List;ILjava/util/List;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5bb03efe -> :sswitch_4
        -0x3ed75efa -> :sswitch_3
        0x2e8962 -> :sswitch_0
        0x5edbfcb -> :sswitch_2
        0x17b73895 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultCell(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;
    .locals 0

    .line 40
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultCell:I

    .line 41
    return-object p0
.end method

.method public setDefaultErrorsThrottleLimit(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;
    .locals 0

    .line 52
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultErrorsThrottleLimit:I

    .line 53
    return-object p0
.end method

.method public setDefaultHosts(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/lang/String;>;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultHosts:Ljava/util/List;

    .line 49
    return-object p0
.end method

.method public setDefaultMaxTries(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;
    .locals 0

    .line 44
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultMaxTries:I

    .line 45
    return-object p0
.end method

.method public setDefaultTargets(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlTarget;>;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->defaultTargets:Ljava/util/List;

    .line 57
    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;)V
    .locals 2

    .line 61
    if-nez p2, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 63
    return-void

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 66
    const-string v0, "cell"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->cellAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->cell()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 68
    const-string v0, "maxTries"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->maxTriesAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->maxTries()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 70
    const-string v0, "hosts"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->hostsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->hosts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 72
    const-string v0, "errorsThrottleLimit"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->errorsThrottleLimitAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->errorsThrottleLimit()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 74
    const-string v0, "targets"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->targetsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->targets()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    .line 77
    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1

    .line 21
    move-object v0, p2

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_FtlConfig$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;)V

    return-void
.end method

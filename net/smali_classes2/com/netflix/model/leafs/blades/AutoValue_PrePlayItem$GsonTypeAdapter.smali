.class public final Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<Lcom/netflix/model/leafs/blades/PrePlayItem;>;"
    }
.end annotation


# instance fields
.field private final actionsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<Ljava/util/List<Lcom/netflix/model/leafs/blades/PreplayItemAction;>;>;"
        }
    .end annotation
.end field

.field private defaultActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lcom/netflix/model/leafs/blades/PreplayItemAction;>;"
        }
    .end annotation
.end field

.field private defaultImpressionData:Ljava/lang/String;

.field private defaultSupplementalMessage:Ljava/lang/String;

.field private defaultTitle:Ljava/lang/String;

.field private defaultType:Ljava/lang/String;

.field private defaultVideoId:Ljava/lang/String;

.field private final impressionDataAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private final supplementalMessageAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private final titleAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private final typeAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private final videoIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<Ljava/lang/String;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 4

    .line 33
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->defaultImpressionData:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->defaultType:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->defaultTitle:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->defaultSupplementalMessage:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->defaultActions:Ljava/util/List;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->defaultVideoId:Ljava/lang/String;

    .line 34
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->impressionDataAdapter:Lcom/google/gson/TypeAdapter;

    .line 35
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->typeAdapter:Lcom/google/gson/TypeAdapter;

    .line 36
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->titleAdapter:Lcom/google/gson/TypeAdapter;

    .line 37
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->supplementalMessageAdapter:Lcom/google/gson/TypeAdapter;

    .line 38
    const-class v0, Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const-class v2, Lcom/netflix/model/leafs/blades/PreplayItemAction;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->actionsAdapter:Lcom/google/gson/TypeAdapter;

    .line 39
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->videoIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 40
    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/blades/PrePlayItem;
    .locals 16

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 93
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->defaultImpressionData:Ljava/lang/String;

    .line 94
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->defaultType:Ljava/lang/String;

    .line 95
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->defaultTitle:Ljava/lang/String;

    .line 96
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->defaultSupplementalMessage:Ljava/lang/String;

    .line 97
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->defaultActions:Ljava/util/List;

    .line 98
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->defaultVideoId:Ljava/lang/String;

    .line 99
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v13

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_1

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 103
    goto :goto_0

    .line 105
    :cond_1
    move-object v14, v13

    const/4 v15, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "impressionData"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v15, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "type"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v15, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "title"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v15, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "supplementalMessage"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v15, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "actions"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v15, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "videoId"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v15, 0x5

    :cond_2
    :goto_1
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_2

    .line 107
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->impressionDataAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 108
    goto :goto_3

    .line 111
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->typeAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 112
    goto :goto_3

    .line 115
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->titleAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 116
    goto :goto_3

    .line 119
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->supplementalMessageAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 120
    goto :goto_3

    .line 123
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->actionsAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/List;

    .line 124
    goto :goto_3

    .line 127
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->videoIdAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 128
    goto :goto_3

    .line 131
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    .line 134
    :goto_3
    goto/16 :goto_0

    .line 135
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 136
    new-instance v0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem;

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x453fb703 -> :sswitch_4
        -0x6c936ad -> :sswitch_0
        0x368f3a -> :sswitch_1
        0x6942258 -> :sswitch_2
        0x18e67cc3 -> :sswitch_3
        0x1afceaf6 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/model/leafs/blades/PrePlayItem;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultActions(Ljava/util/List;)Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lcom/netflix/model/leafs/blades/PreplayItemAction;>;)Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->defaultActions:Ljava/util/List;

    .line 59
    return-object p0
.end method

.method public setDefaultImpressionData(Ljava/lang/String;)Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->defaultImpressionData:Ljava/lang/String;

    .line 43
    return-object p0
.end method

.method public setDefaultSupplementalMessage(Ljava/lang/String;)Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->defaultSupplementalMessage:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public setDefaultTitle(Ljava/lang/String;)Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->defaultTitle:Ljava/lang/String;

    .line 51
    return-object p0
.end method

.method public setDefaultType(Ljava/lang/String;)Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->defaultType:Ljava/lang/String;

    .line 47
    return-object p0
.end method

.method public setDefaultVideoId(Ljava/lang/String;)Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->defaultVideoId:Ljava/lang/String;

    .line 63
    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/blades/PrePlayItem;)V
    .locals 2

    .line 67
    if-nez p2, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 69
    return-void

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 72
    const-string v0, "impressionData"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 73
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->impressionDataAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/blades/PrePlayItem;->impressionData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 74
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 75
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->typeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/blades/PrePlayItem;->type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 76
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 77
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->titleAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/blades/PrePlayItem;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 78
    const-string v0, "supplementalMessage"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 79
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->supplementalMessageAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/blades/PrePlayItem;->supplementalMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 80
    const-string v0, "actions"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 81
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->actionsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/blades/PrePlayItem;->actions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 82
    const-string v0, "videoId"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 83
    iget-object v0, p0, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->videoIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/blades/PrePlayItem;->videoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    .line 85
    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1

    .line 20
    move-object v0, p2

    check-cast v0, Lcom/netflix/model/leafs/blades/PrePlayItem;

    invoke-virtual {p0, p1, v0}, Lcom/netflix/model/leafs/blades/AutoValue_PrePlayItem$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/model/leafs/blades/PrePlayItem;)V

    return-void
.end method

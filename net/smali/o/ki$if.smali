.class public Lo/ki$if;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ki;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0, p1}, Lo/ki$if;->ˏ(Lcom/google/gson/stream/JsonReader;)[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1

    .line 26
    move-object v0, p2

    check-cast v0, [B

    invoke-virtual {p0, p1, v0}, Lo/ki$if;->ˊ(Lcom/google/gson/stream/JsonWriter;[B)V

    return-void
.end method

.method public ˊ(Lcom/google/gson/stream/JsonWriter;[B)V
    .locals 1

    .line 29
    if-nez p2, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p2}, Lo/QO;->ˎ([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 34
    :goto_0
    return-void
.end method

.method public ˏ(Lcom/google/gson/stream/JsonReader;)[B
    .locals 3

    .line 38
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-static {v2}, Lo/QO;->ॱ(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

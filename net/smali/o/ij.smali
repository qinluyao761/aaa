.class public Lo/ij;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/qY;


# instance fields
.field private final ˊ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
        }
    .end annotation
.end field

.field private ˋ:Ljava/io/File;

.field private final ॱ:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ij;->ˊ:Ljava/util/Map;

    .line 52
    iput-object p1, p0, Lo/ij;->ॱ:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lo/ij;->ॱ:Landroid/content/Context;

    const-string v1, "player_cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lo/ij;->ˋ:Ljava/io/File;

    .line 57
    const-string v0, "nf_subtitles"

    const-string v1, "Remove cached data for player started... "

    invoke-static {v0, v1}, Lo/শ;->ˊ(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lo/ij;->ˋ:Ljava/io/File;

    invoke-static {v0}, Lo/Ni;->ˏ(Ljava/io/File;)Z

    move-result v3

    .line 63
    iget-object v0, p0, Lo/ij;->ॱ:Landroid/content/Context;

    const-string v1, "player_cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lo/ij;->ˋ:Ljava/io/File;

    .line 64
    return-void
.end method

.method private ॱ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 68
    invoke-static {p1}, Lo/NX;->ˋ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lo/NX;->ˋ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    const-string v0, "nf_subtitles"

    const-string v1, "Bad playable id and or language."

    invoke-static {v0, v1}, Lo/শ;->ˏ(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ˋ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 184
    invoke-static {p1}, Lo/NX;->ˋ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lo/NX;->ˋ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    const-string v0, "nf_subtitles"

    const-string v1, "Bad arguments: key or name not found"

    invoke-static {v0, v1}, Lo/শ;->ॱ(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 189
    :cond_1
    iget-object v0, p0, Lo/ij;->ˊ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/io/File;

    .line 190
    if-nez v2, :cond_2

    .line 194
    const/4 v0, 0x0

    return-object v0

    .line 197
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    const-string v0, "nf_subtitles"

    const-string v1, "File exist"

    invoke-static {v0, v1}, Lo/শ;->ˊ(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-object v3

    .line 202
    :cond_3
    const-string v0, "nf_subtitles"

    const-string v1, "File does NOT exist!"

    invoke-static {v0, v1}, Lo/শ;->ˏ(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public ˎ(Ljava/lang/String;Lcom/netflix/mediaclient/media/Subtitle;)Ljava/lang/String;
    .locals 7

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageCodeIso639_1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/media/Subtitle;->getTrackType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-direct {p0, p1, v2}, Lo/ij;->ॱ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {p1}, Lo/NX;->ˋ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "nf_subtitles"

    const-string v1, "Playable ID is empty, use temp directory!"

    invoke-static {v0, v1}, Lo/শ;->ˏ(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 87
    :cond_0
    iget-object v0, p0, Lo/ij;->ˊ:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 89
    :goto_0
    if-nez v4, :cond_3

    .line 90
    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lo/ij;->ˋ:Ljava/io/File;

    invoke-direct {v5, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    move-result v6

    .line 101
    :cond_2
    iget-object v0, p0, Lo/ij;->ˊ:Ljava/util/Map;

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_3
    return-object v3
.end method

.method public ॱ(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 12

    .line 113
    invoke-static {p1}, Lo/NX;->ˋ(Ljava/lang/String;)Z

    move-result v5

    .line 114
    invoke-static {p2}, Lo/NX;->ˋ(Ljava/lang/String;)Z

    move-result v6

    .line 115
    if-nez p3, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 116
    :goto_0
    if-nez v5, :cond_1

    if-nez v6, :cond_1

    if-eqz v7, :cond_2

    .line 117
    :cond_1
    const-string v0, "nf_subtitles"

    const-string v1, "Bad arguments! Key empty %b or name empty %b or bytes are null %b!"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lo/শ;->ʻ(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 118
    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_2
    iget-object v0, p0, Lo/ij;->ˊ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/io/File;

    .line 122
    if-nez v8, :cond_3

    .line 123
    const-string v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subtitle cache for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/শ;->ˏ(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 127
    :cond_3
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    move-result v10

    .line 134
    new-instance v11, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 135
    invoke-virtual {v11, p3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 136
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V

    .line 137
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_1

    .line 138
    :catch_0
    move-exception v10

    .line 139
    const-string v0, "nf_subtitles"

    const-string v1, "Failed to save file "

    invoke-static {v0, v1, v10}, Lo/শ;->ˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    const/4 v9, 0x0

    .line 144
    :goto_1
    if-eqz v9, :cond_4

    .line 145
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 147
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

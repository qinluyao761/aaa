.class public final Lcom/google/android/gms/measurement/internal/zzfg;
.super Lcom/google/android/gms/measurement/internal/zzez;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfa;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzez;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;)V

    .line 2
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzgf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgg;
    .locals 5

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 40
    iget-object v0, v4, Lcom/google/android/gms/internal/measurement/zzgg;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    return-object v4

    .line 42
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static zza(Ljava/lang/StringBuilder;I)V
    .locals 2

    .line 298
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 299
    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    :cond_0
    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzfw;)V
    .locals 11

    .line 255
    if-nez p3, :cond_0

    .line 256
    return-void

    .line 257
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 258
    const-string v0, "filter {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v0, "complement"

    iget-object v1, p3, Lcom/google/android/gms/internal/measurement/zzfw;->zzavm:Ljava/lang/Boolean;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 260
    const-string v0, "param_name"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    iget-object v2, p3, Lcom/google/android/gms/internal/measurement/zzfw;->zzavn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 261
    add-int/lit8 v4, p2, 0x1

    const-string v5, "string_filter"

    iget-object v6, p3, Lcom/google/android/gms/internal/measurement/zzfw;->zzavk:Lcom/google/android/gms/internal/measurement/zzfz;

    move-object v3, p1

    .line 262
    if-eqz v6, :cond_4

    .line 263
    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 264
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v0, " {\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzfz;->zzavw:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 267
    const-string v7, "UNKNOWN_MATCH_TYPE"

    .line 268
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzfz;->zzavw:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 269
    :pswitch_0
    const-string v7, "REGEXP"

    .line 270
    goto :goto_0

    .line 271
    :pswitch_1
    const-string v7, "BEGINS_WITH"

    .line 272
    goto :goto_0

    .line 273
    :pswitch_2
    const-string v7, "ENDS_WITH"

    .line 274
    goto :goto_0

    .line 275
    :pswitch_3
    const-string v7, "PARTIAL"

    .line 276
    goto :goto_0

    .line 277
    :pswitch_4
    const-string v7, "EXACT"

    .line 278
    goto :goto_0

    .line 279
    :pswitch_5
    const-string v7, "IN_LIST"

    .line 280
    :goto_0
    const-string v0, "match_type"

    invoke-static {v3, v4, v0, v7}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 281
    :cond_1
    const-string v0, "expression"

    iget-object v1, v6, Lcom/google/android/gms/internal/measurement/zzfz;->zzavx:Ljava/lang/String;

    invoke-static {v3, v4, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 282
    const-string v0, "case_sensitive"

    iget-object v1, v6, Lcom/google/android/gms/internal/measurement/zzfz;->zzavy:Ljava/lang/Boolean;

    invoke-static {v3, v4, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 283
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzfz;->zzavz:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 284
    add-int/lit8 v0, v4, 0x1

    invoke-static {v3, v0}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 285
    const-string v0, "expression_list {\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-object v7, v6, Lcom/google/android/gms/internal/measurement/zzfz;->zzavz:[Ljava/lang/String;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 287
    add-int/lit8 v0, v4, 0x2

    invoke-static {v3, v0}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 288
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 291
    :cond_2
    const-string v0, "}\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_3
    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 293
    const-string v0, "}\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_4
    add-int/lit8 v0, p2, 0x1

    const-string v1, "number_filter"

    iget-object v2, p3, Lcom/google/android/gms/internal/measurement/zzfw;->zzavl:Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfx;)V

    .line 295
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 296
    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfx;)V
    .locals 3

    .line 232
    if-nez p4, :cond_0

    .line 233
    return-void

    .line 234
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 235
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v0, " {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-object v0, p4, Lcom/google/android/gms/internal/measurement/zzfx;->zzavo:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 238
    const-string v2, "UNKNOWN_COMPARISON_TYPE"

    .line 239
    iget-object v0, p4, Lcom/google/android/gms/internal/measurement/zzfx;->zzavo:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 240
    :pswitch_0
    const-string v2, "LESS_THAN"

    .line 241
    goto :goto_0

    .line 242
    :pswitch_1
    const-string v2, "GREATER_THAN"

    .line 243
    goto :goto_0

    .line 244
    :pswitch_2
    const-string v2, "EQUAL"

    .line 245
    goto :goto_0

    .line 246
    :pswitch_3
    const-string v2, "BETWEEN"

    .line 247
    :goto_0
    const-string v0, "comparison_type"

    invoke-static {p1, p2, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 248
    :cond_1
    const-string v0, "match_as_float"

    iget-object v1, p4, Lcom/google/android/gms/internal/measurement/zzfx;->zzavp:Ljava/lang/Boolean;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 249
    const-string v0, "comparison_value"

    iget-object v1, p4, Lcom/google/android/gms/internal/measurement/zzfx;->zzavq:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 250
    const-string v0, "min_comparison_value"

    iget-object v1, p4, Lcom/google/android/gms/internal/measurement/zzfx;->zzavr:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 251
    const-string v0, "max_comparison_value"

    iget-object v1, p4, Lcom/google/android/gms/internal/measurement/zzfx;->zzavs:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 252
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 253
    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzgj;)V
    .locals 7

    .line 204
    if-nez p3, :cond_0

    .line 205
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 207
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v0, " {\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v0, p3, Lcom/google/android/gms/internal/measurement/zzgj;->zzayf:[J

    if-eqz v0, :cond_3

    .line 210
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 211
    const-string v0, "results: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const/4 v2, 0x0

    .line 213
    iget-object v3, p3, Lcom/google/android/gms/internal/measurement/zzgj;->zzayf:[J

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-wide v0, v3, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 214
    move v0, v2

    add-int/lit8 v2, v2, 0x1

    if-eqz v0, :cond_1

    .line 215
    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_1
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 218
    :cond_2
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    :cond_3
    iget-object v0, p3, Lcom/google/android/gms/internal/measurement/zzgj;->zzaye:[J

    if-eqz v0, :cond_6

    .line 220
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 221
    const-string v0, "status: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const/4 v2, 0x0

    .line 223
    iget-object v3, p3, Lcom/google/android/gms/internal/measurement/zzgj;->zzaye:[J

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_5

    aget-wide v0, v3, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 224
    move v0, v2

    add-int/lit8 v2, v2, 0x1

    if-eqz v0, :cond_4

    .line 225
    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_4
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 228
    :cond_5
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    :cond_6
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 230
    const-string v0, "}\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 302
    if-nez p3, :cond_0

    .line 303
    return-void

    .line 304
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 305
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    return-void
.end method

.method static zza([JI)Z
    .locals 5

    .line 335
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x6

    if-lt p1, v0, :cond_0

    .line 336
    const/4 v0, 0x0

    return v0

    .line 337
    :cond_0
    div-int/lit8 v0, p1, 0x40

    aget-wide v0, p0, v0

    rem-int/lit8 v2, p1, 0x40

    const-wide/16 v3, 0x1

    shl-long v2, v3, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static zza(Ljava/util/BitSet;)[J
    .locals 8

    .line 338
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    div-int/lit8 v0, v0, 0x40

    .line 339
    move v4, v0

    new-array v5, v0, [J

    .line 340
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    .line 341
    const-wide/16 v0, 0x0

    aput-wide v0, v5, v6

    .line 342
    const/4 v7, 0x0

    :goto_1
    const/16 v0, 0x40

    if-ge v7, v0, :cond_1

    .line 343
    shl-int/lit8 v0, v6, 0x6

    add-int/2addr v0, v7

    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 344
    shl-int/lit8 v0, v6, 0x6

    add-int/2addr v0, v7

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    aget-wide v0, v5, v6

    const-wide/16 v2, 0x1

    shl-long/2addr v2, v7

    or-long/2addr v0, v2

    aput-wide v0, v5, v6

    .line 346
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 347
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 348
    :cond_2
    return-object v5
.end method

.method static zza([Lcom/google/android/gms/internal/measurement/zzgg;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzgg;
    .locals 7

    .line 53
    move-object v3, p0

    array-length v4, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 54
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzgg;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/google/android/gms/internal/measurement/zzgg;->zzawx:Ljava/lang/Long;

    .line 56
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/google/android/gms/internal/measurement/zzgg;->zzamp:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/google/android/gms/internal/measurement/zzgg;->zzauh:Ljava/lang/Double;

    .line 58
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 59
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    iput-object v0, v6, Lcom/google/android/gms/internal/measurement/zzgg;->zzawx:Ljava/lang/Long;

    goto :goto_1

    .line 60
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 61
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/google/android/gms/internal/measurement/zzgg;->zzamp:Ljava/lang/String;

    goto :goto_1

    .line 62
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 63
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    iput-object v0, v6, Lcom/google/android/gms/internal/measurement/zzgg;->zzauh:Ljava/lang/Double;

    .line 64
    :cond_2
    :goto_1
    return-object p0

    .line 65
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 66
    :cond_4
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [Lcom/google/android/gms/internal/measurement/zzgg;

    .line 67
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/zzgg;-><init>()V

    .line 69
    iput-object p1, v4, Lcom/google/android/gms/internal/measurement/zzgg;->name:Ljava/lang/String;

    .line 70
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 71
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    iput-object v0, v4, Lcom/google/android/gms/internal/measurement/zzgg;->zzawx:Ljava/lang/Long;

    goto :goto_2

    .line 72
    :cond_5
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 73
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/google/android/gms/internal/measurement/zzgg;->zzamp:Ljava/lang/String;

    goto :goto_2

    .line 74
    :cond_6
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 75
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    iput-object v0, v4, Lcom/google/android/gms/internal/measurement/zzgg;->zzauh:Ljava/lang/Double;

    .line 76
    :cond_7
    :goto_2
    array-length v0, p0

    aput-object v4, v3, v0

    .line 77
    return-object v3
.end method

.method static zzb(Lcom/google/android/gms/internal/measurement/zzgf;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 44
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Lcom/google/android/gms/internal/measurement/zzgf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzgg;->zzamp:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzgg;->zzamp:Ljava/lang/String;

    return-object v0

    .line 48
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzgg;->zzawx:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzgg;->zzawx:Ljava/lang/Long;

    return-object v0

    .line 50
    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzgg;->zzauh:Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzgg;->zzauh:Ljava/lang/Double;

    return-object v0

    .line 52
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method static zzcp(Ljava/lang/String;)Z
    .locals 2

    .line 331
    if-eqz p0, :cond_0

    const-string v0, "([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)"

    .line 332
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x136

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 334
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .line 384
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::Landroid/os/Parcelable;>([BLandroid/os/Parcelable$Creator<TT;>;)TT;"
        }
    .end annotation

    .line 310
    if-nez p1, :cond_0

    .line 311
    const/4 v0, 0x0

    return-object v0

    .line 312
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 313
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {v2, p1, v1, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 314
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 315
    invoke-interface {p2, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/Parcelable;
    :try_end_0
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 317
    return-object v3

    .line 318
    .line 319
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Failed to load parcelable from buffer"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 321
    const/4 v0, 0x0

    return-object v0

    .line 322
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzfv;)Ljava/lang/String;
    .locals 8

    .line 179
    if-nez p1, :cond_0

    .line 180
    const-string v0, "null"

    return-object v0

    .line 181
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    const-string v0, "\nevent_filter {\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v0, "filter_id"

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfv;->zzave:Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v3, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 184
    const-string v0, "event_name"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzfv;->zzavf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzbs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v3, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 185
    const-string v0, "event_count_filter"

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfv;->zzavi:Lcom/google/android/gms/internal/measurement/zzfx;

    const/4 v2, 0x1

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfx;)V

    .line 186
    const-string v0, "  filters {\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzfv;->zzavg:[Lcom/google/android/gms/internal/measurement/zzfw;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 188
    const/4 v0, 0x2

    invoke-direct {p0, v3, v0, v7}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzfw;)V

    .line 189
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 190
    :cond_1
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 191
    const-string v0, "}\n}\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzfy;)Ljava/lang/String;
    .locals 4

    .line 193
    if-nez p1, :cond_0

    .line 194
    const-string v0, "null"

    return-object v0

    .line 195
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    const-string v0, "\nproperty_filter {\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v0, "filter_id"

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzave:Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v3, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 198
    const-string v0, "property_name"

    .line 199
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    const/4 v2, 0x0

    invoke-static {v3, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 201
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavv:Lcom/google/android/gms/internal/measurement/zzfw;

    const/4 v1, 0x1

    invoke-direct {p0, v3, v1, v0}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzfw;)V

    .line 202
    const-string v0, "}\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzgg;Ljava/lang/Object;)V
    .locals 2

    .line 16
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgg;->zzamp:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgg;->zzawx:Ljava/lang/Long;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgg;->zzauh:Ljava/lang/Double;

    .line 20
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 21
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgg;->zzamp:Ljava/lang/String;

    return-void

    .line 22
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 23
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgg;->zzawx:Ljava/lang/Long;

    return-void

    .line 24
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 25
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgg;->zzauh:Ljava/lang/Double;

    return-void

    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Ignoring invalid (type) event param value"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzgl;Ljava/lang/Object;)V
    .locals 2

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgl;->zzamp:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgl;->zzawx:Ljava/lang/Long;

    .line 7
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgl;->zzauh:Ljava/lang/Double;

    .line 8
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 9
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgl;->zzamp:Ljava/lang/String;

    return-void

    .line 10
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 11
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgl;->zzawx:Ljava/lang/Long;

    return-void

    .line 12
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 13
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgl;->zzauh:Ljava/lang/Double;

    return-void

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Ignoring invalid (type) user attribute value"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzgh;)[B
    .locals 6

    .line 28
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzg;->zzvu()I

    move-result v0

    .line 29
    new-array v5, v0, [B

    .line 30
    move-object v3, v5

    .line 31
    array-length v0, v5

    const/4 v1, 0x0

    invoke-static {v5, v1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->zzk([BII)Lcom/google/android/gms/internal/measurement/zzyy;

    move-result-object v4

    .line 32
    .line 33
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/measurement/zzzg;->zza(Lcom/google/android/gms/internal/measurement/zzyy;)V

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzyy;->zzyt()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-object v3

    .line 36
    :catch_0
    move-exception v2

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Data loss. Failed to serialize batch"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method final zza([B)[B
    .locals 7

    .line 352
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 353
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 354
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 355
    const/16 v0, 0x400

    new-array v5, v0, [B

    .line 356
    :goto_0
    invoke-virtual {v3, v5}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v0

    .line 357
    move v6, v0

    if-lez v0, :cond_0

    .line 358
    const/4 v0, 0x0

    invoke-virtual {v4, v5, v0, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 359
    goto :goto_0

    .line 360
    :cond_0
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 361
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 362
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 363
    :catch_0
    move-exception v2

    .line 364
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Failed to ungzip content"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    throw v2
.end method

.method public final bridge synthetic zzaf()V
    .locals 0

    .line 381
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->zzaf()V

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/measurement/zzgh;)Ljava/lang/String;
    .locals 26

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    const-string v0, "\nbatch {\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzgh;->zzawy:[Lcom/google/android/gms/internal/measurement/zzgi;

    if-eqz v0, :cond_b

    .line 81
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzgh;->zzawy:[Lcom/google/android/gms/internal/measurement/zzgi;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_b

    aget-object v8, v5, v7

    .line 82
    if-eqz v8, :cond_a

    .line 83
    move-object v11, v8

    move-object v10, v4

    move-object/from16 v9, p0

    .line 84
    if-eqz v11, :cond_a

    .line 85
    const/4 v0, 0x1

    invoke-static {v10, v0}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 86
    const-string v0, "bundle {\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v0, "protocol_version"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxa:Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 88
    const-string v0, "platform"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxi:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 89
    const-string v0, "gmp_version"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:Ljava/lang/Long;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 90
    const-string v0, "uploading_gmp_version"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 91
    const-string v0, "config_version"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxy:Ljava/lang/Long;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 92
    const-string v0, "gmp_app_id"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzafx:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 93
    const-string v0, "admob_app_id"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzawj:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string v0, "app_id"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 95
    const-string v0, "app_version"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzts:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string v0, "app_version_major"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxu:Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 97
    const-string v0, "firebase_instance_id"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzafz:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 98
    const-string v0, "dev_cert_hash"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxq:Ljava/lang/Long;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 99
    const-string v0, "app_store"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzage:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 100
    const-string v0, "upload_timestamp_millis"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxd:Ljava/lang/Long;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 101
    const-string v0, "start_timestamp_millis"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxe:Ljava/lang/Long;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 102
    const-string v0, "end_timestamp_millis"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxf:Ljava/lang/Long;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string v0, "previous_bundle_start_timestamp_millis"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxg:Ljava/lang/Long;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 104
    const-string v0, "previous_bundle_end_timestamp_millis"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxh:Ljava/lang/Long;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 105
    const-string v0, "app_instance_id"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzafw:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 106
    const-string v0, "resettable_device_id"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxo:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 107
    const-string v0, "device_id"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxx:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 108
    const-string v0, "ds_id"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaya:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 109
    const-string v0, "limited_ad_tracking"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxp:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 110
    const-string v0, "os_version"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxj:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 111
    const-string v0, "device_model"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxk:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 112
    const-string v0, "user_default_language"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaia:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 113
    const-string v0, "time_zone_offset_minutes"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxl:Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 114
    const-string v0, "bundle_sequential_index"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxr:Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 115
    const-string v0, "service_upload"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxs:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 116
    const-string v0, "health_monitor"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzagv:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 117
    iget-object v0, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxz:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxz:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "android_id"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxz:Ljava/lang/Long;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 119
    :cond_0
    iget-object v0, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzayc:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 120
    const-string v0, "retry_counter"

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzayc:Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 121
    :cond_1
    iget-object v14, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxc:[Lcom/google/android/gms/internal/measurement/zzgl;

    move-object v13, v10

    move-object v12, v9

    .line 122
    if-eqz v14, :cond_3

    .line 123
    move-object v15, v14

    array-length v0, v14

    move/from16 v16, v0

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    aget-object v18, v15, v17

    .line 124
    if-eqz v18, :cond_2

    .line 125
    const/4 v0, 0x2

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 126
    const-string v0, "user_property {\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v0, "set_timestamp_millis"

    move-object/from16 v1, v18

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzayl:Ljava/lang/Long;

    const/4 v2, 0x2

    invoke-static {v13, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 128
    const-string v0, "name"

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzco;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    move-object/from16 v2, v18

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzgl;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v13, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string v0, "string_value"

    move-object/from16 v1, v18

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzamp:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v13, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 130
    const-string v0, "int_value"

    move-object/from16 v1, v18

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzawx:Ljava/lang/Long;

    const/4 v2, 0x2

    invoke-static {v13, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string v0, "double_value"

    move-object/from16 v1, v18

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzauh:Ljava/lang/Double;

    const/4 v2, 0x2

    invoke-static {v13, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 132
    const/4 v0, 0x2

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 133
    const-string v0, "}\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 135
    :cond_3
    iget-object v14, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxt:[Lcom/google/android/gms/internal/measurement/zzgd;

    move-object v13, v10

    .line 136
    if-eqz v14, :cond_5

    .line 137
    move-object v15, v14

    array-length v0, v14

    move/from16 v16, v0

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_5

    aget-object v18, v15, v17

    .line 138
    if-eqz v18, :cond_4

    .line 139
    const/4 v0, 0x2

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 140
    const-string v0, "audience_membership {\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v0, "audience_id"

    move-object/from16 v1, v18

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzgd;->zzauy:Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-static {v13, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 142
    const-string v0, "new_audience"

    move-object/from16 v1, v18

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzgd;->zzawo:Ljava/lang/Boolean;

    const/4 v2, 0x2

    invoke-static {v13, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 143
    const-string v0, "current_data"

    move-object/from16 v1, v18

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzgd;->zzawm:Lcom/google/android/gms/internal/measurement/zzgj;

    const/4 v2, 0x2

    invoke-static {v13, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzgj;)V

    .line 144
    const-string v0, "previous_data"

    move-object/from16 v1, v18

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzgd;->zzawn:Lcom/google/android/gms/internal/measurement/zzgj;

    const/4 v2, 0x2

    invoke-static {v13, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzgj;)V

    .line 145
    const/4 v0, 0x2

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 146
    const-string v0, "}\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 148
    :cond_5
    iget-object v14, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzgf;

    move-object v13, v10

    move-object v12, v9

    .line 149
    if-eqz v14, :cond_9

    .line 150
    move-object v15, v14

    array-length v0, v14

    move/from16 v16, v0

    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    aget-object v18, v15, v17

    .line 151
    if-eqz v18, :cond_8

    .line 152
    const/4 v0, 0x2

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 153
    const-string v0, "event {\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v0, "name"

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzco;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    move-object/from16 v2, v18

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzbs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v13, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 155
    const-string v0, "timestamp_millis"

    move-object/from16 v1, v18

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzgf;->zzawu:Ljava/lang/Long;

    const/4 v2, 0x2

    invoke-static {v13, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 156
    const-string v0, "previous_timestamp_millis"

    move-object/from16 v1, v18

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzgf;->zzawv:Ljava/lang/Long;

    const/4 v2, 0x2

    invoke-static {v13, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 157
    const-string v0, "count"

    move-object/from16 v1, v18

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzgf;->count:Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-static {v13, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 158
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    move-object/from16 v21, v0

    move-object/from16 v20, v13

    move-object/from16 v19, v12

    .line 159
    if-eqz v21, :cond_7

    .line 160
    move-object/from16 v22, v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    :goto_4
    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    aget-object v25, v22, v24

    .line 161
    if-eqz v25, :cond_6

    .line 162
    move-object/from16 v0, v20

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 163
    const-string v0, "param {\n"

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v0, "name"

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/measurement/internal/zzco;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    move-object/from16 v2, v25

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzgg;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v20

    const/4 v3, 0x3

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 165
    const-string v0, "string_value"

    move-object/from16 v1, v25

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzgg;->zzamp:Ljava/lang/String;

    move-object/from16 v2, v20

    const/4 v3, 0x3

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 166
    const-string v0, "int_value"

    move-object/from16 v1, v25

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzgg;->zzawx:Ljava/lang/Long;

    move-object/from16 v2, v20

    const/4 v3, 0x3

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 167
    const-string v0, "double_value"

    move-object/from16 v1, v25

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzgg;->zzauh:Ljava/lang/Double;

    move-object/from16 v2, v20

    const/4 v3, 0x3

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 168
    move-object/from16 v0, v20

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 169
    const-string v0, "}\n"

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_6
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 171
    :cond_7
    const/4 v0, 0x2

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 172
    const-string v0, "}\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 174
    :cond_9
    const/4 v0, 0x1

    invoke-static {v10, v0}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Ljava/lang/StringBuilder;I)V

    .line 175
    const-string v0, "}\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 177
    :cond_b
    const-string v0, "}\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzb(JJ)Z
    .locals 2

    .line 349
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1

    .line 350
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 351
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method final zzb([B)[B
    .locals 4

    .line 366
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 367
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 368
    invoke-virtual {v3, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 369
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 370
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 371
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 372
    :catch_0
    move-exception v2

    .line 373
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Failed to gzip content"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 374
    throw v2
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 383
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method final zze(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)Z
    .locals 2

    .line 323
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzh;->zzafx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzh;->zzagk:Ljava/lang/String;

    .line 326
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgr()Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v1

    .line 328
    .line 329
    const/4 v0, 0x0

    return v0

    .line 330
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic zzga()V
    .locals 0

    .line 378
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->zzga()V

    return-void
.end method

.method public final bridge synthetic zzgb()V
    .locals 0

    .line 379
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->zzgb()V

    return-void
.end method

.method public final bridge synthetic zzgc()V
    .locals 0

    .line 380
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->zzgc()V

    return-void
.end method

.method public final bridge synthetic zzgk()Lcom/google/android/gms/measurement/internal/zzx;
    .locals 1

    .line 382
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->zzgk()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgl()Lcom/google/android/gms/measurement/internal/zzan;
    .locals 1

    .line 385
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgm()Lcom/google/android/gms/measurement/internal/zzfk;
    .locals 1

    .line 386
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgn()Lcom/google/android/gms/measurement/internal/zzbo;
    .locals 1

    .line 387
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgo()Lcom/google/android/gms/measurement/internal/zzap;
    .locals 1

    .line 388
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgp()Lcom/google/android/gms/measurement/internal/zzba;
    .locals 1

    .line 389
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgq()Lcom/google/android/gms/measurement/internal/zzn;
    .locals 1

    .line 390
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgr()Lcom/google/android/gms/measurement/internal/zzk;
    .locals 1

    .line 391
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->zzgr()Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v0

    return-object v0
.end method

.method protected final zzgt()Z
    .locals 1

    .line 3
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic zzjo()Lcom/google/android/gms/measurement/internal/zzfg;
    .locals 1

    .line 375
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->zzjo()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzjp()Lcom/google/android/gms/measurement/internal/zzj;
    .locals 1

    .line 376
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->zzjp()Lcom/google/android/gms/measurement/internal/zzj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzjq()Lcom/google/android/gms/measurement/internal/zzq;
    .locals 1

    .line 377
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzez;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    return-object v0
.end method

.class public Landroid/support/v4/content/res/FontResourcesParserCompat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;,
        Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;,
        Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;,
        Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    }
.end annotation


# direct methods
.method private static getType(Landroid/content/res/TypedArray;I)I
    .locals 3

    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 231
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    return v0

    .line 233
    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 234
    invoke-virtual {p0, p1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 235
    iget v0, v2, Landroid/util/TypedValue;->type:I

    return v0
.end method

.method public static parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .locals 3

    .line 168
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v2, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    if-eq v2, v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    const/4 v0, 0x2

    if-eq v2, v0, :cond_1

    .line 174
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_1
    invoke-static {p0, p1}, Landroid/support/v4/content/res/FontResourcesParserCompat;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    move-result-object v0

    return-object v0
.end method

.method public static readCerts(Landroid/content/res/Resources;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/res/Resources;I)Ljava/util/List<Ljava/util/List<[B>;>;"
        }
    .end annotation

    .line 246
    if-nez p1, :cond_0

    .line 247
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 249
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 251
    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 252
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 270
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    .line 255
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 258
    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroid/support/v4/content/res/FontResourcesParserCompat;->getType(Landroid/content/res/TypedArray;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 259
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 260
    const/4 v0, 0x0

    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 261
    if-eqz v5, :cond_2

    .line 262
    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/res/FontResourcesParserCompat;->toByteArrayList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    goto :goto_1

    .line 266
    :cond_4
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/res/FontResourcesParserCompat;->toByteArrayList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :goto_1
    move-object v4, v3

    .line 270
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v4

    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v6
.end method

.method private static readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .locals 4

    .line 181
    const-string v0, "font-family"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 183
    const-string v0, "font-family"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {p0, p1}, Landroid/support/v4/content/res/FontResourcesParserCompat;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    move-result-object v0

    return-object v0

    .line 186
    :cond_0
    invoke-static {p0}, Landroid/support/v4/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method private static readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .locals 12

    .line 193
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 194
    sget-object v0, Landroid/support/compat/R$styleable;->FontFamily:[I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 195
    sget v0, Landroid/support/compat/R$styleable;->FontFamily_fontProviderAuthority:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 196
    sget v0, Landroid/support/compat/R$styleable;->FontFamily_fontProviderPackage:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 197
    sget v0, Landroid/support/compat/R$styleable;->FontFamily_fontProviderQuery:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 198
    sget v0, Landroid/support/compat/R$styleable;->FontFamily_fontProviderCerts:I

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 199
    sget v0, Landroid/support/compat/R$styleable;->FontFamily_fontProviderFetchStrategy:I

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    .line 201
    sget v0, Landroid/support/compat/R$styleable;->FontFamily_fontProviderFetchTimeout:I

    const/16 v1, 0x1f4

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    .line 203
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    .line 205
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 206
    invoke-static {p0}, Landroid/support/v4/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-static {p1, v7}, Landroid/support/v4/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v10

    .line 209
    new-instance v0, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    new-instance v1, Landroid/support/v4/provider/FontRequest;

    invoke-direct {v1, v4, v5, v6, v10}, Landroid/support/v4/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v0, v1, v8, v9}, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;-><init>(Landroid/support/v4/provider/FontRequest;II)V

    return-object v0

    .line 212
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 213
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 214
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 215
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 216
    const-string v0, "font"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    invoke-static {p0, p1}, Landroid/support/v4/content/res/FontResourcesParserCompat;->readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 219
    :cond_3
    invoke-static {p0}, Landroid/support/v4/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 221
    :goto_2
    goto :goto_1

    .line 222
    :cond_4
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 223
    const/4 v0, 0x0

    return-object v0

    .line 225
    :cond_5
    new-instance v0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    .line 226
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    .line 225
    invoke-interface {v10, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    invoke-direct {v0, v1}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;-><init>([Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;)V

    return-object v0
.end method

.method private static readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .locals 20

    .line 285
    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 286
    sget-object v0, Landroid/support/compat/R$styleable;->FontFamilyFont:[I

    move-object/from16 v1, p1

    invoke-virtual {v1, v7, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 287
    sget v0, Landroid/support/compat/R$styleable;->FontFamilyFont_fontWeight:I

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v9, Landroid/support/compat/R$styleable;->FontFamilyFont_fontWeight:I

    goto :goto_0

    :cond_0
    sget v9, Landroid/support/compat/R$styleable;->FontFamilyFont_android_fontWeight:I

    .line 290
    :goto_0
    const/16 v0, 0x190

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 291
    sget v0, Landroid/support/compat/R$styleable;->FontFamilyFont_fontStyle:I

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v11, Landroid/support/compat/R$styleable;->FontFamilyFont_fontStyle:I

    goto :goto_1

    :cond_1
    sget v11, Landroid/support/compat/R$styleable;->FontFamilyFont_android_fontStyle:I

    .line 294
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v8, v11, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    .line 295
    :goto_2
    sget v0, Landroid/support/compat/R$styleable;->FontFamilyFont_ttcIndex:I

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v13, Landroid/support/compat/R$styleable;->FontFamilyFont_ttcIndex:I

    goto :goto_3

    :cond_3
    sget v13, Landroid/support/compat/R$styleable;->FontFamilyFont_android_ttcIndex:I

    .line 298
    :goto_3
    sget v0, Landroid/support/compat/R$styleable;->FontFamilyFont_fontVariationSettings:I

    .line 299
    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v14, Landroid/support/compat/R$styleable;->FontFamilyFont_fontVariationSettings:I

    goto :goto_4

    :cond_4
    sget v14, Landroid/support/compat/R$styleable;->FontFamilyFont_android_fontVariationSettings:I

    .line 302
    :goto_4
    invoke-virtual {v8, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 303
    const/4 v0, 0x0

    invoke-virtual {v8, v13, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .line 304
    sget v0, Landroid/support/compat/R$styleable;->FontFamilyFont_font:I

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v17, Landroid/support/compat/R$styleable;->FontFamilyFont_font:I

    goto :goto_5

    :cond_5
    sget v17, Landroid/support/compat/R$styleable;->FontFamilyFont_android_font:I

    .line 307
    :goto_5
    move/from16 v0, v17

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 308
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 309
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 310
    :goto_6
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 311
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 313
    :cond_6
    new-instance v0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-object/from16 v1, v19

    move v2, v10

    move v3, v12

    move-object v4, v15

    move/from16 v5, v16

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;-><init>(Ljava/lang/String;IZLjava/lang/String;II)V

    return-object v0
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .line 318
    const/4 v1, 0x1

    .line 319
    :goto_0
    if-lez v1, :cond_0

    .line 320
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 322
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    .line 323
    goto :goto_1

    .line 325
    :sswitch_1
    add-int/lit8 v1, v1, -0x1

    .line 326
    :goto_1
    goto :goto_0

    .line 329
    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
    .end sparse-switch
.end method

.method private static toByteArrayList([Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Ljava/lang/String;)Ljava/util/List<[B>;"
        }
    .end annotation

    .line 276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 277
    move-object v2, p0

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 278
    const/4 v0, 0x0

    invoke-static {v5, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 280
    :cond_0
    return-object v1
.end method

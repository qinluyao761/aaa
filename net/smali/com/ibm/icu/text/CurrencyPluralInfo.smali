.class public Lcom/ibm/icu/text/CurrencyPluralInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final defaultCurrencyPluralPattern:Ljava/lang/String;

.field private static final defaultCurrencyPluralPatternChar:[C

.field private static final serialVersionUID:J = 0x1L

.field private static final tripleCurrencySign:[C

.field private static final tripleCurrencyStr:Ljava/lang/String;


# instance fields
.field private pluralCountToCurrencyUnitPattern:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private pluralRules:Lcom/ibm/icu/text/PluralRules;

.field private ulocale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 319
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->tripleCurrencySign:[C

    .line 321
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/ibm/icu/text/CurrencyPluralInfo;->tripleCurrencySign:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->tripleCurrencyStr:Ljava/lang/String;

    .line 324
    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPatternChar:[C

    .line 326
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/ibm/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPatternChar:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPattern:Ljava/lang/String;

    return-void

    :array_0
    .array-data 2
        0xa4s
        0xa4s
        0xa4s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x0s
        0x2es
        0x23s
        0x23s
        0x20s
        0xa4s
        0xa4s
        0xa4s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 49
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/CurrencyPluralInfo;->initialize(Lcom/ibm/icu/util/ULocale;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 67
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/CurrencyPluralInfo;->initialize(Lcom/ibm/icu/util/ULocale;)V

    .line 68
    return-void
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/CurrencyPluralInfo;
    .locals 1

    .line 99
    new-instance v0, Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/CurrencyPluralInfo;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-object v0
.end method

.method private initialize(Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    .line 277
    iput-object p1, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 278
    invoke-static {p1}, Lcom/ibm/icu/text/PluralRules;->forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 279
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/CurrencyPluralInfo;->setupCurrencyPluralPattern(Lcom/ibm/icu/util/ULocale;)V

    .line 280
    return-void
.end method

.method private setupCurrencyPluralPattern(Lcom/ibm/icu/util/ULocale;)V
    .locals 17

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 285
    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getPattern(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v3

    .line 287
    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 288
    const/4 v5, 0x0

    .line 289
    const/4 v0, -0x1

    if-eq v4, v0, :cond_0

    .line 290
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 291
    const/4 v0, 0x0

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 293
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/CurrencyData;->provider:Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    move-object/from16 v1, p1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Lcom/ibm/icu/util/ULocale;Z)Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;->getUnitPatterns()Ljava/util/Map;

    move-result-object v6

    .line 294
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/Map$Entry;

    .line 295
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 296
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 300
    const-string v0, "{0}"

    invoke-virtual {v10, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 301
    const-string v0, "{1}"

    sget-object v1, Lcom/ibm/icu/text/CurrencyPluralInfo;->tripleCurrencyStr:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 302
    const/4 v0, -0x1

    if-eq v4, v0, :cond_1

    .line 303
    move-object v13, v10

    .line 304
    const-string v0, "{0}"

    invoke-virtual {v13, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 305
    const-string v0, "{1}"

    sget-object v1, Lcom/ibm/icu/text/CurrencyPluralInfo;->tripleCurrencyStr:Ljava/lang/String;

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    move-object v1, v12

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v0

    .line 307
    const-string v0, ";"

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 311
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v0, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    goto/16 :goto_0

    .line 313
    :cond_2
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .line 198
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ibm/icu/text/CurrencyPluralInfo;

    .line 200
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/ULocale;

    iput-object v0, v1, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 206
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 208
    iget-object v0, v1, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_0

    .line 210
    :cond_0
    return-object v1

    .line 211
    :catch_0
    move-exception v1

    .line 212
    new-instance v0, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 223
    instance-of v0, p1, Lcom/ibm/icu/text/CurrencyPluralInfo;

    if-eqz v0, :cond_1

    .line 224
    move-object v2, p1

    check-cast v2, Lcom/ibm/icu/text/CurrencyPluralInfo;

    .line 225
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    iget-object v1, v2, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/PluralRules;->equals(Lcom/ibm/icu/text/PluralRules;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    iget-object v1, v2, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 226
    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 225
    :goto_0
    return v0

    .line 228
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 122
    if-nez v2, :cond_1

    .line 124
    const-string v0, "other"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    const-string v1, "other"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 127
    :cond_0
    if-nez v2, :cond_1

    .line 133
    sget-object v2, Lcom/ibm/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPattern:Ljava/lang/String;

    .line 136
    :cond_1
    return-object v2
.end method

.method public getPluralRules()Lcom/ibm/icu/text/PluralRules;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    return-object v0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 241
    invoke-virtual {v1}, Lcom/ibm/icu/text/PluralRules;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 242
    invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 240
    return v0
.end method

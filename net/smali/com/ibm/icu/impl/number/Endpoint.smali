.class public Lcom/ibm/icu/impl/number/Endpoint;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final threadLocalPropertiesCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/number/Properties;>;>;"
        }
    .end annotation
.end field

.field private static final threadLocalRulesCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<Ljava/util/Map<Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules;>;>;"
        }
    .end annotation
.end field

.field private static final threadLocalSymbolsCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<Ljava/util/Map<Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/DecimalFormatSymbols;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 218
    new-instance v0, Lcom/ibm/icu/impl/number/Endpoint$1;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/Endpoint$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/Endpoint;->threadLocalSymbolsCache:Ljava/lang/ThreadLocal;

    .line 246
    new-instance v0, Lcom/ibm/icu/impl/number/Endpoint$2;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/Endpoint$2;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/Endpoint;->threadLocalPropertiesCache:Ljava/lang/ThreadLocal;

    .line 264
    new-instance v0, Lcom/ibm/icu/impl/number/Endpoint$3;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/Endpoint$3;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/Endpoint;->threadLocalRulesCache:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBTA(Lcom/ibm/icu/impl/number/Properties;Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/impl/number/Format$SingularFormat;
    .locals 7

    .line 78
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "symbols must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    const/4 v3, 0x1

    .line 83
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ibm/icu/impl/number/Endpoint;->getPluralRules(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/number/Properties;)Lcom/ibm/icu/text/PluralRules;

    move-result-object v4

    .line 84
    new-instance v5, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;

    invoke-direct {v5, v4}, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;-><init>(Lcom/ibm/icu/text/PluralRules;)V

    .line 85
    new-instance v6, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;

    invoke-direct {v6, p1, p0}, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;-><init>(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat$IProperties;)V

    .line 86
    invoke-virtual {v5, v6}, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->setTargetFormat(Lcom/ibm/icu/impl/number/Format$TargetFormat;)V

    .line 88
    invoke-static {p0}, Lcom/ibm/icu/impl/number/formatters/MagnitudeMultiplier;->useMagnitudeMultiplier(Lcom/ibm/icu/impl/number/formatters/MagnitudeMultiplier$IProperties;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const/4 v3, 0x0

    .line 90
    invoke-static {p0}, Lcom/ibm/icu/impl/number/formatters/MagnitudeMultiplier;->getInstance(Lcom/ibm/icu/impl/number/Properties;)Lcom/ibm/icu/impl/number/Format$BeforeFormat;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->addBeforeFormat(Lcom/ibm/icu/impl/number/Format$BeforeFormat;)V

    .line 92
    :cond_1
    invoke-static {p0}, Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier;->useMultiplier(Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    const/4 v3, 0x0

    .line 94
    invoke-static {p0}, Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier;->getInstance(Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;)Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->addBeforeFormat(Lcom/ibm/icu/impl/number/Format$BeforeFormat;)V

    .line 96
    :cond_2
    invoke-static {p0}, Lcom/ibm/icu/impl/number/formatters/MeasureFormat;->useMeasureFormat(Lcom/ibm/icu/impl/number/formatters/MeasureFormat$IProperties;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    const/4 v3, 0x0

    .line 98
    invoke-static {p1, p0}, Lcom/ibm/icu/impl/number/formatters/MeasureFormat;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/MeasureFormat$IProperties;)Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->addBeforeFormat(Lcom/ibm/icu/impl/number/Format$BeforeFormat;)V

    .line 100
    :cond_3
    invoke-static {p0}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat;->useCurrency(Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 101
    const/4 v3, 0x0

    .line 102
    invoke-static {p0}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->useCompactDecimalFormat(Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    invoke-static {p1, p0}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;)Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->addBeforeFormat(Lcom/ibm/icu/impl/number/Format$BeforeFormat;)V

    goto/16 :goto_0

    .line 104
    :cond_4
    invoke-static {p0}, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->useScientificNotation(Lcom/ibm/icu/impl/number/formatters/ScientificFormat$IProperties;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 107
    invoke-static {p1, p0}, Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->addBeforeFormat(Lcom/ibm/icu/impl/number/Format$BeforeFormat;)V

    .line 108
    invoke-static {p1, p0}, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/ScientificFormat$IProperties;)Lcom/ibm/icu/impl/number/formatters/ScientificFormat;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->addBeforeFormat(Lcom/ibm/icu/impl/number/Format$BeforeFormat;)V

    goto :goto_0

    .line 110
    :cond_5
    invoke-static {p1, p0}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat;->getCurrencyRounder(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;)Lcom/ibm/icu/impl/number/Rounder;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->addBeforeFormat(Lcom/ibm/icu/impl/number/Format$BeforeFormat;)V

    .line 111
    invoke-static {p1, p0}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat;->getCurrencyModifier(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;)Lcom/ibm/icu/impl/number/modifiers/GeneralPluralModifier;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->addBeforeFormat(Lcom/ibm/icu/impl/number/Format$BeforeFormat;)V

    goto :goto_0

    .line 114
    :cond_6
    invoke-static {p0}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->useCompactDecimalFormat(Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 115
    const/4 v3, 0x0

    .line 116
    invoke-static {p1, p0}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$IProperties;)Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->addBeforeFormat(Lcom/ibm/icu/impl/number/Format$BeforeFormat;)V

    goto :goto_0

    .line 117
    :cond_7
    invoke-static {p0}, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->useScientificNotation(Lcom/ibm/icu/impl/number/formatters/ScientificFormat$IProperties;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 118
    const/4 v3, 0x0

    .line 119
    invoke-static {p1, p0}, Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->addBeforeFormat(Lcom/ibm/icu/impl/number/Format$BeforeFormat;)V

    .line 120
    invoke-static {p1, p0}, Lcom/ibm/icu/impl/number/formatters/ScientificFormat;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/ScientificFormat$IProperties;)Lcom/ibm/icu/impl/number/formatters/ScientificFormat;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->addBeforeFormat(Lcom/ibm/icu/impl/number/Format$BeforeFormat;)V

    goto :goto_0

    .line 122
    :cond_8
    invoke-static {p1, p0}, Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->addBeforeFormat(Lcom/ibm/icu/impl/number/Format$BeforeFormat;)V

    .line 123
    invoke-static {p0}, Lcom/ibm/icu/impl/number/formatters/RoundingFormat;->getDefaultOrNoRounder(Lcom/ibm/icu/impl/number/formatters/RoundingFormat$IProperties;)Lcom/ibm/icu/impl/number/Rounder;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->addBeforeFormat(Lcom/ibm/icu/impl/number/Format$BeforeFormat;)V

    .line 126
    :goto_0
    invoke-static {p0}, Lcom/ibm/icu/impl/number/formatters/PaddingFormat;->usePadding(Lcom/ibm/icu/impl/number/formatters/PaddingFormat$IProperties;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 127
    const/4 v3, 0x0

    .line 128
    invoke-static {p0}, Lcom/ibm/icu/impl/number/formatters/PaddingFormat;->getInstance(Lcom/ibm/icu/impl/number/formatters/PaddingFormat$IProperties;)Lcom/ibm/icu/impl/number/Format$AfterFormat;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->addAfterFormat(Lcom/ibm/icu/impl/number/Format$AfterFormat;)V

    .line 130
    :cond_9
    if-eqz v3, :cond_a

    .line 131
    new-instance v0, Lcom/ibm/icu/impl/number/Format$PositiveNegativeRounderTargetFormat;

    .line 132
    invoke-static {p1, p0}, Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;

    move-result-object v1

    .line 133
    invoke-static {p0}, Lcom/ibm/icu/impl/number/formatters/RoundingFormat;->getDefaultOrNoRounder(Lcom/ibm/icu/impl/number/formatters/RoundingFormat$IProperties;)Lcom/ibm/icu/impl/number/Rounder;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6}, Lcom/ibm/icu/impl/number/Format$PositiveNegativeRounderTargetFormat;-><init>(Lcom/ibm/icu/impl/number/Modifier$PositiveNegativeModifier;Lcom/ibm/icu/impl/number/Rounder;Lcom/ibm/icu/impl/number/Format$TargetFormat;)V

    .line 131
    return-object v0

    .line 136
    :cond_a
    return-object v5
.end method

.method private static getPluralRules(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/number/Properties;)Lcom/ibm/icu/text/PluralRules;
    .locals 2

    .line 274
    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/Properties;->getCurrencyPluralInfo()Lcom/ibm/icu/text/CurrencyPluralInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/Properties;->getCurrencyPluralInfo()Lcom/ibm/icu/text/CurrencyPluralInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/text/CurrencyPluralInfo;->getPluralRules()Lcom/ibm/icu/text/PluralRules;

    move-result-object v0

    return-object v0

    .line 278
    :cond_0
    if-nez p0, :cond_1

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    .line 279
    :cond_1
    sget-object v0, Lcom/ibm/icu/impl/number/Endpoint;->threadLocalRulesCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ibm/icu/text/PluralRules;

    .line 280
    if-nez v1, :cond_2

    .line 281
    invoke-static {p0}, Lcom/ibm/icu/text/PluralRules;->forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;

    move-result-object v1

    .line 282
    sget-object v0, Lcom/ibm/icu/impl/number/Endpoint;->threadLocalRulesCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_2
    return-object v1
.end method

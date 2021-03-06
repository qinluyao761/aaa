.class public Lcom/ibm/icu/text/MeasureFormat;
.super Lcom/ibm/icu/text/UFormat;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;,
        Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;,
        Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;,
        Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;,
        Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;,
        Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    }
.end annotation


# static fields
.field private static final hmsTo012:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Lcom/ibm/icu/util/MeasureUnit;Ljava/lang/Integer;>;"
        }
    .end annotation
.end field

.field private static final localeIdToRangeFormat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Lcom/ibm/icu/util/ULocale;Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private static final localeMeasureFormatData:Lcom/ibm/icu/impl/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/SimpleCache<Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;>;"
        }
    .end annotation
.end field

.field private static final localeToNumericDurationFormatters:Lcom/ibm/icu/impl/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/SimpleCache<Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;>;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = -0x63abaa69b1b00340L


# instance fields
.field private final transient cache:Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

.field private final transient currencyFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

.field private final transient formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

.field private final transient integerFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

.field private final transient numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

.field private final transient numericFormatters:Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

.field private final transient rules:Lcom/ibm/icu/text/PluralRules;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 135
    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/MeasureFormat;->localeMeasureFormatData:Lcom/ibm/icu/impl/SimpleCache;

    .line 138
    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/MeasureFormat;->localeToNumericDurationFormatters:Lcom/ibm/icu/impl/SimpleCache;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    .line 145
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/util/MeasureUnit;->HOUR:Lcom/ibm/icu/util/TimeUnit;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/util/MeasureUnit;->MINUTE:Lcom/ibm/icu/util/TimeUnit;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/util/MeasureUnit;->SECOND:Lcom/ibm/icu/util/TimeUnit;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 724
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    .line 726
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->cache:Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    .line 727
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    .line 728
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    .line 729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->rules:Lcom/ibm/icu/text/PluralRules;

    .line 730
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->numericFormatters:Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    .line 731
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->currencyFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    .line 732
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->integerFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    .line 733
    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;)V
    .locals 0

    .line 713
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    .line 714
    invoke-virtual {p0, p1, p1}, Lcom/ibm/icu/text/MeasureFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    .line 715
    iput-object p2, p0, Lcom/ibm/icu/text/MeasureFormat;->cache:Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    .line 716
    iput-object p3, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    .line 717
    iput-object p4, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    .line 718
    iput-object p5, p0, Lcom/ibm/icu/text/MeasureFormat;->rules:Lcom/ibm/icu/text/PluralRules;

    .line 719
    iput-object p6, p0, Lcom/ibm/icu/text/MeasureFormat;->numericFormatters:Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    .line 720
    iput-object p7, p0, Lcom/ibm/icu/text/MeasureFormat;->currencyFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    .line 721
    iput-object p8, p0, Lcom/ibm/icu/text/MeasureFormat;->integerFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    .line 722
    return-void
.end method

.method static synthetic access$200(I)Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    .line 114
    invoke-static {p0}, Lcom/ibm/icu/text/MeasureFormat;->fromFormatWidthOrdinal(I)Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    return-object v0
.end method

.method private formatMeasure(Lcom/ibm/icu/util/Measure;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;)Ljava/lang/String;
    .locals 2

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ibm/icu/impl/DontCareFieldPosition;->INSTANCE:Lcom/ibm/icu/impl/DontCareFieldPosition;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasure(Lcom/ibm/icu/util/Measure;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1074
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1072
    return-object v0
.end method

.method private formatMeasure(Lcom/ibm/icu/util/Measure;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;
    .locals 8

    .line 1082
    invoke-virtual {p1}, Lcom/ibm/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v3

    .line 1083
    invoke-virtual {p1}, Lcom/ibm/icu/util/Measure;->getUnit()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v4

    .line 1084
    instance-of v0, v4, Lcom/ibm/icu/util/Currency;

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->currencyFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    new-instance v1, Lcom/ibm/icu/util/CurrencyAmount;

    move-object v2, v4

    check-cast v2, Lcom/ibm/icu/util/Currency;

    invoke-direct {v1, v3, v2}, Lcom/ibm/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Lcom/ibm/icu/util/Currency;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1086
    invoke-virtual {v0, v1, v2, p4}, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Lcom/ibm/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1085
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 1092
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1093
    .line 1094
    # getter for: Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Lcom/ibm/icu/text/NumberFormat;
    invoke-static {p2}, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;->access$000(Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat;->rules:Lcom/ibm/icu/text/PluralRules;

    .line 1093
    invoke-static {v3, v0, v1, v5, p4}, Lcom/ibm/icu/text/QuantityFormatter;->selectPlural(Ljava/lang/Number;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/text/PluralRules;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v6

    .line 1095
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v6}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    invoke-virtual {p0, v4, v0, v1}, Lcom/ibm/icu/text/MeasureFormat;->getPluralFormatter(Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    move-result-object v7

    .line 1096
    invoke-static {v7, v5, p3, p4}, Lcom/ibm/icu/text/QuantityFormatter;->format(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private varargs formatMeasuresSlowTrack(Lcom/ibm/icu/text/ListFormatter;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Lcom/ibm/icu/util/Measure;)Ljava/lang/StringBuilder;
    .locals 7

    .line 1199
    array-length v0, p4

    new-array v2, v0, [Ljava/lang/String;

    .line 1202
    new-instance v3, Ljava/text/FieldPosition;

    .line 1203
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    move-result v1

    invoke-direct {v3, v0, v1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    .line 1205
    const/4 v4, -0x1

    .line 1206
    const/4 v5, 0x0

    :goto_0
    array-length v0, p4

    if-ge v5, v0, :cond_4

    .line 1207
    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    if-ne v5, v0, :cond_0

    iget-object v6, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/ibm/icu/text/MeasureFormat;->integerFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    .line 1208
    :goto_1
    const/4 v0, -0x1

    if-ne v4, v0, :cond_2

    .line 1209
    aget-object v0, p4, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, v6, v1, v3}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasure(Lcom/ibm/icu/util/Measure;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    .line 1210
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1211
    :cond_1
    move v4, v5

    goto :goto_2

    .line 1214
    :cond_2
    aget-object v0, p4, v5

    invoke-direct {p0, v0, v6}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasure(Lcom/ibm/icu/util/Measure;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    .line 1206
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1217
    .line 1218
    :cond_4
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lcom/ibm/icu/text/ListFormatter;->format(Ljava/util/Collection;I)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object v5

    .line 1221
    invoke-virtual {v5}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->getOffset()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 1222
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v0

    invoke-virtual {v5}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->getOffset()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1223
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v0

    invoke-virtual {v5}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->getOffset()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1225
    :cond_5
    invoke-virtual {v5}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private formatNumeric(Ljava/util/Date;Lcom/ibm/icu/text/DateFormat;Lcom/ibm/icu/text/DateFormat$Field;Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 6

    .line 1341
    new-instance v3, Ljava/text/FieldPosition;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Ljava/text/FieldPosition;-><init>(I)V

    .line 1342
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p4, v1, v3}, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Ljava/lang/Number;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1343
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1345
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v0

    if-nez v0, :cond_0

    .line 1346
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1350
    :cond_0
    new-instance v4, Ljava/text/FieldPosition;

    invoke-direct {v4, p3}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 1351
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p1, v0, v4}, Lcom/ibm/icu/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1352
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1355
    invoke-virtual {v4}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v0

    if-nez v0, :cond_1

    .line 1356
    invoke-virtual {v4}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1358
    :cond_1
    invoke-virtual {v4}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p5, v5, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1361
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p5, v2, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1365
    .line 1367
    invoke-virtual {v4}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v0

    .line 1368
    invoke-virtual {v4}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    .line 1365
    invoke-virtual {p5, v5, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1371
    .line 1373
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v0

    .line 1374
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1371
    invoke-virtual {p5, v2, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1375
    invoke-virtual {v4}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p5, v5, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1378
    :cond_2
    invoke-virtual {p5, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    :goto_0
    return-object p5
.end method

.method private formatNumeric([Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 11

    .line 1271
    const/4 v6, -0x1

    .line 1272
    const/4 v7, -0x1

    .line 1273
    const/4 v8, 0x0

    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_2

    .line 1274
    aget-object v0, p1, v8

    if-eqz v0, :cond_0

    .line 1275
    move v7, v8

    .line 1276
    const/4 v0, -0x1

    if-ne v6, v0, :cond_1

    .line 1277
    move v6, v7

    goto :goto_1

    .line 1281
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v8

    .line 1273
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1285
    :cond_2
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v2

    const/4 v2, 0x1

    aget-object v2, p1, v2

    .line 1286
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v2

    const/4 v2, 0x2

    aget-object v2, p1, v2

    .line 1287
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v8, v0

    .line 1288
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 1290
    if-nez v6, :cond_3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_3

    .line 1291
    move-object v0, p0

    move-object v1, v10

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat;->numericFormatters:Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    .line 1293
    invoke-virtual {v2}, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->getHourMinuteSecond()Lcom/ibm/icu/text/DateFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->SECOND:Lcom/ibm/icu/text/DateFormat$Field;

    aget-object v4, p1, v7

    move-object v5, p2

    .line 1291
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/MeasureFormat;->formatNumeric(Ljava/util/Date;Lcom/ibm/icu/text/DateFormat;Lcom/ibm/icu/text/DateFormat$Field;Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 1299
    :cond_3
    const/4 v0, 0x1

    if-ne v6, v0, :cond_4

    const/4 v0, 0x2

    if-ne v7, v0, :cond_4

    .line 1300
    move-object v0, p0

    move-object v1, v10

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat;->numericFormatters:Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    .line 1302
    invoke-virtual {v2}, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->getMinuteSecond()Lcom/ibm/icu/text/DateFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->SECOND:Lcom/ibm/icu/text/DateFormat$Field;

    aget-object v4, p1, v7

    move-object v5, p2

    .line 1300
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/MeasureFormat;->formatNumeric(Ljava/util/Date;Lcom/ibm/icu/text/DateFormat;Lcom/ibm/icu/text/DateFormat$Field;Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 1308
    :cond_4
    if-nez v6, :cond_5

    const/4 v0, 0x1

    if-ne v7, v0, :cond_5

    .line 1309
    move-object v0, p0

    move-object v1, v10

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat;->numericFormatters:Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    .line 1311
    invoke-virtual {v2}, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->getHourMinute()Lcom/ibm/icu/text/DateFormat;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/DateFormat$Field;->MINUTE:Lcom/ibm/icu/text/DateFormat$Field;

    aget-object v4, p1, v7

    move-object v5, p2

    .line 1309
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/MeasureFormat;->formatNumeric(Ljava/util/Date;Lcom/ibm/icu/text/DateFormat;Lcom/ibm/icu/text/DateFormat$Field;Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 1316
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private static fromFormatWidthOrdinal(I)Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    .locals 2

    .line 1472
    invoke-static {}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->values()[Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object v1

    .line 1473
    if-ltz p0, :cond_0

    array-length v0, v1

    if-lt p0, v0, :cond_1

    .line 1474
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->SHORT:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    return-object v0

    .line 1476
    :cond_1
    aget-object v0, v1, p0

    return-object v0
.end method

.method private getFormatter(Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;
    .locals 5

    .line 1014
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/MeasureFormat;->getFormatterOrNull(Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    move-result-object v4

    .line 1015
    if-nez v4, :cond_0

    .line 1016
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no formatting pattern for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1020
    :cond_0
    return-object v4
.end method

.method private getFormatterOrNull(Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;
    .locals 5

    .line 997
    invoke-static {p2}, Lcom/ibm/icu/text/MeasureFormat;->getRegularWidth(Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object p2

    .line 998
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->cache:Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v0, v0, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToPatterns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    .line 999
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;

    .line 1000
    if-eqz v3, :cond_0

    aget-object v0, v3, p3

    if-eqz v0, :cond_0

    .line 1001
    aget-object v0, v3, p3

    return-object v0

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->cache:Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v0, v0, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;->widthFallback:[Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {p2}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->ordinal()I

    move-result v1

    aget-object v4, v0, v1

    .line 1004
    if-eqz v4, :cond_1

    .line 1005
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;

    .line 1006
    if-eqz v3, :cond_1

    aget-object v0, v3, p3

    if-eqz v0, :cond_1

    .line 1007
    aget-object v0, v3, p3

    return-object v0

    .line 1010
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)Lcom/ibm/icu/text/MeasureFormat;
    .locals 1

    .line 224
    invoke-static {p0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/MeasureFormat;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/text/MeasureFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/text/MeasureFormat;
    .locals 13

    .line 249
    invoke-static {p0}, Lcom/ibm/icu/text/PluralRules;->forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;

    move-result-object v9

    .line 250
    const/4 v10, 0x0

    .line 251
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat;->localeMeasureFormatData:Lcom/ibm/icu/impl/SimpleCache;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    .line 252
    if-nez v11, :cond_0

    .line 253
    invoke-static {p0}, Lcom/ibm/icu/text/MeasureFormat;->loadLocaleData(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    move-result-object v11

    .line 254
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat;->localeMeasureFormatData:Lcom/ibm/icu/impl/SimpleCache;

    invoke-virtual {v0, p0, v11}, Lcom/ibm/icu/impl/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 256
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    if-ne p1, v0, :cond_1

    .line 257
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat;->localeToNumericDurationFormatters:Lcom/ibm/icu/impl/SimpleCache;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    .line 258
    if-nez v10, :cond_1

    .line 259
    invoke-static {p0}, Lcom/ibm/icu/text/MeasureFormat;->loadNumericFormatters(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    move-result-object v10

    .line 260
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat;->localeToNumericDurationFormatters:Lcom/ibm/icu/impl/SimpleCache;

    invoke-virtual {v0, p0, v10}, Lcom/ibm/icu/impl/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 263
    :cond_1
    invoke-static {p0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v12

    .line 264
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 265
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 266
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/ibm/icu/text/NumberFormat;->setRoundingMode(I)V

    .line 267
    new-instance v0, Lcom/ibm/icu/text/MeasureFormat;

    new-instance v4, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-direct {v4, p2}, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Lcom/ibm/icu/text/NumberFormat;)V

    new-instance v7, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    .line 274
    invoke-virtual {p1}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->getCurrencyStyle()I

    move-result v1

    invoke-static {p0, v1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Lcom/ibm/icu/text/NumberFormat;)V

    new-instance v8, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-direct {v8, v12}, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Lcom/ibm/icu/text/NumberFormat;)V

    move-object v1, p0

    move-object v2, v11

    move-object v3, p1

    move-object v5, v9

    move-object v6, v10

    invoke-direct/range {v0 .. v8}, Lcom/ibm/icu/text/MeasureFormat;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;)V

    .line 267
    return-object v0
.end method

.method private static final getRegularWidth(Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    .line 990
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    if-ne p0, v0, :cond_0

    .line 991
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->NARROW:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    return-object v0

    .line 993
    :cond_0
    return-object p0
.end method

.method private static loadLocaleData(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;
    .locals 4

    .line 981
    const-string v0, "com/ibm/icu/impl/data/icudt59b/unit"

    .line 982
    invoke-static {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 983
    new-instance v2, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;-><init>(Lcom/ibm/icu/text/MeasureFormat$1;)V

    .line 984
    new-instance v3, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;

    invoke-direct {v3, v2}, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;-><init>(Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;)V

    .line 985
    const-string v0, ""

    invoke-virtual {v1, v0, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 986
    return-object v2
.end method

.method private static loadNumericDurationFormat(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/text/DateFormat;
    .locals 4

    .line 1231
    const-string v0, "durationUnits/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p0

    .line 1233
    new-instance v3, Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "h"

    const-string v2, "H"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1234
    sget-object v0, Lcom/ibm/icu/util/TimeZone;->GMT_ZONE:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/text/DateFormat;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 1235
    return-object v3
.end method

.method private static loadNumericFormatters(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;
    .locals 5

    .line 756
    const-string v0, "com/ibm/icu/impl/data/icudt59b/unit"

    .line 757
    invoke-static {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 758
    new-instance v0, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    const-string v1, "hm"

    .line 759
    invoke-static {v4, v1}, Lcom/ibm/icu/text/MeasureFormat;->loadNumericDurationFormat(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v1

    const-string v2, "ms"

    .line 760
    invoke-static {v4, v2}, Lcom/ibm/icu/text/MeasureFormat;->loadNumericDurationFormat(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v2

    const-string v3, "hms"

    .line 761
    invoke-static {v4, v3}, Lcom/ibm/icu/text/MeasureFormat;->loadNumericDurationFormat(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;-><init>(Lcom/ibm/icu/text/DateFormat;Lcom/ibm/icu/text/DateFormat;Lcom/ibm/icu/text/DateFormat;)V

    .line 758
    return-object v0
.end method

.method private static toHMS([Lcom/ibm/icu/util/Measure;)[Ljava/lang/Number;
    .locals 12

    .line 1244
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Number;

    .line 1245
    const/4 v5, -0x1

    .line 1246
    move-object v6, p0

    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    .line 1247
    invoke-virtual {v9}, Lcom/ibm/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 1248
    const/4 v0, 0x0

    return-object v0

    .line 1250
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/ibm/icu/util/Measure;->getUnit()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/Integer;

    .line 1251
    if-nez v10, :cond_1

    .line 1252
    const/4 v0, 0x0

    return-object v0

    .line 1254
    :cond_1
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1255
    if-gt v11, v5, :cond_2

    .line 1257
    const/4 v0, 0x0

    return-object v0

    .line 1259
    :cond_2
    move v5, v11

    .line 1260
    invoke-virtual {v9}, Lcom/ibm/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v0

    aput-object v0, v4, v11

    .line 1246
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1262
    :cond_3
    return-object v4
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 5

    .line 1384
    new-instance v0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;

    .line 1385
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    iget-object v3, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-virtual {v3}, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;I)V

    .line 1384
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 607
    if-ne p0, p1, :cond_0

    .line 608
    const/4 v0, 0x1

    return v0

    .line 610
    :cond_0
    instance-of v0, p1, Lcom/ibm/icu/text/MeasureFormat;

    if-nez v0, :cond_1

    .line 611
    const/4 v0, 0x0

    return v0

    .line 613
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/ibm/icu/text/MeasureFormat;

    .line 615
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getWidth()Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    invoke-virtual {v2}, Lcom/ibm/icu/text/MeasureFormat;->getWidth()Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 616
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v2}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getNumberFormat()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v2}, Lcom/ibm/icu/text/MeasureFormat;->getNumberFormat()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 615
    :goto_0
    return v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 10

    .line 311
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 312
    new-instance v4, Ljava/text/FieldPosition;

    .line 313
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    move-result v1

    invoke-direct {v4, v0, v1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    .line 314
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 315
    move-object v5, p1

    check-cast v5, Ljava/util/Collection;

    .line 316
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v6, v0, [Lcom/ibm/icu/util/Measure;

    .line 317
    const/4 v7, 0x0

    .line 318
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 319
    instance-of v0, v9, Lcom/ibm/icu/util/Measure;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_0
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    move-object v1, v9

    check-cast v1, Lcom/ibm/icu/util/Measure;

    aput-object v1, v6, v0

    .line 323
    goto :goto_0

    .line 324
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, v4, v6}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Lcom/ibm/icu/util/Measure;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 325
    goto :goto_1

    :cond_2
    instance-of v0, p1, [Lcom/ibm/icu/util/Measure;

    if-eqz v0, :cond_3

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p1

    check-cast v1, [Lcom/ibm/icu/util/Measure;

    check-cast v1, [Lcom/ibm/icu/util/Measure;

    invoke-virtual {p0, v0, v4, v1}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Lcom/ibm/icu/util/Measure;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 327
    :cond_3
    instance-of v0, p1, Lcom/ibm/icu/util/Measure;

    if-eqz v0, :cond_4

    .line 328
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/util/Measure;

    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasure(Lcom/ibm/icu/util/Measure;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 330
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :goto_1
    invoke-virtual {v4}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v4}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v0

    if-eqz v0, :cond_6

    .line 333
    :cond_5
    invoke-virtual {v4}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 334
    invoke-virtual {v4}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 336
    :cond_6
    return-object p2
.end method

.method public varargs formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Lcom/ibm/icu/util/Measure;)Ljava/lang/StringBuilder;
    .locals 6

    .line 539
    array-length v0, p3

    if-nez v0, :cond_0

    .line 540
    return-object p1

    .line 542
    :cond_0
    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 543
    const/4 v0, 0x0

    aget-object v0, p3, v0

    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasure(Lcom/ibm/icu/util/Measure;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    sget-object v1, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    if-ne v0, v1, :cond_2

    .line 549
    invoke-static {p3}, Lcom/ibm/icu/text/MeasureFormat;->toHMS([Lcom/ibm/icu/util/Measure;)[Ljava/lang/Number;

    move-result-object v3

    .line 550
    if-eqz v3, :cond_2

    .line 551
    invoke-direct {p0, v3, p1}, Lcom/ibm/icu/text/MeasureFormat;->formatNumeric([Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 555
    .line 556
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v1}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->getListFormatterStyle()Lcom/ibm/icu/text/ListFormatter$Style;

    move-result-object v1

    .line 555
    invoke-static {v0, v1}, Lcom/ibm/icu/text/ListFormatter;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/ListFormatter$Style;)Lcom/ibm/icu/text/ListFormatter;

    move-result-object v3

    .line 557
    sget-object v0, Lcom/ibm/icu/impl/DontCareFieldPosition;->INSTANCE:Lcom/ibm/icu/impl/DontCareFieldPosition;

    if-eq p2, v0, :cond_3

    .line 558
    invoke-direct {p0, v3, p1, p2, p3}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasuresSlowTrack(Lcom/ibm/icu/text/ListFormatter;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Lcom/ibm/icu/util/Measure;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 561
    :cond_3
    array-length v0, p3

    new-array v4, v0, [Ljava/lang/String;

    .line 562
    const/4 v5, 0x0

    :goto_0
    array-length v0, p3

    if-ge v5, v0, :cond_5

    .line 563
    aget-object v0, p3, v5

    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    if-ne v5, v1, :cond_4

    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat;->integerFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasure(Lcom/ibm/icu/util/Measure;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 562
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 567
    :cond_5
    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/text/ListFormatter;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final getLocale()Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 644
    sget-object v0, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public getNumberFormat()Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public getPluralFormatter(Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1029
    sget v0, Lcom/ibm/icu/impl/StandardPlural;->OTHER_INDEX:I

    if-eq p3, v0, :cond_0

    .line 1030
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/MeasureFormat;->getFormatterOrNull(Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    move-result-object v1

    .line 1031
    if-eqz v1, :cond_0

    .line 1032
    return-object v1

    .line 1035
    :cond_0
    sget v0, Lcom/ibm/icu/impl/StandardPlural;->OTHER_INDEX:I

    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/MeasureFormat;->getFormatter(Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 627
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 628
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getNumberFormat()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getWidth()Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 627
    return v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/Measure;
    .locals 1

    .line 348
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/MeasureFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/Measure;

    move-result-object v0

    return-object v0
.end method

.method toCurrencyProxy()Ljava/lang/Object;
    .locals 5

    .line 1191
    new-instance v0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;

    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    iget-object v3, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-virtual {v3}, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;I)V

    return-object v0
.end method

.method toTimeUnitProxy()Ljava/lang/Object;
    .locals 5

    .line 1187
    new-instance v0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;

    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    iget-object v3, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-virtual {v3}, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;I)V

    return-object v0
.end method

.method withLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MeasureFormat;
    .locals 1

    .line 690
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getWidth()Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ibm/icu/text/MeasureFormat;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)Lcom/ibm/icu/text/MeasureFormat;

    move-result-object v0

    return-object v0
.end method

.method withNumberFormat(Lcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/text/MeasureFormat;
    .locals 9

    .line 694
    new-instance v0, Lcom/ibm/icu/text/MeasureFormat;

    .line 695
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat;->cache:Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v3, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    new-instance v4, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-direct {v4, p1}, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Lcom/ibm/icu/text/NumberFormat;)V

    iget-object v5, p0, Lcom/ibm/icu/text/MeasureFormat;->rules:Lcom/ibm/icu/text/PluralRules;

    iget-object v6, p0, Lcom/ibm/icu/text/MeasureFormat;->numericFormatters:Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    iget-object v7, p0, Lcom/ibm/icu/text/MeasureFormat;->currencyFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    iget-object v8, p0, Lcom/ibm/icu/text/MeasureFormat;->integerFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-direct/range {v0 .. v8}, Lcom/ibm/icu/text/MeasureFormat;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;)V

    .line 694
    return-object v0
.end method

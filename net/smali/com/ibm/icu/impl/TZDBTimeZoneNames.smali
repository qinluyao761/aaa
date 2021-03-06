.class public Lcom/ibm/icu/impl/TZDBTimeZoneNames;
.super Lcom/ibm/icu/text/TimeZoneNames;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;,
        Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;,
        Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;
    }
.end annotation


# static fields
.field private static final TZDB_NAMES_MAP:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;>;"
        }
    .end annotation
.end field

.field private static volatile TZDB_NAMES_TRIE:Lcom/ibm/icu/impl/TextTrieMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/TextTrieMap<Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;>;"
        }
    .end annotation
.end field

.field private static final ZONESTRINGS:Lcom/ibm/icu/impl/ICUResourceBundle;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _locale:Lcom/ibm/icu/util/ULocale;

.field private volatile transient _region:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_MAP:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    .line 50
    const-string v0, "com/ibm/icu/impl/data/icudt59b/zone"

    const-string v1, "tzdbNames"

    .line 51
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 52
    const-string v0, "zoneStrings"

    invoke-virtual {v2, v0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    sput-object v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames;->ZONESTRINGS:Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneNames;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames;->_locale:Lcom/ibm/icu/util/ULocale;

    .line 60
    return-void
.end method

.method private static getMetaZoneNames(Ljava/lang/String;)Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;
    .locals 5

    .line 340
    sget-object v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_MAP:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;

    .line 341
    if-nez v3, :cond_1

    .line 342
    sget-object v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames;->ZONESTRINGS:Lcom/ibm/icu/impl/ICUResourceBundle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "meta:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->getInstance(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;

    move-result-object v3

    .line 343
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 344
    sget-object v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_MAP:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;

    .line 345
    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 347
    :cond_1
    :goto_0
    return-object v3
.end method

.method private getTargetRegion()Ljava/lang/String;
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames;->_region:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    .line 400
    invoke-virtual {v2}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 402
    const-string v1, "001"

    .line 405
    :cond_0
    iput-object v1, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames;->_region:Ljava/lang/String;

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames;->_region:Ljava/lang/String;

    return-object v0
.end method

.method private static prepareFind()V
    .locals 17

    .line 351
    sget-object v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    if-nez v0, :cond_6

    .line 352
    const-class v5, Lcom/ibm/icu/impl/TZDBTimeZoneNames;

    monitor-enter v5

    .line 353
    :try_start_0
    sget-object v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    if-nez v0, :cond_5

    .line 355
    new-instance v6, Lcom/ibm/icu/impl/TextTrieMap;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Lcom/ibm/icu/impl/TextTrieMap;-><init>(Z)V

    .line 356
    invoke-static {}, Lcom/ibm/icu/impl/TimeZoneNamesImpl;->_getAvailableMetaZoneIDs()Ljava/util/Set;

    move-result-object v7

    .line 357
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 358
    invoke-static {v9}, Lcom/ibm/icu/impl/TZDBTimeZoneNames;->getMetaZoneNames(Ljava/lang/String;)Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;

    move-result-object v10

    .line 359
    sget-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v10, v0}, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->getName(Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v11

    .line 360
    sget-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v10, v0}, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->getName(Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v12

    .line 361
    if-nez v11, :cond_0

    if-nez v12, :cond_0

    .line 362
    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {v10}, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->getParseRegions()[Ljava/lang/String;

    move-result-object v13

    .line 365
    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    .line 372
    if-eqz v11, :cond_1

    if-eqz v12, :cond_1

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    .line 374
    :goto_1
    if-eqz v11, :cond_2

    .line 375
    new-instance v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;

    move-object v1, v9

    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move v3, v14

    move-object v4, v13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;Z[Ljava/lang/String;)V

    move-object v15, v0

    .line 379
    invoke-virtual {v6, v11, v15}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    .line 381
    :cond_2
    if-eqz v12, :cond_3

    .line 382
    new-instance v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;

    move-object v1, v9

    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move v3, v14

    move-object v4, v13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;Z[Ljava/lang/String;)V

    move-object v15, v0

    .line 386
    invoke-virtual {v6, v12, v15}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    .line 388
    :cond_3
    goto/16 :goto_0

    .line 389
    :cond_4
    sput-object v6, Lcom/ibm/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Lcom/ibm/icu/impl/TextTrieMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :cond_5
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v16

    monitor-exit v5

    throw v16

    .line 393
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/CharSequence;ILjava/util/EnumSet<Lcom/ibm/icu/text/TimeZoneNames$NameType;>;)Ljava/util/Collection<Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;>;"
        }
    .end annotation

    .line 129
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad input text or range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    invoke-static {}, Lcom/ibm/icu/impl/TZDBTimeZoneNames;->prepareFind()V

    .line 134
    new-instance v2, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;

    invoke-direct {p0}, Lcom/ibm/icu/impl/TZDBTimeZoneNames;->getTargetRegion()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p3, v0}, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;-><init>(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-virtual {v0, p1, p2, v2}, Lcom/ibm/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILcom/ibm/icu/impl/TextTrieMap$ResultHandler;)V

    .line 136
    invoke-virtual {v2}, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->getMatches()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;)Ljava/util/Set<Ljava/lang/String;>;"
        }
    .end annotation

    .line 75
    invoke-static {p1}, Lcom/ibm/icu/impl/TimeZoneNamesImpl;->_getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMetaZoneDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 1

    .line 100
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    if-eq p2, v0, :cond_1

    .line 102
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/impl/TZDBTimeZoneNames;->getMetaZoneNames(Ljava/lang/String;)Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->getName(Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;
    .locals 1

    .line 83
    invoke-static {p1, p2, p3}, Lcom/ibm/icu/impl/TimeZoneNamesImpl;->_getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 91
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/TimeZoneNamesImpl;->_getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZoneDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 1

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

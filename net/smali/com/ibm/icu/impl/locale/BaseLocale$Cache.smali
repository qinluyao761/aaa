.class Lcom/ibm/icu/impl/locale/BaseLocale$Cache;
.super Lcom/ibm/icu/impl/locale/LocaleObjectCache;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/locale/BaseLocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/impl/locale/LocaleObjectCache<Lcom/ibm/icu/impl/locale/BaseLocale$Key;Lcom/ibm/icu/impl/locale/BaseLocale;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 253
    invoke-direct {p0}, Lcom/ibm/icu/impl/locale/LocaleObjectCache;-><init>()V

    .line 254
    return-void
.end method


# virtual methods
.method protected createObject(Lcom/ibm/icu/impl/locale/BaseLocale$Key;)Lcom/ibm/icu/impl/locale/BaseLocale;
    .locals 6

    .line 263
    new-instance v0, Lcom/ibm/icu/impl/locale/BaseLocale;

    # getter for: Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->access$000(Lcom/ibm/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->access$100(Lcom/ibm/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->access$200(Lcom/ibm/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->access$300(Lcom/ibm/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/locale/BaseLocale$1;)V

    return-object v0
.end method

.method protected bridge synthetic createObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 251
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/locale/BaseLocale$Cache;->createObject(Lcom/ibm/icu/impl/locale/BaseLocale$Key;)Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    return-object v0
.end method

.method protected normalizeKey(Lcom/ibm/icu/impl/locale/BaseLocale$Key;)Lcom/ibm/icu/impl/locale/BaseLocale$Key;
    .locals 1

    .line 258
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->normalize(Lcom/ibm/icu/impl/locale/BaseLocale$Key;)Lcom/ibm/icu/impl/locale/BaseLocale$Key;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic normalizeKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 251
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/locale/BaseLocale$Cache;->normalizeKey(Lcom/ibm/icu/impl/locale/BaseLocale$Key;)Lcom/ibm/icu/impl/locale/BaseLocale$Key;

    move-result-object v0

    return-object v0
.end method

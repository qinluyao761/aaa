.class final enum Lcom/ibm/icu/util/Calendar$CalType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CalType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lcom/ibm/icu/util/Calendar$CalType;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum BUDDHIST:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum CHINESE:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum COPTIC:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum DANGI:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum ETHIOPIC:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum ETHIOPIC_AMETE_ALEM:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum GREGORIAN:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum HEBREW:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum INDIAN:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC_CIVIL:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC_RGSA:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC_TBLA:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC_UMALQURA:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum ISO8601:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum JAPANESE:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum PERSIAN:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum ROC:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum UNKNOWN:Lcom/ibm/icu/util/Calendar$CalType;


# instance fields
.field id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1779
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string v1, "GREGORIAN"

    const-string v2, "gregorian"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->GREGORIAN:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1780
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string v1, "ISO8601"

    const-string v2, "iso8601"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->ISO8601:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1782
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string v1, "BUDDHIST"

    const-string v2, "buddhist"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->BUDDHIST:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1783
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string v1, "CHINESE"

    const-string v2, "chinese"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->CHINESE:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1784
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string v1, "COPTIC"

    const-string v2, "coptic"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->COPTIC:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1785
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string v1, "DANGI"

    const-string v2, "dangi"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->DANGI:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1786
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string v1, "ETHIOPIC"

    const-string v2, "ethiopic"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->ETHIOPIC:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1787
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string v1, "ETHIOPIC_AMETE_ALEM"

    const-string v2, "ethiopic-amete-alem"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->ETHIOPIC_AMETE_ALEM:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1788
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string v1, "HEBREW"

    const-string v2, "hebrew"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->HEBREW:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1789
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string v1, "INDIAN"

    const-string v2, "indian"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->INDIAN:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1790
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string v1, "ISLAMIC"

    const-string v2, "islamic"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->ISLAMIC:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1791
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string v1, "ISLAMIC_CIVIL"

    const-string v2, "islamic-civil"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->ISLAMIC_CIVIL:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1792
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string v1, "ISLAMIC_RGSA"

    const-string v2, "islamic-rgsa"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->ISLAMIC_RGSA:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1793
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string v1, "ISLAMIC_TBLA"

    const-string v2, "islamic-tbla"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->ISLAMIC_TBLA:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1794
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string v1, "ISLAMIC_UMALQURA"

    const-string v2, "islamic-umalqura"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->ISLAMIC_UMALQURA:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1795
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string v1, "JAPANESE"

    const-string v2, "japanese"

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->JAPANESE:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1796
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string v1, "PERSIAN"

    const-string v2, "persian"

    const/16 v3, 0x10

    invoke-direct {v0, v1, v3, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->PERSIAN:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1797
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string v1, "ROC"

    const-string v2, "roc"

    const/16 v3, 0x11

    invoke-direct {v0, v1, v3, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->ROC:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1799
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string v1, "UNKNOWN"

    const-string v2, "unknown"

    const/16 v3, 0x12

    invoke-direct {v0, v1, v3, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->UNKNOWN:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1778
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/ibm/icu/util/Calendar$CalType;

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->GREGORIAN:Lcom/ibm/icu/util/Calendar$CalType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->ISO8601:Lcom/ibm/icu/util/Calendar$CalType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->BUDDHIST:Lcom/ibm/icu/util/Calendar$CalType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->CHINESE:Lcom/ibm/icu/util/Calendar$CalType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->COPTIC:Lcom/ibm/icu/util/Calendar$CalType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->DANGI:Lcom/ibm/icu/util/Calendar$CalType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->ETHIOPIC:Lcom/ibm/icu/util/Calendar$CalType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->ETHIOPIC_AMETE_ALEM:Lcom/ibm/icu/util/Calendar$CalType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->HEBREW:Lcom/ibm/icu/util/Calendar$CalType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->INDIAN:Lcom/ibm/icu/util/Calendar$CalType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->ISLAMIC:Lcom/ibm/icu/util/Calendar$CalType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->ISLAMIC_CIVIL:Lcom/ibm/icu/util/Calendar$CalType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->ISLAMIC_RGSA:Lcom/ibm/icu/util/Calendar$CalType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->ISLAMIC_TBLA:Lcom/ibm/icu/util/Calendar$CalType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->ISLAMIC_UMALQURA:Lcom/ibm/icu/util/Calendar$CalType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->JAPANESE:Lcom/ibm/icu/util/Calendar$CalType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->PERSIAN:Lcom/ibm/icu/util/Calendar$CalType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->ROC:Lcom/ibm/icu/util/Calendar$CalType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->UNKNOWN:Lcom/ibm/icu/util/Calendar$CalType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->$VALUES:[Lcom/ibm/icu/util/Calendar$CalType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;)V"
        }
    .end annotation

    .line 1803
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1804
    iput-object p3, p0, Lcom/ibm/icu/util/Calendar$CalType;->id:Ljava/lang/String;

    .line 1805
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/Calendar$CalType;
    .locals 1

    .line 1778
    const-class v0, Lcom/ibm/icu/util/Calendar$CalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Calendar$CalType;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/util/Calendar$CalType;
    .locals 1

    .line 1778
    sget-object v0, Lcom/ibm/icu/util/Calendar$CalType;->$VALUES:[Lcom/ibm/icu/util/Calendar$CalType;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/Calendar$CalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/Calendar$CalType;

    return-object v0
.end method

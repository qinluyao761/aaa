.class public final Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CurrencyMetaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrencyFilter"
.end annotation


# static fields
.field private static final ALL:Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;


# instance fields
.field public final currency:Ljava/lang/String;

.field public final from:J

.field public final region:Ljava/lang/String;

.field public final tenderOnly:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final to:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 123
    new-instance v0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    sput-object v0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    .line 117
    iput-wide p3, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    .line 118
    iput-wide p5, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    .line 119
    iput-boolean p7, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    .line 121
    return-void
.end method

.method public static all()Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 1

    .line 132
    sget-object v0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    return-object v0
.end method

.method private static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 363
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    .line 364
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 363
    :goto_0
    return v0
.end method

.method public static onRegion(Ljava/lang/String;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 1

    .line 153
    sget-object v0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->withRegion(Ljava/lang/String;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;)Z
    .locals 4

    .line 323
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    iget-object v1, p1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    .line 324
    invoke-static {v0, v1}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    iget-object v1, p1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    .line 325
    invoke-static {v0, v1}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    iget-wide v2, p1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    iget-wide v2, p1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    iget-boolean v1, p1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 323
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 312
    instance-of v0, p1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    .line 313
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->equals(Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 312
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 337
    const/4 v4, 0x0

    .line 338
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 342
    mul-int/lit8 v0, v4, 0x1f

    iget-object v1, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int v4, v0, v1

    .line 344
    :cond_1
    mul-int/lit8 v0, v4, 0x1f

    iget-wide v1, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    long-to-int v1, v1

    add-int v4, v0, v1

    .line 345
    mul-int/lit8 v0, v4, 0x1f

    iget-wide v1, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    add-int v4, v0, v1

    .line 346
    mul-int/lit8 v0, v4, 0x1f

    iget-wide v1, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    long-to-int v1, v1

    add-int v4, v0, v1

    .line 347
    mul-int/lit8 v0, v4, 0x1f

    iget-wide v1, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    add-int v4, v0, v1

    .line 348
    mul-int/lit8 v0, v4, 0x1f

    iget-boolean v1, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    add-int v4, v0, v1

    .line 349
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 359
    # invokes: Lcom/ibm/icu/text/CurrencyMetaInfo;->debugString(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {p0}, Lcom/ibm/icu/text/CurrencyMetaInfo;->access$000(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withRegion(Ljava/lang/String;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 8

    .line 233
    new-instance v0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    iget-object v2, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    iget-wide v3, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    iget-wide v5, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    iget-boolean v7, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-object v0
.end method

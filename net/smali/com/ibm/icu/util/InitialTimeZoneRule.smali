.class public Lcom/ibm/icu/util/InitialTimeZoneRule;
.super Lcom/ibm/icu/util/TimeZoneRule;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x1a0b01341cdc0206L


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/util/TimeZoneRule;-><init>(Ljava/lang/String;II)V

    .line 37
    return-void
.end method


# virtual methods
.method public getNextStart(JIIZ)Ljava/util/Date;
    .locals 1

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public isTransitionRule()Z
    .locals 1

    .line 109
    const/4 v0, 0x0

    return v0
.end method

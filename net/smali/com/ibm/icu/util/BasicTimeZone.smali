.class public abstract Lcom/ibm/icu/util/BasicTimeZone;
.super Lcom/ibm/icu/util/TimeZone;
.source ""


# static fields
.field private static final serialVersionUID:J = -0x2c77e2591bf19444L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 607
    invoke-direct {p0}, Lcom/ibm/icu/util/TimeZone;-><init>()V

    .line 608
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 618
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/TimeZone;-><init>(Ljava/lang/String;)V

    .line 619
    return-void
.end method


# virtual methods
.method public abstract getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
.end method

.method public getOffsetFromLocal(JII[I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 600
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
.end method

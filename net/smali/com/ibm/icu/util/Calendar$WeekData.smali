.class public final Lcom/ibm/icu/util/Calendar$WeekData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeekData"
.end annotation


# instance fields
.field public final firstDayOfWeek:I

.field public final minimalDaysInFirstWeek:I

.field public final weekendCease:I

.field public final weekendCeaseMillis:I

.field public final weekendOnset:I

.field public final weekendOnsetMillis:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 4750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4751
    iput p1, p0, Lcom/ibm/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    .line 4752
    iput p2, p0, Lcom/ibm/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    .line 4753
    iput p3, p0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendOnset:I

    .line 4754
    iput p4, p0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    .line 4755
    iput p5, p0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendCease:I

    .line 4756
    iput p6, p0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    .line 4757
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 4777
    if-ne p0, p1, :cond_0

    .line 4778
    const/4 v0, 0x1

    return v0

    .line 4780
    :cond_0
    instance-of v0, p1, Lcom/ibm/icu/util/Calendar$WeekData;

    if-nez v0, :cond_1

    .line 4781
    const/4 v0, 0x0

    return v0

    .line 4783
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/ibm/icu/util/Calendar$WeekData;

    .line 4784
    iget v0, p0, Lcom/ibm/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    iget v1, v2, Lcom/ibm/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/ibm/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    iget v1, v2, Lcom/ibm/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendOnset:I

    iget v1, v2, Lcom/ibm/icu/util/Calendar$WeekData;->weekendOnset:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    iget v1, v2, Lcom/ibm/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendCease:I

    iget v1, v2, Lcom/ibm/icu/util/Calendar$WeekData;->weekendCease:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    iget v1, v2, Lcom/ibm/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 4766
    iget v0, p0, Lcom/ibm/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/ibm/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendOnset:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendCease:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 4799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ibm/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ibm/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendOnset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendCease:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

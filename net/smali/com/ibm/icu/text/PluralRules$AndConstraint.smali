.class Lcom/ibm/icu/text/PluralRules$AndConstraint;
.super Lcom/ibm/icu/text/PluralRules$BinaryConstraint;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AndConstraint"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6bc9ed26013a36e3L


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$Constraint;)V
    .locals 0

    .line 1689
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/PluralRules$BinaryConstraint;-><init>(Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$Constraint;)V

    .line 1690
    return-void
.end method


# virtual methods
.method public isFulfilled(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Z
    .locals 1

    .line 1694
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$AndConstraint;->a:Lcom/ibm/icu/text/PluralRules$Constraint;

    invoke-interface {v0, p1}, Lcom/ibm/icu/text/PluralRules$Constraint;->isFulfilled(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$AndConstraint;->b:Lcom/ibm/icu/text/PluralRules$Constraint;

    .line 1695
    invoke-interface {v0, p1}, Lcom/ibm/icu/text/PluralRules$Constraint;->isFulfilled(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1694
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$AndConstraint;->a:Lcom/ibm/icu/text/PluralRules$Constraint;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$AndConstraint;->b:Lcom/ibm/icu/text/PluralRules$Constraint;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

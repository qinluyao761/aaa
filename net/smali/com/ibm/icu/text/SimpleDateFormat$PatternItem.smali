.class Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/SimpleDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PatternItem"
.end annotation


# instance fields
.field final isNumeric:Z

.field final length:I

.field final type:C


# direct methods
.method constructor <init>(CI)V
    .locals 1

    .line 2094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2095
    iput-char p1, p0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C

    .line 2096
    iput p2, p0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I

    .line 2097
    # invokes: Lcom/ibm/icu/text/SimpleDateFormat;->isNumeric(CI)Z
    invoke-static {p1, p2}, Lcom/ibm/icu/text/SimpleDateFormat;->access$000(CI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    .line 2098
    return-void
.end method

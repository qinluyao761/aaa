.class public interface abstract Lcom/ibm/icu/impl/number/formatters/PaddingFormat$IProperties;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/formatters/PaddingFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IProperties"
.end annotation


# static fields
.field public static final DEFAULT_PAD_POSITION:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

.field public static final DEFAULT_PAD_STRING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$IProperties;->DEFAULT_PAD_STRING:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$IProperties;->DEFAULT_PAD_POSITION:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    return-void
.end method


# virtual methods
.method public abstract getFormatWidth()I
.end method

.method public abstract getPadPosition()Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;
.end method

.method public abstract getPadString()Ljava/lang/String;
.end method

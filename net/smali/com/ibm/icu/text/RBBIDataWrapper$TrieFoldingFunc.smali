.class Lcom/ibm/icu/text/RBBIDataWrapper$TrieFoldingFunc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/impl/Trie$DataManipulate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/RBBIDataWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrieFoldingFunc"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFoldingOffset(I)I
    .locals 1

    .line 153
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 154
    and-int/lit16 v0, p1, 0x7fff

    return v0

    .line 156
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.class Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/util/TableInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ForeignKeyWithSequence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/lang/Comparable<Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;>;"
    }
.end annotation


# instance fields
.field final mFrom:Ljava/lang/String;

.field final mId:I

.field final mSequence:I

.field final mTo:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput p1, p0, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mId:I

    .line 469
    iput p2, p0, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mSequence:I

    .line 470
    iput-object p3, p0, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mFrom:Ljava/lang/String;

    .line 471
    iput-object p4, p0, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mTo:Ljava/lang/String;

    .line 472
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;)I
    .locals 3

    .line 476
    iget v0, p0, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mId:I

    iget v1, p1, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mId:I

    sub-int v2, v0, v1

    .line 477
    if-nez v2, :cond_0

    .line 478
    iget v0, p0, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mSequence:I

    iget v1, p1, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mSequence:I

    sub-int/2addr v0, v1

    return v0

    .line 480
    :cond_0
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 460
    move-object v0, p1

    check-cast v0, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->compareTo(Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;)I

    move-result v0

    return v0
.end method

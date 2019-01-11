.class public final Landroid/arch/persistence/db/SimpleSQLiteQuery;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/arch/persistence/db/SupportSQLiteQuery;


# instance fields
.field private final mBindArgs:[Ljava/lang/Object;

.field private final mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/arch/persistence/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/arch/persistence/db/SimpleSQLiteQuery;->mQuery:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Landroid/arch/persistence/db/SimpleSQLiteQuery;->mBindArgs:[Ljava/lang/Object;

    .line 36
    return-void
.end method

.method private static bind(Landroid/arch/persistence/db/SupportSQLiteProgram;ILjava/lang/Object;)V
    .locals 3

    .line 76
    if-nez p2, :cond_0

    .line 77
    invoke-interface {p0, p1}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindNull(I)V

    goto/16 :goto_0

    .line 78
    :cond_0
    instance-of v0, p2, [B

    if-eqz v0, :cond_1

    .line 79
    move-object v0, p2

    check-cast v0, [B

    check-cast v0, [B

    invoke-interface {p0, p1, v0}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindBlob(I[B)V

    goto/16 :goto_0

    .line 80
    :cond_1
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 81
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-interface {p0, p1, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindDouble(ID)V

    goto/16 :goto_0

    .line 82
    :cond_2
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 83
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindDouble(ID)V

    goto/16 :goto_0

    .line 84
    :cond_3
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 85
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindLong(IJ)V

    goto/16 :goto_0

    .line 86
    :cond_4
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 87
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, p1, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindLong(IJ)V

    goto :goto_0

    .line 88
    :cond_5
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_6

    .line 89
    move-object v0, p2

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, p1, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindLong(IJ)V

    goto :goto_0

    .line 90
    :cond_6
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_7

    .line 91
    move-object v0, p2

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, p1, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindLong(IJ)V

    goto :goto_0

    .line 92
    :cond_7
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 93
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot bind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Supported types: null, byte[], float, double, long, int, short, byte,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " string"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :goto_0
    return-void
.end method

.method public static bind(Landroid/arch/persistence/db/SupportSQLiteProgram;[Ljava/lang/Object;)V
    .locals 4

    .line 64
    if-nez p1, :cond_0

    .line 65
    return-void

    .line 67
    :cond_0
    array-length v1, p1

    .line 68
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 69
    aget-object v3, p1, v2

    .line 70
    add-int/lit8 v0, v2, 0x1

    invoke-static {p0, v0, v3}, Landroid/arch/persistence/db/SimpleSQLiteQuery;->bind(Landroid/arch/persistence/db/SupportSQLiteProgram;ILjava/lang/Object;)V

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method


# virtual methods
.method public bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V
    .locals 1

    .line 54
    iget-object v0, p0, Landroid/arch/persistence/db/SimpleSQLiteQuery;->mBindArgs:[Ljava/lang/Object;

    invoke-static {p1, v0}, Landroid/arch/persistence/db/SimpleSQLiteQuery;->bind(Landroid/arch/persistence/db/SupportSQLiteProgram;[Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public getSql()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Landroid/arch/persistence/db/SimpleSQLiteQuery;->mQuery:Ljava/lang/String;

    return-object v0
.end method

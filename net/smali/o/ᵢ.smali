.class public Lo/ᵢ;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ˊ:I

.field private static ˋ:I

.field private static ˎ:Z

.field private static ˏ:[J

.field private static ॱ:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lo/ᵢ;->ˎ:Z

    .line 15
    const/4 v0, 0x0

    sput v0, Lo/ᵢ;->ˊ:I

    .line 16
    const/4 v0, 0x0

    sput v0, Lo/ᵢ;->ˋ:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˎ(Ljava/lang/String;)F
    .locals 4

    .line 44
    sget v0, Lo/ᵢ;->ˋ:I

    if-lez v0, :cond_0

    .line 45
    sget v0, Lo/ᵢ;->ˋ:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lo/ᵢ;->ˋ:I

    .line 46
    const/4 v0, 0x0

    return v0

    .line 48
    :cond_0
    sget-boolean v0, Lo/ᵢ;->ˎ:Z

    if-nez v0, :cond_1

    .line 49
    const/4 v0, 0x0

    return v0

    .line 51
    :cond_1
    sget v0, Lo/ᵢ;->ˊ:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lo/ᵢ;->ˊ:I

    .line 52
    sget v0, Lo/ᵢ;->ˊ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t end trace section. There are none."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_2
    sget-object v0, Lo/ᵢ;->ॱ:[Ljava/lang/String;

    sget v1, Lo/ᵢ;->ˊ:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unbalanced trace call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lo/ᵢ;->ॱ:[Ljava/lang/String;

    sget v3, Lo/ᵢ;->ˊ:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_3
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 60
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Lo/ᵢ;->ˏ:[J

    sget v3, Lo/ᵢ;->ˊ:I

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static ˏ(Ljava/lang/String;)V
    .locals 4

    .line 30
    sget-boolean v0, Lo/ᵢ;->ˎ:Z

    if-nez v0, :cond_0

    .line 31
    return-void

    .line 33
    :cond_0
    sget v0, Lo/ᵢ;->ˊ:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    .line 34
    sget v0, Lo/ᵢ;->ˋ:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lo/ᵢ;->ˋ:I

    .line 35
    return-void

    .line 37
    :cond_1
    sget-object v0, Lo/ᵢ;->ॱ:[Ljava/lang/String;

    sget v1, Lo/ᵢ;->ˊ:I

    aput-object p0, v0, v1

    .line 38
    sget-object v0, Lo/ᵢ;->ˏ:[J

    sget v1, Lo/ᵢ;->ˊ:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 39
    invoke-static {p0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 40
    sget v0, Lo/ᵢ;->ˊ:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lo/ᵢ;->ˊ:I

    .line 41
    return-void
.end method

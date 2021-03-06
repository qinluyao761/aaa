.class public Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/linphone/core/LinphoneCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EcCalibratorStatus"
.end annotation


# static fields
.field public static final DONE_NO_ECHO_STATUS:I = 0x3

.field public static final DONE_STATUS:I = 0x1

.field public static Done:Lorg/linphone/core/LinphoneCore$EcCalibratorStatus; = null

.field public static DoneNoEcho:Lorg/linphone/core/LinphoneCore$EcCalibratorStatus; = null

.field public static final FAILED_STATUS:I = 0x2

.field public static Failed:Lorg/linphone/core/LinphoneCore$EcCalibratorStatus; = null

.field public static final IN_PROGRESS_STATUS:I = 0x0

.field public static InProgress:Lorg/linphone/core/LinphoneCore$EcCalibratorStatus; = null

.field private static values:Ljava/util/Vector; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mStringValue:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 422
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;->values:Ljava/util/Vector;

    .line 432
    new-instance v0, Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;

    const-string v1, "InProgress"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;->InProgress:Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;

    .line 436
    new-instance v0, Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;

    const-string v1, "Done"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;->Done:Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;

    .line 440
    new-instance v0, Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;

    const-string v1, "Failed"

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;->Failed:Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;

    .line 444
    new-instance v0, Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;

    const-string v1, "DoneNoEcho"

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;->DoneNoEcho:Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput p1, p0, Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;->mValue:I

    .line 452
    sget-object v0, Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;->values:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 453
    iput-object p2, p0, Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;->mStringValue:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public static fromInt(I)Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;
    .locals 5

    .line 457
    const/4 v3, 0x0

    :goto_0
    sget-object v0, Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 458
    sget-object v0, Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;->values:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;

    .line 459
    iget v0, v4, Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;->mValue:I

    if-ne v0, p0, :cond_0

    return-object v4

    .line 457
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 461
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status not found ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 464
    iget-object v0, p0, Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;->mStringValue:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .line 467
    iget v0, p0, Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;->mValue:I

    return v0
.end method

.class final enum Lorg/chromium/net/impl/JavaUrlRequest$State;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/JavaUrlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lorg/chromium/net/impl/JavaUrlRequest$State;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/net/impl/JavaUrlRequest$State;

.field public static final enum AWAITING_FOLLOW_REDIRECT:Lorg/chromium/net/impl/JavaUrlRequest$State;

.field public static final enum AWAITING_READ:Lorg/chromium/net/impl/JavaUrlRequest$State;

.field public static final enum CANCELLED:Lorg/chromium/net/impl/JavaUrlRequest$State;

.field public static final enum COMPLETE:Lorg/chromium/net/impl/JavaUrlRequest$State;

.field public static final enum ERROR:Lorg/chromium/net/impl/JavaUrlRequest$State;

.field public static final enum NOT_STARTED:Lorg/chromium/net/impl/JavaUrlRequest$State;

.field public static final enum READING:Lorg/chromium/net/impl/JavaUrlRequest$State;

.field public static final enum REDIRECT_RECEIVED:Lorg/chromium/net/impl/JavaUrlRequest$State;

.field public static final enum STARTED:Lorg/chromium/net/impl/JavaUrlRequest$State;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 113
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$State;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/JavaUrlRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/JavaUrlRequest$State;->NOT_STARTED:Lorg/chromium/net/impl/JavaUrlRequest$State;

    .line 114
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$State;

    const-string v1, "STARTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/JavaUrlRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/JavaUrlRequest$State;->STARTED:Lorg/chromium/net/impl/JavaUrlRequest$State;

    .line 115
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$State;

    const-string v1, "REDIRECT_RECEIVED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/JavaUrlRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/JavaUrlRequest$State;->REDIRECT_RECEIVED:Lorg/chromium/net/impl/JavaUrlRequest$State;

    .line 116
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$State;

    const-string v1, "AWAITING_FOLLOW_REDIRECT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/JavaUrlRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/JavaUrlRequest$State;->AWAITING_FOLLOW_REDIRECT:Lorg/chromium/net/impl/JavaUrlRequest$State;

    .line 117
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$State;

    const-string v1, "AWAITING_READ"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/JavaUrlRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/JavaUrlRequest$State;->AWAITING_READ:Lorg/chromium/net/impl/JavaUrlRequest$State;

    .line 118
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$State;

    const-string v1, "READING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/JavaUrlRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/JavaUrlRequest$State;->READING:Lorg/chromium/net/impl/JavaUrlRequest$State;

    .line 119
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$State;

    const-string v1, "ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/JavaUrlRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/JavaUrlRequest$State;->ERROR:Lorg/chromium/net/impl/JavaUrlRequest$State;

    .line 120
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$State;

    const-string v1, "COMPLETE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/JavaUrlRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/JavaUrlRequest$State;->COMPLETE:Lorg/chromium/net/impl/JavaUrlRequest$State;

    .line 121
    new-instance v0, Lorg/chromium/net/impl/JavaUrlRequest$State;

    const-string v1, "CANCELLED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/JavaUrlRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/JavaUrlRequest$State;->CANCELLED:Lorg/chromium/net/impl/JavaUrlRequest$State;

    .line 112
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/chromium/net/impl/JavaUrlRequest$State;

    sget-object v1, Lorg/chromium/net/impl/JavaUrlRequest$State;->NOT_STARTED:Lorg/chromium/net/impl/JavaUrlRequest$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/net/impl/JavaUrlRequest$State;->STARTED:Lorg/chromium/net/impl/JavaUrlRequest$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/net/impl/JavaUrlRequest$State;->REDIRECT_RECEIVED:Lorg/chromium/net/impl/JavaUrlRequest$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/net/impl/JavaUrlRequest$State;->AWAITING_FOLLOW_REDIRECT:Lorg/chromium/net/impl/JavaUrlRequest$State;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/net/impl/JavaUrlRequest$State;->AWAITING_READ:Lorg/chromium/net/impl/JavaUrlRequest$State;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/net/impl/JavaUrlRequest$State;->READING:Lorg/chromium/net/impl/JavaUrlRequest$State;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/net/impl/JavaUrlRequest$State;->ERROR:Lorg/chromium/net/impl/JavaUrlRequest$State;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/net/impl/JavaUrlRequest$State;->COMPLETE:Lorg/chromium/net/impl/JavaUrlRequest$State;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/net/impl/JavaUrlRequest$State;->CANCELLED:Lorg/chromium/net/impl/JavaUrlRequest$State;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lorg/chromium/net/impl/JavaUrlRequest$State;->$VALUES:[Lorg/chromium/net/impl/JavaUrlRequest$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/net/impl/JavaUrlRequest$State;
    .locals 1

    .line 112
    const-class v0, Lorg/chromium/net/impl/JavaUrlRequest$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/impl/JavaUrlRequest$State;

    return-object v0
.end method

.method public static values()[Lorg/chromium/net/impl/JavaUrlRequest$State;
    .locals 1

    .line 112
    sget-object v0, Lorg/chromium/net/impl/JavaUrlRequest$State;->$VALUES:[Lorg/chromium/net/impl/JavaUrlRequest$State;

    invoke-virtual {v0}, [Lorg/chromium/net/impl/JavaUrlRequest$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/net/impl/JavaUrlRequest$State;

    return-object v0
.end method

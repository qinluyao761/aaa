.class public Lorg/linphone/tools/Lpc2Xml;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/linphone/tools/Lpc2Xml$LogLevel;
    }
.end annotation


# static fields
.field private static mAvailable:Z


# instance fields
.field private internalPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    const-string v0, "xml2"

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Lorg/linphone/tools/Lpc2Xml;->mAvailable:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lorg/linphone/tools/Lpc2Xml;->mAvailable:Z

    .line 67
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/linphone/tools/Lpc2Xml;->internalPtr:J

    .line 23
    invoke-direct {p0}, Lorg/linphone/tools/Lpc2Xml;->init()V

    .line 24
    return-void
.end method

.method private native destroy()V
.end method

.method private native init()V
.end method

.method static isAvailable()Z
    .locals 1

    .line 55
    sget-boolean v0, Lorg/linphone/tools/Lpc2Xml;->mAvailable:Z

    return v0
.end method


# virtual methods
.method public native convertFile(Ljava/lang/String;)I
.end method

.method public native convertString(Ljava/lang/StringBuffer;)I
.end method

.method public finalize()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/linphone/tools/Lpc2Xml;->destroy()V

    .line 28
    return-void
.end method

.method public printLog(ILjava/lang/String;)V
    .locals 2

    .line 36
    if-lez p1, :cond_0

    invoke-static {}, Lorg/linphone/tools/Lpc2Xml$LogLevel;->values()[Lorg/linphone/tools/Lpc2Xml$LogLevel;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 37
    sget-object v0, Lorg/linphone/tools/Lpc2Xml$1;->$SwitchMap$org$linphone$tools$Lpc2Xml$LogLevel:[I

    invoke-static {}, Lorg/linphone/tools/Lpc2Xml$LogLevel;->values()[Lorg/linphone/tools/Lpc2Xml$LogLevel;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lorg/linphone/tools/Lpc2Xml$LogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 39
    :pswitch_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->d([Ljava/lang/Object;)V

    .line 40
    goto :goto_0

    .line 42
    :pswitch_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 43
    goto :goto_0

    .line 45
    :pswitch_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->w([Ljava/lang/Object;)V

    .line 46
    goto :goto_0

    .line 48
    :pswitch_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V

    .line 52
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public native setLpc(Lorg/linphone/core/LpConfig;)I
.end method

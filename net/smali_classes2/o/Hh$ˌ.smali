.class public final Lo/Hh$ˌ;
.super Lo/Hh;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Hh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "\u02cc"
.end annotation


# static fields
.field public static final ˏ:Lo/Hh$ˌ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lo/Hh$ˌ;

    invoke-direct {v0}, Lo/Hh$ˌ;-><init>()V

    sput-object v0, Lo/Hh$ˌ;->ˏ:Lo/Hh$ˌ;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 53
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/Hh;-><init>(Lo/UW;)V

    return-void
.end method

.class public final Lo/Hh$con;
.super Lo/Hh;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Hh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "con"
.end annotation


# static fields
.field public static final ˎ:Lo/Hh$con;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lo/Hh$con;

    invoke-direct {v0}, Lo/Hh$con;-><init>()V

    sput-object v0, Lo/Hh$con;->ˎ:Lo/Hh$con;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 68
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/Hh;-><init>(Lo/UW;)V

    return-void
.end method

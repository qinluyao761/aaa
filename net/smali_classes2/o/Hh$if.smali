.class public final Lo/Hh$if;
.super Lo/Hh;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Hh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# static fields
.field public static final ॱ:Lo/Hh$if;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Lo/Hh$if;

    invoke-direct {v0}, Lo/Hh$if;-><init>()V

    sput-object v0, Lo/Hh$if;->ॱ:Lo/Hh$if;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 123
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/Hh;-><init>(Lo/UW;)V

    return-void
.end method

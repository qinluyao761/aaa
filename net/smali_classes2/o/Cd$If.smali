.class public final Lo/Cd$If;
.super Lo/Cd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "If"
.end annotation


# static fields
.field public static final ˎ:Lo/Cd$If;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lo/Cd$If;

    invoke-direct {v0}, Lo/Cd$If;-><init>()V

    sput-object v0, Lo/Cd$If;->ˎ:Lo/Cd$If;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/Cd;-><init>(Lo/UW;)V

    return-void
.end method

.class public final Lo/Ll$iF;
.super Lo/Ll;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "iF"
.end annotation


# static fields
.field public static final ॱ:Lo/Ll$iF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lo/Ll$iF;

    invoke-direct {v0}, Lo/Ll$iF;-><init>()V

    sput-object v0, Lo/Ll$iF;->ॱ:Lo/Ll$iF;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/Ll;-><init>(Lo/UW;)V

    return-void
.end method

.class public final Lo/ay;
.super Lo/aZ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ay$If;
    }
.end annotation


# static fields
.field public static final ˊ:Lo/ay$If;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ay$If;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ay$If;-><init>(Lo/UW;)V

    sput-object v0, Lo/ay;->ˊ:Lo/ay$If;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    .line 7
    invoke-direct {p0}, Lo/aZ;-><init>()V

    return-void
.end method

.method public static final ʻ()Z
    .locals 1

    sget-object v0, Lo/ay;->ˊ:Lo/ay$If;

    invoke-virtual {v0}, Lo/ay$If;->ॱ()Z

    move-result v0

    return v0
.end method

.method public static final ʽ()Z
    .locals 1

    sget-object v0, Lo/ay;->ˊ:Lo/ay$If;

    invoke-virtual {v0}, Lo/ay$If;->ˏ()Z

    move-result v0

    return v0
.end method

.method public static final ˊ()Z
    .locals 1

    sget-object v0, Lo/ay;->ˊ:Lo/ay$If;

    invoke-virtual {v0}, Lo/ay$If;->ˊ()Z

    move-result v0

    return v0
.end method

.method public static final ॱॱ()Z
    .locals 1

    sget-object v0, Lo/ay;->ˊ:Lo/ay$If;

    invoke-virtual {v0}, Lo/ay$If;->ˎ()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public s_()Z
    .locals 1

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public ˋ()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, "11612"

    return-object v0
.end method

.method public ˏ()Ljava/lang/String;
    .locals 1

    .line 26
    const-string v0, "persistent_ab11612"

    return-object v0
.end method

.class public final Lo/Vd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UU;


# instance fields
.field private final ˎ:Ljava/lang/String;

.field private final ॱ:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Class<*>;Ljava/lang/String;)V"
        }
    .end annotation

    const-string v0, "jClass"

    invoke-static {p1, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleName"

    invoke-static {p2, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Vd;->ॱ:Ljava/lang/Class;

    iput-object p2, p0, Lo/Vd;->ˎ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 19
    instance-of v0, p1, Lo/Vd;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/Vd;->ˋ()Ljava/lang/Class;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lo/Vd;

    invoke-virtual {v1}, Lo/Vd;->ˋ()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 22
    invoke-virtual {p0}, Lo/Vd;->ˋ()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/Vd;->ˋ()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Kotlin reflection is not available)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˋ()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/lang/Class<*>;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lo/Vd;->ॱ:Ljava/lang/Class;

    return-object v0
.end method

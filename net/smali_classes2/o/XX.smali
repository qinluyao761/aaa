.class public final Lo/XX;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final ॱ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "symbol"

    invoke-static {p1, v0}, Lo/Vb;->ˎ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/XX;->ॱ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/XX;->ॱ:Ljava/lang/String;

    return-object v0
.end method

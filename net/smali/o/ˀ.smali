.class public Lo/ˀ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᔉ$If;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u1509$If<Landroid/graphics/PointF;>;"
    }
.end annotation


# static fields
.field public static final ˏ:Lo/ˀ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lo/ˀ;

    invoke-direct {v0}, Lo/ˀ;-><init>()V

    sput-object v0, Lo/ˀ;->ˏ:Lo/ˀ;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public synthetic ˋ(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0, p1, p2}, Lo/ˀ;->ˎ(Ljava/lang/Object;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public ˎ(Ljava/lang/Object;F)Landroid/graphics/PointF;
    .locals 3

    .line 18
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    .line 19
    move-object v0, p1

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0, p2}, Lo/ᑦ;->ˋ(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    .line 20
    :cond_0
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 21
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0, p2}, Lo/ᑦ;->ॱ(Lorg/json/JSONObject;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse point from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

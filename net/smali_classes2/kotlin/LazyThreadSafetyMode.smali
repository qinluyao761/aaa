.class public final enum Lkotlin/LazyThreadSafetyMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lkotlin/LazyThreadSafetyMode;>;"
    }
.end annotation


# static fields
.field public static final enum ˊ:Lkotlin/LazyThreadSafetyMode;

.field public static final enum ˋ:Lkotlin/LazyThreadSafetyMode;

.field public static final enum ˏ:Lkotlin/LazyThreadSafetyMode;

.field private static final synthetic ॱ:[Lkotlin/LazyThreadSafetyMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lkotlin/LazyThreadSafetyMode;

    const-string v2, "SYNCHRONIZED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkotlin/LazyThreadSafetyMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/LazyThreadSafetyMode;->ˋ:Lkotlin/LazyThreadSafetyMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/LazyThreadSafetyMode;

    const-string v2, "PUBLICATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlin/LazyThreadSafetyMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/LazyThreadSafetyMode;->ˊ:Lkotlin/LazyThreadSafetyMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/LazyThreadSafetyMode;

    const-string v2, "NONE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lkotlin/LazyThreadSafetyMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/LazyThreadSafetyMode;->ˏ:Lkotlin/LazyThreadSafetyMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/LazyThreadSafetyMode;->ॱ:[Lkotlin/LazyThreadSafetyMode;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/LazyThreadSafetyMode;
    .locals 1

    const-class v0, Lkotlin/LazyThreadSafetyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkotlin/LazyThreadSafetyMode;

    return-object v0
.end method

.method public static values()[Lkotlin/LazyThreadSafetyMode;
    .locals 1

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->ॱ:[Lkotlin/LazyThreadSafetyMode;

    invoke-virtual {v0}, [Lkotlin/LazyThreadSafetyMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/LazyThreadSafetyMode;

    return-object v0
.end method

.class public final synthetic Lo/vY;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic ˏ:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;->values()[Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/vY;->ˏ:[I

    sget-object v0, Lo/vY;->ˏ:[I

    sget-object v1, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;->ˋ:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    invoke-virtual {v1}, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/vY;->ˏ:[I

    sget-object v1, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;->ˊ:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    invoke-virtual {v1}, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method

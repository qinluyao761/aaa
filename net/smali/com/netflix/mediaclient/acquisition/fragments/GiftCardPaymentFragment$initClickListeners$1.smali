.class final Lcom/netflix/mediaclient/acquisition/fragments/GiftCardPaymentFragment$initClickListeners$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/fragments/GiftCardPaymentFragment;->initClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/fragments/GiftCardPaymentFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/fragments/GiftCardPaymentFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/fragments/GiftCardPaymentFragment$initClickListeners$1;->this$0:Lcom/netflix/mediaclient/acquisition/fragments/GiftCardPaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/fragments/GiftCardPaymentFragment$initClickListeners$1;->this$0:Lcom/netflix/mediaclient/acquisition/fragments/GiftCardPaymentFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/fragments/GiftCardPaymentFragment;->onFormSubmit()V

    .line 63
    return-void
.end method

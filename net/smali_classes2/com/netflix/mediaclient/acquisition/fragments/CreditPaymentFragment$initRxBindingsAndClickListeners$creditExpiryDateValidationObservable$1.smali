.class final Lcom/netflix/mediaclient/acquisition/fragments/CreditPaymentFragment$initRxBindingsAndClickListeners$creditExpiryDateValidationObservable$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/fragments/CreditPaymentFragment;->initRxBindingsAndClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Lio/reactivex/functions/Consumer<Ljava/lang/CharSequence;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/fragments/CreditPaymentFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/fragments/CreditPaymentFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/fragments/CreditPaymentFragment$initRxBindingsAndClickListeners$creditExpiryDateValidationObservable$1;->this$0:Lcom/netflix/mediaclient/acquisition/fragments/CreditPaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/CharSequence;)V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/fragments/CreditPaymentFragment$initRxBindingsAndClickListeners$creditExpiryDateValidationObservable$1;->this$0:Lcom/netflix/mediaclient/acquisition/fragments/CreditPaymentFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/fragments/CreditPaymentFragment;->getViewModel()Lcom/netflix/mediaclient/acquisition/viewmodels/CreditOptionPayViewModel;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/viewmodels/CreditOptionPayViewModel;->setCreditExpirationDate(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/fragments/CreditPaymentFragment$initRxBindingsAndClickListeners$creditExpiryDateValidationObservable$1;->this$0:Lcom/netflix/mediaclient/acquisition/fragments/CreditPaymentFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/fragments/CreditPaymentFragment;->getViewModel()Lcom/netflix/mediaclient/acquisition/viewmodels/CreditOptionPayViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/CreditOptionPayViewModel;->getCreditData()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/fragments/CreditPaymentFragment$initRxBindingsAndClickListeners$creditExpiryDateValidationObservable$1;->this$0:Lcom/netflix/mediaclient/acquisition/fragments/CreditPaymentFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition/fragments/CreditPaymentFragment;->getViewModel()Lcom/netflix/mediaclient/acquisition/viewmodels/CreditOptionPayViewModel;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition/fragments/CreditPaymentFragment$initRxBindingsAndClickListeners$creditExpiryDateValidationObservable$1;->this$0:Lcom/netflix/mediaclient/acquisition/fragments/CreditPaymentFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/acquisition/fragments/CreditPaymentFragment;->access$getPublicKey$p(Lcom/netflix/mediaclient/acquisition/fragments/CreditPaymentFragment;)Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/acquisition/viewmodels/CreditOptionPayViewModel;->toEncryptedString(Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/moneyball/fields/StringField;->setValue(Ljava/lang/Object;)V

    nop

    .line 149
    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 1

    .line 40
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition/fragments/CreditPaymentFragment$initRxBindingsAndClickListeners$creditExpiryDateValidationObservable$1;->accept(Ljava/lang/CharSequence;)V

    return-void
.end method

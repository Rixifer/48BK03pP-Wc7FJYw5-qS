.class Lcom/auxbrain/egginc/EggIncBilling$2;
.super Ljava/lang/Object;
.source "EggIncBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auxbrain/egginc/EggIncBilling;->queryInventory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/auxbrain/egginc/EggIncBilling;

.field final synthetic val$base_phase:Lcom/android/billingclient/api/ProductDetails$PricingPhase;

.field final synthetic val$d:Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;


# direct methods
.method constructor <init>(Lcom/auxbrain/egginc/EggIncBilling;Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;Lcom/android/billingclient/api/ProductDetails$PricingPhase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/auxbrain/egginc/EggIncBilling$2;->this$0:Lcom/auxbrain/egginc/EggIncBilling;

    iput-object p2, p0, Lcom/auxbrain/egginc/EggIncBilling$2;->val$d:Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    iput-object p3, p0, Lcom/auxbrain/egginc/EggIncBilling$2;->val$base_phase:Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Moving sub info to main thread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/auxbrain/egginc/EggIncBilling$2;->val$d:Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getBasePlanId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/auxbrain/egginc/EggIncBilling;->access$100()Lcom/google/common/collect/BiMap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v1

    iget-object v2, p0, Lcom/auxbrain/egginc/EggIncBilling$2;->val$d:Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getBasePlanId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/auxbrain/egginc/EggIncBilling$2;->val$base_phase:Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EGGINC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncBilling$2;->this$0:Lcom/auxbrain/egginc/EggIncBilling;

    invoke-static {v0}, Lcom/auxbrain/egginc/EggIncBilling;->access$200(Lcom/auxbrain/egginc/EggIncBilling;)Lcom/auxbrain/egginc/EggIncActivity;

    invoke-static {}, Lcom/auxbrain/egginc/EggIncBilling;->access$100()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    iget-object v1, p0, Lcom/auxbrain/egginc/EggIncBilling$2;->val$d:Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getBasePlanId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/auxbrain/egginc/EggIncBilling$2;->val$base_phase:Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 175
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/auxbrain/egginc/EggIncBilling$2;->val$base_phase:Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 176
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    .line 174
    invoke-static {v0, v1, v2}, Lcom/auxbrain/egginc/EggIncActivity;->onProductInfo(Ljava/lang/String;Ljava/lang/String;F)V

    return-void
.end method

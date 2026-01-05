.class public final synthetic Lcom/auxbrain/egginc/EggIncBilling$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/auxbrain/egginc/EggIncBilling;

.field public final synthetic f$1:Lcom/android/billingclient/api/ProductDetails;

.field public final synthetic f$2:Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;


# direct methods
.method public synthetic constructor <init>(Lcom/auxbrain/egginc/EggIncBilling;Lcom/android/billingclient/api/ProductDetails;Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auxbrain/egginc/EggIncBilling$$ExternalSyntheticLambda8;->f$0:Lcom/auxbrain/egginc/EggIncBilling;

    iput-object p2, p0, Lcom/auxbrain/egginc/EggIncBilling$$ExternalSyntheticLambda8;->f$1:Lcom/android/billingclient/api/ProductDetails;

    iput-object p3, p0, Lcom/auxbrain/egginc/EggIncBilling$$ExternalSyntheticLambda8;->f$2:Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncBilling$$ExternalSyntheticLambda8;->f$0:Lcom/auxbrain/egginc/EggIncBilling;

    iget-object v1, p0, Lcom/auxbrain/egginc/EggIncBilling$$ExternalSyntheticLambda8;->f$1:Lcom/android/billingclient/api/ProductDetails;

    iget-object v2, p0, Lcom/auxbrain/egginc/EggIncBilling$$ExternalSyntheticLambda8;->f$2:Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    invoke-virtual {v0, v1, v2}, Lcom/auxbrain/egginc/EggIncBilling;->lambda$queryInventory$1$com-auxbrain-egginc-EggIncBilling(Lcom/android/billingclient/api/ProductDetails;Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;)V

    return-void
.end method

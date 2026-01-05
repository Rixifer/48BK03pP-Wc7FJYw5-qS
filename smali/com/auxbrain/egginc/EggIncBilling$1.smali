.class Lcom/auxbrain/egginc/EggIncBilling$1;
.super Ljava/lang/Object;
.source "EggIncBilling.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auxbrain/egginc/EggIncBilling;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/auxbrain/egginc/EggIncBilling;


# direct methods
.method constructor <init>(Lcom/auxbrain/egginc/EggIncBilling;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/auxbrain/egginc/EggIncBilling$1;->this$0:Lcom/auxbrain/egginc/EggIncBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    .line 130
    const-string v0, "EI BILLING"

    const-string v1, "Billing Service Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncBilling$1;->this$0:Lcom/auxbrain/egginc/EggIncBilling;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/auxbrain/egginc/EggIncBilling;->initialized:Z

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Billing Setup Finished "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EI BILLING"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p1, p0, Lcom/auxbrain/egginc/EggIncBilling$1;->this$0:Lcom/auxbrain/egginc/EggIncBilling;

    invoke-virtual {p1}, Lcom/auxbrain/egginc/EggIncBilling;->queryInventory()V

    return-void
.end method

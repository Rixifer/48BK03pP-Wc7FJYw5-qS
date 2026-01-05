.class Lcom/auxbrain/egginc/EggIncActivity$2$1;
.super Ljava/lang/Object;
.source "EggIncActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auxbrain/egginc/EggIncActivity$2;->onAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/auxbrain/egginc/EggIncActivity$2;


# direct methods
.method constructor <init>(Lcom/auxbrain/egginc/EggIncActivity$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lcom/auxbrain/egginc/EggIncActivity$2$1;->this$1:Lcom/auxbrain/egginc/EggIncActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity$2$1;->this$1:Lcom/auxbrain/egginc/EggIncActivity$2;

    iget-object v0, v0, Lcom/auxbrain/egginc/EggIncActivity$2;->this$0:Lcom/auxbrain/egginc/EggIncActivity;

    invoke-static {v0}, Lcom/auxbrain/egginc/EggIncActivity;->access$300(Lcom/auxbrain/egginc/EggIncActivity;)Lcom/applovin/mediation/ads/MaxRewardedAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxRewardedAd;->loadAd()V

    return-void
.end method

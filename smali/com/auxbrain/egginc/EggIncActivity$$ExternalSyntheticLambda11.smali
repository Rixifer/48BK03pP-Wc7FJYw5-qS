.class public final synthetic Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;


# instance fields
.field public final synthetic f$0:Lcom/auxbrain/egginc/EggIncActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/auxbrain/egginc/EggIncActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda11;->f$0:Lcom/auxbrain/egginc/EggIncActivity;

    return-void
.end method


# virtual methods
.method public final onSdkInitialized(Lcom/applovin/sdk/AppLovinSdkConfiguration;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda11;->f$0:Lcom/auxbrain/egginc/EggIncActivity;

    invoke-virtual {v0, p1}, Lcom/auxbrain/egginc/EggIncActivity;->lambda$initAdPlatforms$3$com-auxbrain-egginc-EggIncActivity(Lcom/applovin/sdk/AppLovinSdkConfiguration;)V

    return-void
.end method

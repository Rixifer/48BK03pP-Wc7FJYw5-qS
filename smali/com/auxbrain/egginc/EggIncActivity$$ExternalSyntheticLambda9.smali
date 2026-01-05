.class public final synthetic Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/auxbrain/egginc/EggIncActivity;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/auxbrain/egginc/EggIncActivity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda9;->f$0:Lcom/auxbrain/egginc/EggIncActivity;

    iput-object p2, p0, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda9;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda9;->f$0:Lcom/auxbrain/egginc/EggIncActivity;

    iget-object v1, p0, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda9;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/auxbrain/egginc/EggIncActivity;->lambda$shareImage$11$com-auxbrain-egginc-EggIncActivity(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/auxbrain/egginc/EggIncActivity$5;
.super Ljava/lang/Object;
.source "EggIncActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auxbrain/egginc/EggIncActivity;->gpgShowLeaderboard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/auxbrain/egginc/EggIncActivity;


# direct methods
.method constructor <init>(Lcom/auxbrain/egginc/EggIncActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 387
    iput-object p1, p0, Lcom/auxbrain/egginc/EggIncActivity$5;->this$0:Lcom/auxbrain/egginc/EggIncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/content/Intent;)V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity$5;->this$0:Lcom/auxbrain/egginc/EggIncActivity;

    const/16 v1, 0x539

    invoke-virtual {v0, p1, v1}, Lcom/auxbrain/egginc/EggIncActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 387
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/auxbrain/egginc/EggIncActivity$5;->onSuccess(Landroid/content/Intent;)V

    return-void
.end method

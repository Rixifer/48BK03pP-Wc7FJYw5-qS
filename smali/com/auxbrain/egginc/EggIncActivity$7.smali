.class Lcom/auxbrain/egginc/EggIncActivity$7;
.super Ljava/lang/Object;
.source "EggIncActivity.java"

# interfaces
.implements Lcom/onesignal/OneSignal$OSNotificationOpenedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auxbrain/egginc/EggIncActivity;->initPushNotifications(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 1244
    iput-object p1, p0, Lcom/auxbrain/egginc/EggIncActivity$7;->this$0:Lcom/auxbrain/egginc/EggIncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notificationOpened(Lcom/onesignal/OSNotificationOpenedResult;)V
    .locals 2

    .line 1247
    invoke-virtual {p1}, Lcom/onesignal/OSNotificationOpenedResult;->getNotification()Lcom/onesignal/OSNotification;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onesignal/OSNotification;->getAdditionalData()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1249
    const-string v0, "farm_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "farm_id set with value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EGGINC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    invoke-static {p1}, Lcom/auxbrain/egginc/EggIncActivity;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 1253
    invoke-static {p1}, Lcom/auxbrain/egginc/EggIncActivity;->access$700(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

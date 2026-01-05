.class public Lcom/auxbrain/egginc/EggIncActivity;
.super Landroid/app/NativeActivity;
.source "EggIncActivity.java"


# static fields
.field private static final ADCOLONY_APPID:Ljava/lang/String; = "app70bc3650bea64f3a88"

.field private static final ADCOLONY_ZONE1:Ljava/lang/String; = "vz92ba40b539f14a30ac"

.field private static ADJUST_INITED:Z = false

.field private static ADS_INITED:Z = false

.field private static CB_INITED:Z = false

.field public static final CHARTBOOST_LOCATIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static ONESIGNAL_INITED:Z = false

.field public static final PLAY_HAS_EXPANSION:Z = false

.field private static final PLAY_IAB_PUBLIC_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyOXg50pwF5Zf8CBGsnXZcMtHhsOChTHWlvwaYxHTHf8RB26hc2rtTgt4cpyVtNJMyWaRhxqOtkk6vTZ74l/yG2aiAUZ+TQEvBy17Q/AcTiOGqNhPy7ZA1EeTSlPYFT1r8pFwCIDbuT6xAIRtg5sFgpQ5ZucFNEAVP2PO7FmpW7VSxia+l04Zt2yl7GKrLIBObEaaxLpkxin//3p6Jthzy4OovUgrCBNqY6PlCq8epXU4bA/bYNpoiz0FjCs/7QesVdUht6cst47DpAclWjsabECxMCSEabqLYYptnm09oNIUJCotujnAWChx+ZJ514a6M+2uArypVb7cJ81QUjgwOQIDAQAB"

.field public static SHARE_SEQ:I = 0x0

.field public static final TAG:Ljava/lang/String; = "EGGINC"

.field private static final UNITY_APPID:Ljava/lang/String; = "1079239"

.field private static final VUNGLE_APPID:Ljava/lang/String; = "576d65b3f8a232e554000057"

.field private static final VUNGLE_PLACEMENT_ID:Ljava/lang/String; = "DEFAULT-5548185"

.field static explicit_soft_keyboard:Z = false

.field private static notificiation_launch_id:Ljava/lang/String; = ""


# instance fields
.field billing:Lcom/auxbrain/egginc/EggIncBilling;

.field private determined_platform:Z

.field private gamesSignInClient:Lcom/google/android/gms/games/GamesSignInClient;

.field gotDownloadCompleteMessage:Z

.field private final httpCallSequence:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private final maxListener:Lcom/applovin/mediation/MaxRewardedAdListener;

.field private final maxRevListender:Lcom/applovin/mediation/MaxAdRevenueListener;

.field musicPlayers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field native_updates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private obbFilePath:Ljava/lang/String;

.field private retryAttempt:I

.field private rewardedAd:Lcom/applovin/mediation/ads/MaxRewardedAd;

.field private shared_preferences:Landroid/content/SharedPreferences;

.field private shared_preferences_editor:Landroid/content/SharedPreferences$Editor;

.field private topUIStart:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 119
    const-string v0, "egginc"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "vz92ba40b539f14a30ac"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/auxbrain/egginc/EggIncActivity;->CHARTBOOST_LOCATIONS:Ljava/util/Map;

    .line 486
    sput-boolean v1, Lcom/auxbrain/egginc/EggIncActivity;->explicit_soft_keyboard:Z

    .line 1350
    sput v1, Lcom/auxbrain/egginc/EggIncActivity;->SHARE_SEQ:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Landroid/app/NativeActivity;-><init>()V

    .line 142
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->httpCallSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 153
    iput-boolean v1, p0, Lcom/auxbrain/egginc/EggIncActivity;->determined_platform:Z

    .line 172
    new-instance v0, Lcom/auxbrain/egginc/EggIncActivity$1;

    invoke-direct {v0, p0}, Lcom/auxbrain/egginc/EggIncActivity$1;-><init>(Lcom/auxbrain/egginc/EggIncActivity;)V

    iput-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->maxRevListender:Lcom/applovin/mediation/MaxAdRevenueListener;

    .line 193
    new-instance v0, Lcom/auxbrain/egginc/EggIncActivity$2;

    invoke-direct {v0, p0}, Lcom/auxbrain/egginc/EggIncActivity$2;-><init>(Lcom/auxbrain/egginc/EggIncActivity;)V

    iput-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->maxListener:Lcom/applovin/mediation/MaxRewardedAdListener;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 91
    sget-boolean v0, Lcom/auxbrain/egginc/EggIncActivity;->ADJUST_INITED:Z

    return v0
.end method

.method static synthetic access$100(Lcom/auxbrain/egginc/EggIncActivity;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/auxbrain/egginc/EggIncActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object p0
.end method

.method static synthetic access$200(Lcom/auxbrain/egginc/EggIncActivity;)I
    .locals 0

    .line 91
    iget p0, p0, Lcom/auxbrain/egginc/EggIncActivity;->retryAttempt:I

    return p0
.end method

.method static synthetic access$202(Lcom/auxbrain/egginc/EggIncActivity;I)I
    .locals 0

    .line 91
    iput p1, p0, Lcom/auxbrain/egginc/EggIncActivity;->retryAttempt:I

    return p1
.end method

.method static synthetic access$208(Lcom/auxbrain/egginc/EggIncActivity;)I
    .locals 2

    .line 91
    iget v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->retryAttempt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/auxbrain/egginc/EggIncActivity;->retryAttempt:I

    return v0
.end method

.method static synthetic access$300(Lcom/auxbrain/egginc/EggIncActivity;)Lcom/applovin/mediation/ads/MaxRewardedAd;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/auxbrain/egginc/EggIncActivity;->rewardedAd:Lcom/applovin/mediation/ads/MaxRewardedAd;

    return-object p0
.end method

.method static synthetic access$400(Z)V
    .locals 0

    .line 91
    invoke-static {p0}, Lcom/auxbrain/egginc/EggIncActivity;->videoAdViewComplete(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/auxbrain/egginc/EggIncActivity;F)F
    .locals 0

    .line 91
    iput p1, p0, Lcom/auxbrain/egginc/EggIncActivity;->topUIStart:F

    return p1
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 91
    sput-object p0, Lcom/auxbrain/egginc/EggIncActivity;->notificiation_launch_id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-static {p0}, Lcom/auxbrain/egginc/EggIncActivity;->onNotificationFarmId(Ljava/lang/String;)V

    return-void
.end method

.method private createNotificationChannel()V
    .locals 4

    .line 400
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 404
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "egg_inc"

    const-string v2, "Farm Updates"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 405
    const-string v1, "Updates related to the goings on for your farm"

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 408
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/auxbrain/egginc/EggIncActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 409
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private static native easyTest()V
.end method

.method private getLocalNotificationPendingIntent(I)Landroid/app/PendingIntent;
    .locals 5

    .line 1148
    const-string v0, "Tap to refill silos"

    const-string v1, "Tap to resume playing."

    packed-switch p1, :pswitch_data_0

    const-string v0, ""

    goto :goto_1

    .line 1170
    :pswitch_0
    const-string v0, "One of your Artifacts missions has returned!"

    goto :goto_1

    .line 1168
    :pswitch_1
    const-string v0, "Return to your farm now to collect a large gift of golden eggs left by an anonymous benefactor!"

    goto :goto_1

    .line 1165
    :pswitch_2
    const-string v0, "Your Daily Gift is ready to collect"

    goto :goto_1

    .line 1162
    :pswitch_3
    const-string v0, "Your hen houses are full"

    goto :goto_1

    .line 1159
    :pswitch_4
    const-string v1, "Your silos are empty, your farm has stopped making money"

    goto :goto_0

    .line 1155
    :pswitch_5
    const-string v1, "Your silos are empty"

    :goto_0
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    .line 1151
    :pswitch_6
    const-string v0, "Your earnings multiplier has expired"

    .line 1173
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/auxbrain/egginc/LocalNotificationReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1174
    const-string v3, "notification_message"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1175
    const-string v0, "notification_action_message"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1176
    const-string v0, "notification_id"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    add-int/lit16 p1, p1, 0x539

    const/high16 v0, 0xc000000

    .line 1177
    invoke-static {p0, p1, v2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static native httpRequestComplete([BIZI)V
.end method

.method private static native initAR(Landroid/content/Context;)V
.end method

.method static synthetic lambda$gpgSilentSignIn$0(ZLcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 336
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/Player;

    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/Player;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Player ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EGGINC"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-static {p0, v0, p1}, Lcom/auxbrain/egginc/EggIncActivity;->onGPGSignIn(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onStop$5(Ljava/util/Map;)V
    .locals 4

    .line 734
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 736
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 737
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    const/4 v2, 0x0

    .line 738
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 739
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 741
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "release failed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EGGINC"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$promptForNotifications$9()V
    .locals 1

    const/4 v0, 0x1

    .line 1225
    invoke-static {v0}, Lcom/onesignal/OneSignal;->promptForPushNotifications(Z)V

    return-void
.end method

.method private static native nativeOnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
.end method

.method private static native onBackPressedNative()Z
.end method

.method private static native onGPGSignIn(ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native onNotificationFarmId(Ljava/lang/String;)V
.end method

.method private static native onOpenURL(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native onProductInfo(Ljava/lang/String;Ljava/lang/String;F)V
.end method

.method public static native onProductPurchaseComplete(Ljava/lang/String;ZLjava/lang/String;Z)V
.end method

.method public static native onProductRestore(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static onSubscriptionChangeComplete(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 919
    invoke-static {p0, p1, p2, v0}, Lcom/auxbrain/egginc/EggIncActivity;->onProductPurchaseComplete(Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method private runOnUi(Ljava/lang/Runnable;)V
    .locals 2

    .line 259
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 260
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static native setJumpToScreen(I)V
.end method

.method private static native startARSession(Landroid/content/Context;)V
.end method

.method private static native videoAdViewComplete(Z)V
.end method


# virtual methods
.method areNotificationsEnabled()Z
    .locals 3

    .line 1190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 1191
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lcom/auxbrain/egginc/EggIncActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1192
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Are Notifications Enabled? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EGGINC"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-virtual {v0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method cancelLocalNotifications()V
    .locals 2

    .line 1294
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/auxbrain/egginc/EggIncActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x1

    .line 1295
    invoke-direct {p0, v1}, Lcom/auxbrain/egginc/EggIncActivity;->getLocalNotificationPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v1, 0x2

    .line 1296
    invoke-direct {p0, v1}, Lcom/auxbrain/egginc/EggIncActivity;->getLocalNotificationPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v1, 0x3

    .line 1297
    invoke-direct {p0, v1}, Lcom/auxbrain/egginc/EggIncActivity;->getLocalNotificationPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v1, 0x4

    .line 1298
    invoke-direct {p0, v1}, Lcom/auxbrain/egginc/EggIncActivity;->getLocalNotificationPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v1, 0x5

    .line 1299
    invoke-direct {p0, v1}, Lcom/auxbrain/egginc/EggIncActivity;->getLocalNotificationPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v1, 0x6

    .line 1300
    invoke-direct {p0, v1}, Lcom/auxbrain/egginc/EggIncActivity;->getLocalNotificationPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v1, 0x7

    .line 1301
    invoke-direct {p0, v1}, Lcom/auxbrain/egginc/EggIncActivity;->getLocalNotificationPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method changeSubscription(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->billing:Lcom/auxbrain/egginc/EggIncBilling;

    invoke-virtual {v0, p1, p2, p3}, Lcom/auxbrain/egginc/EggIncBilling;->changeSubscription(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public closeKeyboard()V
    .locals 3

    .line 497
    sget-boolean v0, Lcom/auxbrain/egginc/EggIncActivity;->explicit_soft_keyboard:Z

    if-eqz v0, :cond_0

    .line 498
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/auxbrain/egginc/EggIncActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 499
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 500
    sput-boolean v2, Lcom/auxbrain/egginc/EggIncActivity;->explicit_soft_keyboard:Z

    :cond_0
    return-void
.end method

.method commitPreferences()V
    .locals 1

    .line 1039
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->shared_preferences_editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 1040
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x0

    .line 1041
    iput-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->shared_preferences_editor:Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method public copyToClipboard(Ljava/lang/String;)Z
    .locals 2

    .line 505
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/auxbrain/egginc/EggIncActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    .line 507
    const-string v1, "showcase url"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 508
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method crashlyticsLog(Ljava/lang/String;)V
    .locals 5

    .line 1403
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 1404
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 1405
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    .line 1406
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1407
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1408
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " PSS: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " MB | ss = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1409
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Crashlytics log: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EGGINC"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method createDirectory(Ljava/lang/String;)V
    .locals 2

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE DIR "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EGGINC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 990
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method deleteEggIncFile(Ljava/lang/String;)Z
    .locals 2

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FILE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EGGINC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method disableAds()V
    .locals 2

    .line 582
    sget-boolean v0, Lcom/auxbrain/egginc/EggIncActivity;->ADS_INITED:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 583
    invoke-virtual {p0, v0}, Lcom/auxbrain/egginc/EggIncActivity;->updateAdConsent(Z)V

    .line 584
    iget-object v1, p0, Lcom/auxbrain/egginc/EggIncActivity;->rewardedAd:Lcom/applovin/mediation/ads/MaxRewardedAd;

    invoke-virtual {v1}, Lcom/applovin/mediation/ads/MaxRewardedAd;->destroy()V

    .line 585
    sput-boolean v0, Lcom/auxbrain/egginc/EggIncActivity;->ADS_INITED:Z

    :cond_0
    return-void
.end method

.method dontSellMyData()V
    .locals 4

    .line 616
    new-instance v0, Lcom/adjust/sdk/AdjustThirdPartySharing;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/adjust/sdk/AdjustThirdPartySharing;-><init>(Ljava/lang/Boolean;)V

    .line 619
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->trackThirdPartySharing(Lcom/adjust/sdk/AdjustThirdPartySharing;)V

    const/4 v0, 0x1

    .line 620
    invoke-static {v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setDoNotSell(Z)V

    .line 621
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "LDU"

    aput-object v3, v2, v1

    const/16 v1, 0x3e8

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/AdSettings;->setDataProcessingOptions([Ljava/lang/String;II)V

    return-void
.end method

.method downloadFile(Ljava/lang/String;)I
    .locals 4

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "------------- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EGGINC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http download "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/auxbrain/egginc/EggIncActivity;->crashlyticsLog(Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->httpCallSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 824
    new-instance v1, Lcom/auxbrain/egginc/HTTPHelper;

    invoke-direct {v1, v0}, Lcom/auxbrain/egginc/HTTPHelper;-><init>(I)V

    .line 825
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2, p1}, Lcom/auxbrain/egginc/HTTPHelper;->backgroundDownloadFile(Landroid/os/Handler;Ljava/lang/String;)V

    return v0
.end method

.method executeNativeUpdates()V
    .locals 3

    .line 879
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->native_updates:Ljava/util/List;

    monitor-enter v0

    .line 880
    :try_start_0
    iget-object v1, p0, Lcom/auxbrain/egginc/EggIncActivity;->native_updates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 881
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 883
    :cond_0
    iget-object v1, p0, Lcom/auxbrain/egginc/EggIncActivity;->native_updates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 884
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method fileExists(Ljava/lang/String;)Z
    .locals 2

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FILE EXISTS? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EGGINC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method freeDiskSpace()F
    .locals 5

    .line 1022
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    mul-long/2addr v1, v3

    long-to-double v0, v1

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method gdprForgetMe()V
    .locals 4

    .line 602
    const-string v0, "GDPR FORGET ME"

    const-string v1, "EGGINC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :try_start_0
    invoke-static {p0}, Lcom/adjust/sdk/Adjust;->gdprForgetMe(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 605
    invoke-static {v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setHasUserConsent(Z)V

    .line 606
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->stopPushNotifications()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ERROR: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method getAppVersion()Ljava/lang/String;
    .locals 3

    .line 942
    :try_start_0
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 943
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 945
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 947
    const-string v0, "unknown"

    return-object v0
.end method

.method getAppVersionCode()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 954
    :try_start_0
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 955
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 957
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 959
    const-string v0, "unknown"

    return-object v0
.end method

.method getCacheDirectory()Ljava/lang/String;
    .locals 1

    .line 982
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    .line 983
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 984
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDaysSince2000()I
    .locals 5

    .line 1050
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 1051
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 1052
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0x7d0

    .line 1053
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xa

    .line 1054
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 1056
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1058
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    .line 1060
    div-long/2addr v1, v3

    long-to-int v0, v1

    return v0
.end method

.method getDeviceID()Ljava/lang/String;
    .locals 2

    .line 1046
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDeviceRotation()I
    .locals 1

    .line 972
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/auxbrain/egginc/EggIncActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method getLocaleCountry()Ljava/lang/String;
    .locals 1

    .line 931
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLocaleLanguage()Ljava/lang/String;
    .locals 1

    .line 935
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNotificationLaunchFarm()Ljava/lang/String;
    .locals 1

    .line 1275
    sget-object v0, Lcom/auxbrain/egginc/EggIncActivity;->notificiation_launch_id:Ljava/lang/String;

    return-object v0
.end method

.method getPreference(Ljava/lang/String;)F
    .locals 2

    .line 1028
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->shared_preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method getPushUserId()Ljava/lang/String;
    .locals 1

    .line 1182
    invoke-static {}, Lcom/onesignal/OneSignal;->getDeviceState()Lcom/onesignal/OSDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSDeviceState;->isPushDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1183
    invoke-static {}, Lcom/onesignal/OneSignal;->getDeviceState()Lcom/onesignal/OSDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSDeviceState;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1185
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method getSaveDirectory()Ljava/lang/String;
    .locals 1

    .line 976
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 977
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 978
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getScreenDPI()F
    .locals 1

    .line 963
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 964
    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    return v0
.end method

.method getTopUIStart()F
    .locals 1

    .line 968
    iget v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->topUIStart:F

    return v0
.end method

.method gpgExplicitSignIn()V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->gamesSignInClient:Lcom/google/android/gms/games/GamesSignInClient;

    if-nez v0, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->gpgSilentSignIn()V

    return-void

    .line 360
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/games/GamesSignInClient;->signIn()Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method gpgShowAchievements()V
    .locals 2

    .line 369
    invoke-static {p0}, Lcom/google/android/gms/games/PlayGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v0

    .line 370
    invoke-interface {v0}, Lcom/google/android/gms/games/AchievementsClient;->getAchievementsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/auxbrain/egginc/EggIncActivity$4;

    invoke-direct {v1, p0}, Lcom/auxbrain/egginc/EggIncActivity$4;-><init>(Lcom/auxbrain/egginc/EggIncActivity;)V

    .line 371
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method gpgShowLeaderboard(Ljava/lang/String;)V
    .locals 1

    .line 385
    invoke-static {p0}, Lcom/google/android/gms/games/PlayGames;->getLeaderboardsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object v0

    .line 386
    invoke-interface {v0, p1}, Lcom/google/android/gms/games/LeaderboardsClient;->getLeaderboardIntent(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/auxbrain/egginc/EggIncActivity$5;

    invoke-direct {v0, p0}, Lcom/auxbrain/egginc/EggIncActivity$5;-><init>(Lcom/auxbrain/egginc/EggIncActivity;)V

    .line 387
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method gpgSilentSignIn()V
    .locals 2

    .line 325
    const-string v0, "EGGINC"

    const-string v1, "GPG Silent sign in"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {p0}, Lcom/google/android/gms/games/PlayGames;->getGamesSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;

    move-result-object v0

    iput-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->gamesSignInClient:Lcom/google/android/gms/games/GamesSignInClient;

    .line 328
    invoke-interface {v0}, Lcom/google/android/gms/games/GamesSignInClient;->isAuthenticated()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda5;-><init>(Lcom/auxbrain/egginc/EggIncActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method gpgSubmitLeaderboardScore(Ljava/lang/String;J)V
    .locals 1

    .line 380
    invoke-static {p0}, Lcom/google/android/gms/games/PlayGames;->getLeaderboardsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object v0

    .line 381
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/games/LeaderboardsClient;->submitScore(Ljava/lang/String;J)V

    return-void
.end method

.method gpgUnlockAchievement(Ljava/lang/String;)V
    .locals 1

    .line 365
    invoke-static {p0}, Lcom/google/android/gms/games/PlayGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/AchievementsClient;->unlock(Ljava/lang/String;)V

    return-void
.end method

.method initAdAttribution()V
    .locals 3

    .line 565
    new-instance v0, Lcom/adjust/sdk/AdjustConfig;

    const-string v1, "or9s8r202pz4"

    const-string v2, "production"

    invoke-direct {v0, p0, v1, v2}, Lcom/adjust/sdk/AdjustConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->initSdk(Lcom/adjust/sdk/AdjustConfig;)V

    .line 568
    invoke-static {}, Lcom/adjust/sdk/Adjust;->onResume()V

    .line 570
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const/4 v0, 0x1

    .line 572
    sput-boolean v0, Lcom/auxbrain/egginc/EggIncActivity;->ADJUST_INITED:Z

    return-void
.end method

.method initAdPlatforms(ZLjava/lang/String;)V
    .locals 0

    .line 517
    sget-boolean p1, Lcom/auxbrain/egginc/EggIncActivity;->ADS_INITED:Z

    if-eqz p1, :cond_0

    return-void

    .line 519
    :cond_0
    new-instance p1, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2}, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda2;-><init>(Lcom/auxbrain/egginc/EggIncActivity;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/auxbrain/egginc/EggIncActivity;->runOnUi(Ljava/lang/Runnable;)V

    return-void
.end method

.method initPushNotifications(Z)V
    .locals 1

    .line 1234
    new-instance v0, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda12;-><init>(Lcom/auxbrain/egginc/EggIncActivity;Z)V

    invoke-direct {p0, v0}, Lcom/auxbrain/egginc/EggIncActivity;->runOnUi(Ljava/lang/Runnable;)V

    return-void
.end method

.method initializeIAP()V
    .locals 2

    .line 889
    const-string v0, "EGGINC"

    const-string v1, "INIT IAP ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->billing:Lcom/auxbrain/egginc/EggIncBilling;

    invoke-virtual {v0}, Lcom/auxbrain/egginc/EggIncBilling;->initialize()V

    .line 894
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->billing:Lcom/auxbrain/egginc/EggIncBilling;

    invoke-virtual {v0}, Lcom/auxbrain/egginc/EggIncBilling;->queryPurchasesAsync()V

    return-void
.end method

.method isGDPR()Z
    .locals 2

    .line 625
    const-string v0, "EGGINC"

    const-string v1, "IS GDPR"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getConfiguration()Lcom/applovin/sdk/AppLovinSdkConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/applovin/sdk/AppLovinSdkConfiguration;->getConsentFlowUserGeography()Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;->GDPR:Lcom/applovin/sdk/AppLovinSdkConfiguration$ConsentFlowUserGeography;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isMusicPlaying(Ljava/lang/String;)Z
    .locals 1

    .line 1103
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->musicPlayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->musicPlayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method isVideoAdAvailable(I)Z
    .locals 2

    .line 853
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "CHECKING IF VIDEO AD IS AVAILABLE, ads initted? "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/auxbrain/egginc/EggIncActivity;->ADS_INITED:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EGGINC"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    sget-boolean p1, Lcom/auxbrain/egginc/EggIncActivity;->ADS_INITED:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 856
    :cond_0
    const-string p1, "ADS INITED AT LEAST"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "APPLOVIN? "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/auxbrain/egginc/EggIncActivity;->rewardedAd:Lcom/applovin/mediation/ads/MaxRewardedAd;

    invoke-virtual {v1}, Lcom/applovin/mediation/ads/MaxRewardedAd;->isReady()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object p1, p0, Lcom/auxbrain/egginc/EggIncActivity;->rewardedAd:Lcom/applovin/mediation/ads/MaxRewardedAd;

    invoke-virtual {p1}, Lcom/applovin/mediation/ads/MaxRewardedAd;->isReady()Z

    move-result p1

    return p1
.end method

.method synthetic lambda$gpgSilentSignIn$1$com-auxbrain-egginc-EggIncActivity(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 0
    const-string v0, "GPG Silent sign in isAuthenticated: "

    .line 330
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/AuthenticationResult;

    invoke-virtual {p1}, Lcom/google/android/gms/games/AuthenticationResult;->isAuthenticated()Z

    move-result p1

    .line 332
    const-string v1, "EGGINC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 335
    invoke-static {p0}, Lcom/google/android/gms/games/PlayGames;->getPlayersClient(Landroid/app/Activity;)Lcom/google/android/gms/games/PlayersClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/PlayersClient;->getCurrentPlayer()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda6;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method synthetic lambda$initAdPlatforms$3$com-auxbrain-egginc-EggIncActivity(Lcom/applovin/sdk/AppLovinSdkConfiguration;)V
    .locals 1

    .line 544
    const-string p1, "EGGINC"

    const-string v0, "AppLovin is initialized, start loading ads?"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->initAdAttribution()V

    .line 547
    const-string p1, "a4d9f3b6a2181363"

    invoke-static {p1, p0}, Lcom/applovin/mediation/ads/MaxRewardedAd;->getInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/applovin/mediation/ads/MaxRewardedAd;

    move-result-object p1

    iput-object p1, p0, Lcom/auxbrain/egginc/EggIncActivity;->rewardedAd:Lcom/applovin/mediation/ads/MaxRewardedAd;

    .line 548
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->maxListener:Lcom/applovin/mediation/MaxRewardedAdListener;

    invoke-virtual {p1, v0}, Lcom/applovin/mediation/ads/MaxRewardedAd;->setListener(Lcom/applovin/mediation/MaxRewardedAdListener;)V

    .line 549
    iget-object p1, p0, Lcom/auxbrain/egginc/EggIncActivity;->rewardedAd:Lcom/applovin/mediation/ads/MaxRewardedAd;

    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->maxRevListender:Lcom/applovin/mediation/MaxAdRevenueListener;

    invoke-virtual {p1, v0}, Lcom/applovin/mediation/ads/MaxRewardedAd;->setRevenueListener(Lcom/applovin/mediation/MaxAdRevenueListener;)V

    .line 551
    iget-object p1, p0, Lcom/auxbrain/egginc/EggIncActivity;->rewardedAd:Lcom/applovin/mediation/ads/MaxRewardedAd;

    invoke-virtual {p1}, Lcom/applovin/mediation/ads/MaxRewardedAd;->loadAd()V

    return-void
.end method

.method synthetic lambda$initAdPlatforms$4$com-auxbrain-egginc-EggIncActivity(Ljava/lang/String;)V
    .locals 7

    .line 521
    const-string v0, "INIT AD PLATFORMS"

    const-string v1, "EGGINC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :try_start_0
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 527
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    .line 529
    :goto_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MANIFEST TEST: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "applovin.sdk.key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration;->builder(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration$Builder;

    move-result-object v0

    const-string v2, "max"

    .line 533
    invoke-interface {v0, v2}, Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration$Builder;->setMediationProvider(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration$Builder;

    move-result-object v0

    .line 534
    invoke-interface {v0}, Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration$Builder;->build()Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration;

    move-result-object v0

    .line 537
    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v2

    .line 538
    invoke-virtual {v2}, Lcom/applovin/sdk/AppLovinSdk;->getSettings()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v3

    .line 539
    invoke-virtual {v3}, Lcom/applovin/sdk/AppLovinSdkSettings;->getTermsAndPrivacyPolicyFlowSettings()Lcom/applovin/sdk/AppLovinTermsAndPrivacyPolicyFlowSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/applovin/sdk/AppLovinTermsAndPrivacyPolicyFlowSettings;->setEnabled(Z)V

    .line 540
    invoke-virtual {v3}, Lcom/applovin/sdk/AppLovinSdkSettings;->getTermsAndPrivacyPolicyFlowSettings()Lcom/applovin/sdk/AppLovinTermsAndPrivacyPolicyFlowSettings;

    move-result-object v4

    const-string v6, "https://www.auxbrain.com/privacy"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/applovin/sdk/AppLovinTermsAndPrivacyPolicyFlowSettings;->setPrivacyPolicyUri(Landroid/net/Uri;)V

    .line 541
    invoke-virtual {v3, p1}, Lcom/applovin/sdk/AppLovinSdkSettings;->setUserIdentifier(Ljava/lang/String;)V

    .line 543
    new-instance p1, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda11;-><init>(Lcom/auxbrain/egginc/EggIncActivity;)V

    invoke-virtual {v2, v0, p1}, Lcom/applovin/sdk/AppLovinSdk;->initialize(Lcom/applovin/sdk/AppLovinSdkInitializationConfiguration;Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V

    .line 554
    sput-boolean v5, Lcom/auxbrain/egginc/EggIncActivity;->ADS_INITED:Z

    .line 556
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Hmmm: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getSdkKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ADS INITED: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/auxbrain/egginc/EggIncActivity;->ADS_INITED:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$initPushNotifications$10$com-auxbrain-egginc-EggIncActivity(Z)V
    .locals 2

    .line 1235
    sget-boolean v0, Lcom/auxbrain/egginc/EggIncActivity;->ONESIGNAL_INITED:Z

    if-nez v0, :cond_0

    .line 1236
    const-string v0, "EGGINCX"

    const-string v1, "=============== Java init push"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1237
    invoke-static {v0}, Lcom/onesignal/OneSignal;->setRequiresUserPrivacyConsent(Z)V

    .line 1242
    const-string v1, "0762c1ee-6d5b-495f-b954-5281f2604e02"

    invoke-static {v1}, Lcom/onesignal/OneSignal;->setAppId(Ljava/lang/String;)V

    .line 1243
    invoke-static {p0}, Lcom/onesignal/OneSignal;->initWithContext(Landroid/content/Context;)V

    .line 1244
    new-instance v1, Lcom/auxbrain/egginc/EggIncActivity$7;

    invoke-direct {v1, p0}, Lcom/auxbrain/egginc/EggIncActivity$7;-><init>(Lcom/auxbrain/egginc/EggIncActivity;)V

    invoke-static {v1}, Lcom/onesignal/OneSignal;->setNotificationOpenedHandler(Lcom/onesignal/OneSignal$OSNotificationOpenedHandler;)V

    const/4 v1, 0x0

    .line 1259
    invoke-static {v1}, Lcom/onesignal/OneSignal;->disablePush(Z)V

    .line 1260
    invoke-static {p1}, Lcom/onesignal/OneSignal;->provideUserConsent(Z)V

    .line 1261
    invoke-static {}, Lcom/onesignal/OneSignal;->getDeviceState()Lcom/onesignal/OSDeviceState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onesignal/OSDeviceState;->getPushToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/adjust/sdk/Adjust;->setPushToken(Ljava/lang/String;Landroid/content/Context;)V

    .line 1262
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "push user id: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getPushUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "EGGINC"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    sput-boolean v0, Lcom/auxbrain/egginc/EggIncActivity;->ONESIGNAL_INITED:Z

    :cond_0
    return-void
.end method

.method synthetic lambda$openURL$8$com-auxbrain-egginc-EggIncActivity(Ljava/lang/String;)V
    .locals 2

    .line 1136
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/auxbrain/egginc/EggIncActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1138
    :catch_0
    const-string p1, "EGGINC"

    const-string v0, "Could not open URL"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$playApplovinVideoAd$6$com-auxbrain-egginc-EggIncActivity()V
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->rewardedAd:Lcom/applovin/mediation/ads/MaxRewardedAd;

    invoke-virtual {v0, p0}, Lcom/applovin/mediation/ads/MaxRewardedAd;->showAd(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$sendSupportEmail$7$com-auxbrain-egginc-EggIncActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Send support email: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EGGINC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1115
    const-string v1, "mailto:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1117
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1118
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1119
    const-string p1, "android.intent.extra.TEXT"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 1120
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string v2, "support@auxbrain.com"

    aput-object v2, p1, p2

    const-string p2, "android.intent.extra.EMAIL"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1121
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 1124
    :try_start_0
    const-string p1, "Send email..."

    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/auxbrain/egginc/EggIncActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method synthetic lambda$setImmersiveMode$2$com-auxbrain-egginc-EggIncActivity()V
    .locals 2

    .line 474
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method synthetic lambda$shareImage$11$com-auxbrain-egginc-EggIncActivity(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 1378
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1379
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1380
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1381
    const-string p1, "android.intent.extra.TEXT"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1382
    const-string p1, "android.intent.extra.TITLE"

    const-string p2, "Egg, Inc."

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1383
    const-string p1, "Egg, Inc. Share"

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/auxbrain/egginc/EggIncActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$shareImage$12$com-auxbrain-egginc-EggIncActivity(II[ILjava/lang/String;)V
    .locals 10

    .line 0
    const/4 v0, 0x0

    :goto_0
    mul-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 1358
    :try_start_0
    aget v1, p3, v0

    const v2, -0xff0100

    and-int/2addr v2, v1

    and-int/lit16 v3, v1, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/high16 v3, 0xff0000

    and-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1363
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    sub-int v4, v1, p1

    neg-int v5, p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, p1

    move v9, p2

    move-object v3, p3

    .line 1364
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1366
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 1367
    const-string p2, "title"

    const-string p3, "Egg Inc"

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    const-string p2, "mime_type"

    const-string p3, "image/jpeg"

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, p3, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 1373
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1374
    :try_start_1
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x5f

    invoke-virtual {v2, p3, v0, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    .line 1375
    :try_start_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 1377
    :cond_1
    new-instance p2, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0, p1, p4}, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda9;-><init>(Lcom/auxbrain/egginc/EggIncActivity;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/auxbrain/egginc/EggIncActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    if-eqz p2, :cond_2

    .line 1373
    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p2, v0

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1386
    const-string p2, "EGGINC"

    const-string p3, "shareImage failed"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method logAttributableEvent(Ljava/lang/String;)V
    .locals 1

    .line 590
    new-instance v0, Lcom/adjust/sdk/AdjustEvent;

    invoke-direct {v0, p1}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 591
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    return-void
.end method

.method logAttributablePurchase(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 595
    new-instance p5, Lcom/adjust/sdk/AdjustEvent;

    invoke-direct {p5, p1}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    float-to-double p1, p2

    .line 596
    invoke-virtual {p5, p1, p2, p3}, Lcom/adjust/sdk/AdjustEvent;->setRevenue(DLjava/lang/String;)V

    .line 597
    invoke-virtual {p5, p4}, Lcom/adjust/sdk/AdjustEvent;->setOrderId(Ljava/lang/String;)V

    .line 598
    invoke-static {p5}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    return-void
.end method

.method makeHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "------------- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EGGINC"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http request "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/auxbrain/egginc/EggIncActivity;->crashlyticsLog(Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->httpCallSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "-------"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " THREAD "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    new-instance v1, Lcom/auxbrain/egginc/HTTPHelper;

    invoke-direct {v1, v0}, Lcom/auxbrain/egginc/HTTPHelper;-><init>(I)V

    .line 813
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/auxbrain/egginc/HTTPHelper;->backgroundHttpPost(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 758
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Activity result: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EGGINC"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 777
    invoke-static {}, Lcom/auxbrain/egginc/EggIncActivity;->onBackPressedNative()Z

    move-result v0

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Back Pressed Native Result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EGGINC"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 780
    invoke-super {p0}, Landroid/app/NativeActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onBillingInitialized()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 266
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 269
    invoke-static {}, Lcom/auxbrain/egginc/EngineState;->bumpGeneration()J

    const/4 p1, 0x0

    .line 271
    iput p1, p0, Lcom/auxbrain/egginc/EggIncActivity;->topUIStart:F

    const/4 p1, 0x1

    .line 273
    invoke-virtual {p0, p1}, Lcom/auxbrain/egginc/EggIncActivity;->setRequestedOrientation(I)V

    .line 274
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->setImmersiveMode()V

    .line 276
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const-string v2, "EGGINC"

    if-lt v0, v1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 278
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 279
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 281
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/auxbrain/egginc/EggIncActivity$3;

    invoke-direct {v0, p0}, Lcom/auxbrain/egginc/EggIncActivity$3;-><init>(Lcom/auxbrain/egginc/EggIncActivity;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 291
    const-string p1, "CUTOUTS?"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 293
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 294
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 295
    iget p1, v0, Landroid/graphics/Point;->x:I

    .line 296
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "width: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "height: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    const-string p1, "ON CREATE"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 305
    invoke-virtual {p0, v2, p1}, Lcom/auxbrain/egginc/EggIncActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/auxbrain/egginc/EggIncActivity;->shared_preferences:Landroid/content/SharedPreferences;

    const/4 p1, 0x0

    .line 306
    iput-object p1, p0, Lcom/auxbrain/egginc/EggIncActivity;->shared_preferences_editor:Landroid/content/SharedPreferences$Editor;

    .line 307
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 310
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/auxbrain/egginc/EggIncActivity;->musicPlayers:Ljava/util/Map;

    .line 313
    new-instance p1, Lcom/auxbrain/egginc/EggIncBilling;

    invoke-direct {p1, p0}, Lcom/auxbrain/egginc/EggIncBilling;-><init>(Lcom/auxbrain/egginc/EggIncActivity;)V

    iput-object p1, p0, Lcom/auxbrain/egginc/EggIncActivity;->billing:Lcom/auxbrain/egginc/EggIncBilling;

    .line 315
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/auxbrain/egginc/EggIncActivity;->native_updates:Ljava/util/List;

    .line 318
    invoke-static {p0}, Lcom/google/android/gms/games/PlayGamesSdk;->initialize(Landroid/content/Context;)V

    .line 320
    invoke-direct {p0}, Lcom/auxbrain/egginc/EggIncActivity;->createNotificationChannel()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 751
    invoke-super {p0}, Landroid/app/NativeActivity;->onDestroy()V

    return-void
.end method

.method public onNativeThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 873
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->native_updates:Ljava/util/List;

    monitor-enter v0

    .line 874
    :try_start_0
    iget-object v1, p0, Lcom/auxbrain/egginc/EggIncActivity;->native_updates:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EGGINCX ON NEW INTENT!!!! "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "notification_id"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EGGINC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-virtual {p0, p1}, Lcom/auxbrain/egginc/EggIncActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 659
    invoke-super {p0}, Landroid/app/NativeActivity;->onPause()V

    .line 660
    sget-boolean v0, Lcom/auxbrain/egginc/EggIncActivity;->ADJUST_INITED:Z

    if-eqz v0, :cond_0

    .line 661
    invoke-static {}, Lcom/adjust/sdk/Adjust;->onPause()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1394
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "REQUEST PERMISSIONS RESULTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EGGINC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    invoke-super {p0, p1, p2, p3}, Landroid/app/NativeActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1396
    array-length p1, p3

    if-lez p1, :cond_0

    .line 1397
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Permission: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "was "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget p2, p3, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 7

    .line 673
    invoke-super {p0}, Landroid/app/NativeActivity;->onResume()V

    .line 674
    sget-boolean v0, Lcom/auxbrain/egginc/EggIncActivity;->ADJUST_INITED:Z

    if-eqz v0, :cond_0

    .line 675
    invoke-static {}, Lcom/adjust/sdk/Adjust;->onResume()V

    .line 678
    :cond_0
    const-string v0, "ON RESUME"

    const-string v1, "EGGINC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/auxbrain/egginc/EggIncActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 682
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "notification_id"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v2, 0x1

    .line 683
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v2, 0x2

    .line 684
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v2, 0x3

    .line 685
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v2, 0x4

    .line 686
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 689
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 690
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 693
    const-string v3, "egginc"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 694
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 695
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Opened from URL: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 698
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 699
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/auxbrain/egginc/EggIncActivity;->onOpenURL(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :cond_1
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "start_screen"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "EGGINCX"

    if-eqz v0, :cond_2

    .line 703
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 704
    invoke-static {v0}, Lcom/auxbrain/egginc/EggIncActivity;->setJumpToScreen(I)V

    .line 706
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 707
    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 708
    invoke-virtual {p0, v3}, Lcom/auxbrain/egginc/EggIncActivity;->setIntent(Landroid/content/Intent;)V

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "START SCREEN: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 712
    :cond_2
    const-string v0, "NO START SCREEN"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :goto_0
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->billing:Lcom/auxbrain/egginc/EggIncBilling;

    invoke-virtual {v0}, Lcom/auxbrain/egginc/EggIncBilling;->queryPurchasesAsync()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 651
    invoke-super {p0}, Landroid/app/NativeActivity;->onStart()V

    .line 653
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->setImmersiveMode()V

    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 726
    invoke-super {p0}, Landroid/app/NativeActivity;->onStop()V

    .line 728
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->closeKeyboard()V

    .line 730
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->musicPlayers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 731
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/auxbrain/egginc/EggIncActivity;->musicPlayers:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 732
    iget-object v1, p0, Lcom/auxbrain/egginc/EggIncActivity;->musicPlayers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 733
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda3;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 462
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 464
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "TRYING TO GO IMMERSIVE? "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EGGINC"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->setImmersiveMode()V

    :cond_0
    return-void
.end method

.method public openKeyboard()V
    .locals 3

    .line 489
    sget-boolean v0, Lcom/auxbrain/egginc/EggIncActivity;->explicit_soft_keyboard:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 490
    sput-boolean v0, Lcom/auxbrain/egginc/EggIncActivity;->explicit_soft_keyboard:Z

    .line 491
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/auxbrain/egginc/EggIncActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 492
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_0
    return-void
.end method

.method openURL(Ljava/lang/String;)V
    .locals 1

    .line 1134
    new-instance v0, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda0;-><init>(Lcom/auxbrain/egginc/EggIncActivity;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/auxbrain/egginc/EggIncActivity;->runOnUi(Ljava/lang/Runnable;)V

    return-void
.end method

.method playApplovinVideoAd()Z
    .locals 2

    .line 842
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->rewardedAd:Lcom/applovin/mediation/ads/MaxRewardedAd;

    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxRewardedAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoAd "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/auxbrain/egginc/EggIncActivity;->rewardedAd:Lcom/applovin/mediation/ads/MaxRewardedAd;

    invoke-virtual {v1}, Lcom/applovin/mediation/ads/MaxRewardedAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/auxbrain/egginc/EggIncActivity;->crashlyticsLog(Ljava/lang/String;)V

    .line 844
    new-instance v0, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda10;-><init>(Lcom/auxbrain/egginc/EggIncActivity;)V

    invoke-virtual {p0, v0}, Lcom/auxbrain/egginc/EggIncActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method playMusic(Ljava/lang/String;ZF)V
    .locals 9

    .line 1067
    const-string v1, "EGGINC"

    .line 0
    const-string v0, "Playing Song: "

    const-string v2, "sounds/"

    .line 1067
    :try_start_0
    iget-object v3, p0, Lcom/auxbrain/egginc/EggIncActivity;->musicPlayers:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1068
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".m4a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 1069
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    .line 1070
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1071
    invoke-virtual {v3, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1073
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 1074
    iget-object v2, p0, Lcom/auxbrain/egginc/EggIncActivity;->musicPlayers:Ljava/util/Map;

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/auxbrain/egginc/EggIncActivity;->setMusicVolume(Ljava/lang/String;F)V

    .line 1078
    iget-object p3, p0, Lcom/auxbrain/egginc/EggIncActivity;->musicPlayers:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/MediaPlayer;

    invoke-virtual {p3}, Landroid/media/MediaPlayer;->start()V

    .line 1079
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "  looping? "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1082
    new-instance p2, Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    sget-object p3, Lcom/fyber/inneractive/sdk/response/ISjO/mDKGlSpJKidK;->tDgneBnIOY:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method promptForNotifications()Z
    .locals 3

    .line 1220
    sget-boolean v0, Lcom/auxbrain/egginc/EggIncActivity;->ONESIGNAL_INITED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1221
    invoke-virtual {p0, v1}, Lcom/auxbrain/egginc/EggIncActivity;->initPushNotifications(Z)V

    .line 1223
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v0, v2, :cond_1

    .line 1224
    new-instance v0, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda8;-><init>()V

    invoke-direct {p0, v0}, Lcom/auxbrain/egginc/EggIncActivity;->runOnUi(Ljava/lang/Runnable;)V

    :cond_1
    return v1
.end method

.method purchaseIAP(Ljava/lang/String;Z)V
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->billing:Lcom/auxbrain/egginc/EggIncBilling;

    invoke-virtual {v0, p1, p2}, Lcom/auxbrain/egginc/EggIncBilling;->purchase(Ljava/lang/String;Z)V

    return-void
.end method

.method requestARSessionStart()V
    .locals 2

    .line 437
    invoke-static {p0}, Lcom/auxbrain/egginc/CameraPermissionHelper;->hasCameraPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    const-string v0, "EGGINC"

    const-string v1, "HAS CAMERA PERSMISSION"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/auxbrain/egginc/EggIncActivity;->startARSession(Landroid/content/Context;)V

    .line 445
    invoke-static {p0}, Lcom/auxbrain/egginc/CameraPermissionHelper;->hasCameraPermission(Landroid/app/Activity;)Z

    return-void

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->requestVideoPermissions()V

    return-void
.end method

.method requestInitAR()V
    .locals 1

    .line 453
    invoke-virtual {p0}, Lcom/auxbrain/egginc/EggIncActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/auxbrain/egginc/EggIncActivity;->initAR(Landroid/content/Context;)V

    return-void
.end method

.method requestVideoPermissions()V
    .locals 3

    .line 415
    invoke-static {p0}, Lcom/auxbrain/egginc/CameraPermissionHelper;->hasCameraPermission(Landroid/app/Activity;)Z

    move-result v0

    const-string v1, "EGGINC"

    if-eqz v0, :cond_0

    .line 416
    const-string v0, "HAS CAMERA PERSMISSION"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 419
    :cond_0
    const-string v0, "android.permission.CAMERA"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    const-string v0, "SHOULD SHOW EXPLAINATION.?"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 425
    :cond_1
    const-string v2, "DOES NOT HAVE CAMERA PERMISSION"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 426
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method resetNotificationLaunchFarm()V
    .locals 1

    .line 1279
    const-string v0, ""

    sput-object v0, Lcom/auxbrain/egginc/EggIncActivity;->notificiation_launch_id:Ljava/lang/String;

    return-void
.end method

.method restoreIAP()V
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->billing:Lcom/auxbrain/egginc/EggIncBilling;

    invoke-virtual {v0}, Lcom/auxbrain/egginc/EggIncBilling;->queryPurchasesAsync()V

    return-void
.end method

.method scanDirectory(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 1005
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1007
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1008
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Dir exists? ("

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ") "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "EGGINC"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 1010
    array-length v1, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, p1, v4

    .line 1011
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1012
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1013
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1014
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1018
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method scheduleLocalNotification(DI)V
    .locals 8

    .line 1284
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EGGINCX &&&&&&&&&&&&&&&&&&& Scheduling local notification "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EGGINC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    return-void

    .line 1287
    :cond_0
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/auxbrain/egginc/EggIncActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    .line 1288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    double-to-int p1, p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    add-long v3, v2, p1

    const-wide/32 v5, 0x2255100

    invoke-direct {p0, p3}, Lcom/auxbrain/egginc/EggIncActivity;->getLocalNotificationPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v7

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method sendSupportEmail(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1111
    new-instance v0, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda7;-><init>(Lcom/auxbrain/egginc/EggIncActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/auxbrain/egginc/EggIncActivity;->runOnUi(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setImmersiveMode()V
    .locals 1

    .line 472
    new-instance v0, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda4;-><init>(Lcom/auxbrain/egginc/EggIncActivity;)V

    invoke-direct {p0, v0}, Lcom/auxbrain/egginc/EggIncActivity;->runOnUi(Ljava/lang/Runnable;)V

    return-void
.end method

.method setMusicVolume(Ljava/lang/String;F)V
    .locals 1

    .line 1097
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->musicPlayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->musicPlayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method setPreference(Ljava/lang/String;F)V
    .locals 1

    .line 1032
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->shared_preferences_editor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->shared_preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->shared_preferences_editor:Landroid/content/SharedPreferences$Editor;

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->shared_preferences_editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method shareImage([IIILjava/lang/String;)I
    .locals 7

    .line 1353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Screenshot ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") bytes recieved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EGGINC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v5, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/auxbrain/egginc/EggIncActivity$$ExternalSyntheticLambda1;-><init>(Lcom/auxbrain/egginc/EggIncActivity;II[ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method showCMPFlow()V
    .locals 2

    .line 631
    const-string v0, "EGGINC"

    const-string v1, "SHOW CMP FLOW"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getCmpService()Lcom/applovin/sdk/AppLovinCmpService;

    move-result-object v0

    .line 633
    new-instance v1, Lcom/auxbrain/egginc/EggIncActivity$6;

    invoke-direct {v1, p0}, Lcom/auxbrain/egginc/EggIncActivity$6;-><init>(Lcom/auxbrain/egginc/EggIncActivity;)V

    invoke-interface {v0, p0, v1}, Lcom/applovin/sdk/AppLovinCmpService;->showCmpForExistingUser(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinCmpService$OnCompletedListener;)V

    return-void
.end method

.method stopMusic(Ljava/lang/String;)V
    .locals 2

    .line 1087
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->musicPlayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->musicPlayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1089
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->musicPlayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1090
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->musicPlayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1091
    iget-object v0, p0, Lcom/auxbrain/egginc/EggIncActivity;->musicPlayers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SToppED music "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EGGINCX"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method stopPushNotifications()V
    .locals 1

    const/4 v0, 0x1

    .line 1269
    invoke-static {v0}, Lcom/onesignal/OneSignal;->disablePush(Z)V

    const/4 v0, 0x0

    .line 1270
    invoke-static {v0}, Lcom/onesignal/OneSignal;->provideUserConsent(Z)V

    .line 1271
    sput-boolean v0, Lcom/auxbrain/egginc/EggIncActivity;->ONESIGNAL_INITED:Z

    return-void
.end method

.method updateAdConsent(Z)V
    .locals 1

    .line 576
    sget-boolean v0, Lcom/auxbrain/egginc/EggIncActivity;->ADS_INITED:Z

    if-eqz v0, :cond_0

    .line 577
    invoke-static {p1, p0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setHasUserConsent(ZLandroid/content/Context;)V

    :cond_0
    return-void
.end method

.method updateTags(IIIIIZZIIIIIZZ)V
    .locals 3

    .line 1322
    const-string v1, "EGGINC"

    :try_start_0
    const-string v0, "UPDATING ONESIGNAL TAGS"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1325
    const-string v2, "piggy_breaks"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1326
    const-string p1, "piggy_size"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1327
    const-string p1, "permit_level"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1328
    const-string p1, "iap_packs_purchased"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1329
    const-string p1, "num_prestiges"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1330
    const-string p1, "trophies_unlocked"

    invoke-static {p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1331
    const-string p1, "contracts_unlocked"

    invoke-static {p7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1332
    const-string p1, "artifacts_unlocked"

    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1333
    const-string p1, "hyperloop_station"

    invoke-static {p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1334
    const-string p1, "fuel_tank_level"

    invoke-static {p10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1335
    const-string p1, "best_ship"

    invoke-static {p11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1336
    const-string p1, "eop_count"

    invoke-static {p12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1337
    const-string p1, "piggy_full"

    invoke-static/range {p13 .. p13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1338
    const-string p1, "cc_active"

    invoke-static/range {p14 .. p14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1341
    invoke-static {v0}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1344
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

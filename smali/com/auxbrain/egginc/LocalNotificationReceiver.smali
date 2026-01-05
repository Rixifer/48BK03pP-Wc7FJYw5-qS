.class public Lcom/auxbrain/egginc/LocalNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocalNotificationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 24
    const-string v2, "notification_id"

    const-string v3, "notification_message"

    const-string v4, "EGGINC"

    const-string v5, "Local notification recieved"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 28
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    const-string v5, "notification_action_message"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 30
    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 34
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/auxbrain/egginc/EggIncActivity;

    invoke-direct {v7, v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v8, 0x14000000

    .line 35
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 37
    invoke-virtual {v7, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-virtual {v7, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v9, 0xc000000

    .line 40
    invoke-static {v0, v6, v7, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 49
    new-instance v9, Landroidx/core/app/NotificationCompat$Builder;

    const-string v10, "egg_inc"

    invoke-direct {v9, v0, v10}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v9, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    .line 51
    invoke-virtual {v9, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    sget v9, Lcom/auxbrain/egginc/R$drawable;->icon_chicken:I

    .line 52
    invoke-virtual {v5, v9}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v9, 0x1

    .line 53
    invoke-virtual {v5, v9}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    const/16 v10, 0x8

    new-array v10, v10, [J

    fill-array-data v10, :array_0

    .line 54
    invoke-virtual {v5, v10}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    const/16 v10, 0xff

    const/16 v11, 0x3c

    .line 55
    invoke-static {v11, v11, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-virtual {v5, v10}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 56
    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, -0x1

    const/high16 v10, 0x8000000

    .line 59
    const-string v11, "start_screen"

    const/4 v12, 0x2

    const/4 v13, 0x4

    if-eq v1, v9, :cond_2

    if-eq v1, v12, :cond_1

    const/4 v14, 0x3

    if-eq v1, v14, :cond_1

    if-eq v1, v13, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    :try_start_1
    new-instance v6, Landroid/content/Intent;

    const-class v15, Lcom/auxbrain/egginc/EggIncActivity;

    invoke-direct {v6, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 79
    invoke-virtual {v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {v6, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    invoke-virtual {v6, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    invoke-static {v0, v1, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 84
    sget v15, Lcom/auxbrain/egginc/R$drawable;->a_icon_hab:I

    const-string v13, "Buy Hen House"

    invoke-virtual {v5, v15, v13, v6}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 86
    new-instance v6, Landroid/content/Intent;

    const-class v13, Lcom/auxbrain/egginc/EggIncActivity;

    invoke-direct {v6, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {v6, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    invoke-virtual {v6, v11, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    add-int/lit8 v2, v1, 0x64

    .line 93
    invoke-static {v0, v2, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 94
    sget v3, Lcom/auxbrain/egginc/R$drawable;->a_icon_research:I

    const-string v4, "Research"

    invoke-virtual {v5, v3, v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 95
    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 62
    :cond_2
    new-instance v6, Landroid/content/Intent;

    const-class v13, Lcom/auxbrain/egginc/EggIncActivity;

    invoke-direct {v6, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    invoke-virtual {v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {v6, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    invoke-static {v0, v1, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 70
    sget v3, Lcom/auxbrain/egginc/R$drawable;->a_icon_boost:I

    const-string v4, "Restart Boost"

    invoke-virtual {v5, v3, v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 71
    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 114
    :goto_0
    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 116
    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    if-ne v1, v9, :cond_3

    const/4 v2, 0x4

    .line 120
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    :cond_3
    const/4 v2, 0x4

    if-ne v1, v12, :cond_4

    .line 122
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 123
    invoke-virtual {v0, v9}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    :cond_4
    if-ne v1, v2, :cond_5

    .line 125
    invoke-virtual {v0, v9}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_1
    :cond_5
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0xc8
        0x32
        0x96
        0x32
        0x64
        0x32
        0x32
    .end array-data
.end method

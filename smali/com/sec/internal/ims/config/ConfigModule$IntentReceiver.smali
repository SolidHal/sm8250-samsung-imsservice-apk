.class Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConfigModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/ConfigModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentReceiver"
.end annotation


# static fields
.field private static final ACTION_AIRPLANE_MODE:Ljava/lang/String; = "android.intent.action.AIRPLANE_MODE"

.field private static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field final synthetic this$0:Lcom/sec/internal/ims/config/ConfigModule;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/ConfigModule;)V
    .locals 1

    .line 1383
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->this$0:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1384
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 1385
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1386
    return-void
.end method


# virtual methods
.method public addActionAirplaneMode()V
    .locals 2

    .line 1415
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1416
    return-void
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 1419
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1390
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1393
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1394
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->this$0:Lcom/sec/internal/ims/config/ConfigModule;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/ConfigModule;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 1395
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1396
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1397
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v1, :cond_2

    .line 1398
    goto :goto_0

    .line 1400
    :cond_2
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_5

    .line 1401
    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->this$0:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-static {v3}, Lcom/sec/internal/ims/config/ConfigModule;->access$000(Lcom/sec/internal/ims/config/ConfigModule;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v2

    sget v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-ne v2, v3, :cond_4

    .line 1402
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->this$0:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-static {v2}, Lcom/sec/internal/ims/config/ConfigModule;->access$100(Lcom/sec/internal/ims/config/ConfigModule;)Lcom/sec/internal/ims/config/WorkFlowController;

    move-result-object v2

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/WorkFlowController;->getCurrentRcsConfigVersion(I)I

    move-result v2

    .line 1403
    .local v2, "ver":I
    if-lez v2, :cond_3

    .line 1404
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->this$0:Lcom/sec/internal/ims/config/ConfigModule;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sec/internal/ims/config/ConfigModule;->access$202(Lcom/sec/internal/ims/config/ConfigModule;Z)Z

    .line 1406
    .end local v2    # "ver":I
    :cond_3
    goto :goto_1

    .line 1407
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->this$0:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-static {v2, v4}, Lcom/sec/internal/ims/config/ConfigModule;->access$202(Lcom/sec/internal/ims/config/ConfigModule;Z)Z

    .line 1410
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_5
    :goto_1
    goto :goto_0

    .line 1412
    :cond_6
    :goto_2
    return-void

    .line 1391
    :cond_7
    :goto_3
    return-void
.end method

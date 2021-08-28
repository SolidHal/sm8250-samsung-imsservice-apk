.class Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;
.super Landroid/content/BroadcastReceiver;
.source "GeolocationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/GeolocationController$IntentListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/GeolocationController$IntentListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    .line 602
    iput-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;->this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 605
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeolocationCon"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const-string/jumbo v1, "phoneId"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 608
    .local v1, "phoneId":I
    const-string v4, "com.sec.epdg.EPDG_SSID_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 609
    nop

    .line 610
    const-string/jumbo v2, "vowifi_need_location_menu"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    .line 611
    .local v2, "vowifiNeedLocationMenu":Z
    if-eqz v2, :cond_0

    .line 613
    iget-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;->this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    iget-object v3, v3, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    iget-object v3, v3, Lcom/sec/internal/ims/core/GeolocationController;->mVoiceRegState:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 614
    iget-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;->this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    iget-object v3, v3, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/internal/ims/core/GeolocationController;->access$702(Lcom/sec/internal/ims/core/GeolocationController;Lcom/sec/internal/constants/ims/gls/LocationInfo;)Lcom/sec/internal/constants/ims/gls/LocationInfo;

    .line 617
    .end local v2    # "vowifiNeedLocationMenu":Z
    :cond_0
    goto :goto_0

    :cond_1
    const-string v4, "com.sec.internal.ims.imsservice.periodic_lu"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 618
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;->this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    iget-object v2, v2, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    iget-object v4, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;->this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    iget-object v4, v4, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1, v3}, Lcom/sec/internal/ims/core/GeolocationController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/GeolocationController;->sendMessage(Landroid/os/Message;)Z

    .line 619
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;->this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    iget-object v2, v2, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/GeolocationController;->access$800(Lcom/sec/internal/ims/core/GeolocationController;I)V

    goto :goto_0

    .line 620
    :cond_2
    const-string v3, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 621
    iget-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;->this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    iget-object v3, v3, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    .line 622
    invoke-static {v3}, Lcom/sec/internal/ims/core/GeolocationController;->access$900(Lcom/sec/internal/ims/core/GeolocationController;)Landroid/location/LocationManager;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v3

    .line 623
    .local v3, "isLocationEnabled":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "prev loc : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;->this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    iget-object v5, v5, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {v5}, Lcom/sec/internal/ims/core/GeolocationController;->access$1000(Lcom/sec/internal/ims/core/GeolocationController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", cur loc : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;->this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    iget-object v2, v2, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {v2}, Lcom/sec/internal/ims/core/GeolocationController;->access$1000(Lcom/sec/internal/ims/core/GeolocationController;)Z

    move-result v2

    if-eq v2, v3, :cond_3

    .line 625
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;->this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    iget-object v2, v2, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/GeolocationController;->access$1002(Lcom/sec/internal/ims/core/GeolocationController;Z)Z

    .line 626
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;->this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    iget-object v2, v2, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/GeolocationController;->access$1102(Lcom/sec/internal/ims/core/GeolocationController;Z)Z

    .line 629
    .end local v3    # "isLocationEnabled":Z
    :cond_3
    :goto_0
    return-void
.end method
